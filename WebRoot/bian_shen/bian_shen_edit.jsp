<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page import="com.tgb.model.BianShenStatus" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    
    // 获取所有的bianShenStatus信息
    List<BianShenStatus> bianShenStatusList = (List<BianShenStatus>)request.getAttribute("bianShenStatusList");

    int the_book_id = (Integer)request.getAttribute("the_book_id");
    String book_name = (String)request.getAttribute("book_name");
    String sub_book_name = (String)request.getAttribute("sub_book_name");
    String ISBN = (String)request.getAttribute("ISBN");
    
    /* 
    String username=(String)session.getAttribute("username");
    if(username==null) {
        response.getWriter().println("<script>top.location.href='" + basePath + "login/login_view.action';</script>");
    } */
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<TITLE>编辑编审信息</TITLE> 
<STYLE type=text/css>
	BODY {
    	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
	}
.STYLE1 {color: #ECE9D8}
.label {font-style.:italic; }
.errorLabel {font-style.:italic;  color:red; }
.errorMessage {font-weight:bold; color:red; }
</STYLE>

<script src="<%=basePath %>js/calendar.js"></script>
<script type="text/javascript">
	/*验证表单*/
	function checkForm() {
	    var id = document.getElementById("bianShen.id").value;
	    if(id == "") {
	        alert('请输入编审编号！');
	        return false;
	    }
	    var book_name = document.getElementById("bianShen.book_name").value;
	    if(book_name == "") {
	        alert('请输入书名！');
	        return false;
	    }
	    return true; 
	}
	
	function updateBianShen(){
		var form = document.forms[0];
		form.action = "<%=basePath%>bian_shen/updateBianShen";
		form.method="post";
		form.submit();
	}

	function QueryBook4BianShen() {
		document.forms["bianShen"].action = "<%=basePath%>bian_shen/queryBook4BianShen";
		document.forms["bianShen"].method = "post";
		document.forms["bianShen"].submit();
	}

</script>
</HEAD>

<BODY background="<%=basePath %>images/adminBg.jpg">
<s:fielderror cssStyle="color:red" />

<TABLE align="center" height="100%" cellSpacing=0 cellPadding=0 width="80%" border=0>
  <TBODY>
  <TR>
    <TD align="left" vAlign=top >
    <form action="" name="bianShen">
	<table width='100%' cellspacing='1' cellpadding='3' class="tablewidth">

	<tr>
		<td>请输入数据库中的图书编号，例如：21，然后点击“查询”按钮。</td>
		<td>
			<input id="the_book_id" name="the_book_id" value="<%=the_book_id == 0 ? "":the_book_id %>" type="text" size="12"/> &nbsp;
			<input type="submit" value="查询" onclick="QueryBook4BianShen();"  />
		</td>
	</tr>

  	<tr>
    	<td width=30%>书名：</td>
    	<td width=70%><input id="book_name" name="book_name" value="<%=book_name %>" type="text" size="20" /></td>
  	</tr>

  	<tr>
    	<td width=30%>丛书名：</td>
    	<td width=70%><input id="sub_book_name" name="sub_book_name" value="<%=book_name %>" type="text" size="20" /></td>
  	</tr>

  	<tr>
    	<td width=30%>ISBN:</td>
    	<td width=70%><input id="ISBN" name="ISBN" value="<%=ISBN %>" type="text" size="20"/></td>
  	</tr>
  	
  	<tr>
  		<td><br/></td>
  	</tr>

	<tr>
	    <td width=30%>编审编号：</td>
	    <td width=70%><input id="id" name="id" value="${bianShen.id}" type="hidden" size="10" /></td>
	</tr>

  	<tr>
    	<td width=30%>原著作者：</td>
    	<td width=70%><input id="original_author" name="original_author" value="${bianShen.original_author }" type="text" size="10"/></td>
  	</tr>

  	<tr>
    	<td width=30%>原出版社：</td>
    	<td width=70%><input id="original_press" name="original_press" value="${bianShen.original_press }" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>主要作者：</td>
    	<td width=70%><input id="primary_author" name="primary_author" value="${bianShen.primary_author }" type="text" size="10" /></td>
  	</tr>
  	
  	<tr>
    	<td width=30%>其他署名作者：</td>
    	<td width=70%><input id="other_author" name="other_author" value="${bianShen.other_author }" type="text" size="20" /></td>
  	</tr>
  	
  	<tr>
    	<td width=30%>责任编辑：</td>
    	<td width=70%><input id="ze_ren_editor" name="ze_ren_editor" value="${bianShen.ze_ren_editor }" type="text" size="10" /></td>
  	</tr>  	

  	<tr>
    	<td width=30%>文字编辑：</td>
    	<td width=70%><input id="wen_zi_editor" name="wen_zi_editor" value="${bianShen.wen_zi_editor }" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>美术编辑：</td>
    	<td width=70%><input id="mei_shu_editor" name="mei_shu_editor" value="${bianShen.mei_shu_editor }" type="text" size="10" /></td>
  	</tr>
  	
  	<tr>
    	<td width=30%>校对：</td>
    	<td width=70%><input id="proofreader" name="proofreader" value="${bianShen.proofreader }" type="text" size="10" /></td>
  	</tr>	
  	
	<tr>
    	<td width=30%>编审状态：</td>
    	<td width=70%>
      	<select name="bian_shen_status">
      		<c:forEach var="item" items="${bianShenStatusList}">
      			<option value="${item.id }"
      				<c:if test="${item.id == bianShen.bian_shen_status }">
      					<c:out value='selected="selected"'></c:out>
      				</c:if>
      			>
      				${item.content }
      			</option>
      		</c:forEach>      	
      	</select>
    	</td>
  	</tr>

  	<tr>
    	<td width=30%>付印日期:</td>
    	<td width=70%><input id="fu_yin_date" name="fu_yin_date" value="${bianShen.fu_yin_date }" type="text" readonly size="10" onclick="setDay(this);"/></td>
  	</tr>

  	<tr bgcolor='#FFFFFF'>
      	<td colspan="4" align="center">
        	<input type='submit' name='button' value='保存' onclick="updateBianShen()">
        	&nbsp;&nbsp;
        	<input type="reset" value='重写' />
      	</td>
    </tr>

</table>
</form>
</TD></TR>
</TBODY>
</TABLE>
</BODY>
</HTML>