<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page import="com.tgb.model.GaoJianSource" %>
<%@ page import="com.tgb.model.ChuShenComments" %>
<%@ page import="com.tgb.model.XuanTiStatus" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    
    int the_book_id = (Integer)request.getAttribute("the_book_id");
    String book_name = (String)request.getAttribute("book_name");
    String sub_book_name = (String)request.getAttribute("sub_book_name");
    String ISBN = (String)request.getAttribute("ISBN");
    
    // 获取所有的 gaoJianSource 信息
    List<GaoJianSource> gaoJianSourceList = (List<GaoJianSource>)request.getAttribute("gaoJianSourceList");
    List<ChuShenComments> chuShenCommentsList = (List<ChuShenComments>)request.getAttribute("chuShenCommentsList");
    List<XuanTiStatus> xuanTiStatusList = (List<XuanTiStatus>)request.getAttribute("xuanTiStatusList");
    
    /* 
    String username=(String)session.getAttribute("username");
    if(username==null) {
        response.getWriter().println("<script>top.location.href='" + basePath + "login/login_view.action';</script>");
    } */
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<TITLE>查看选题详细信息</TITLE> 
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

</HEAD>

<BODY background="<%=basePath %>images/adminBg.jpg">
<s:fielderror cssStyle="color:red" />

<TABLE align="center" height="100%" cellSpacing=0 cellPadding=0 width="80%" border=0>
  <TBODY>
  <TR>
    <TD align="left" vAlign=top >
    <form action="" name="xuanTi">
	<table width='100%' cellspacing='1' cellpadding='3' class="tablewidth">

<%-- 	<tr>
		<td>请输入数据库中的图书编号，例如：21，然后点击“查询”按钮。</td>
		<td>
			<input id="the_book_id" name="the_book_id" value="<%=the_book_id == 0 ? "":the_book_id %>" type="text" size="12"/> &nbsp;
			<input type="submit" value="查询" onclick="QueryBook4XuanTi();"  />
		</td>
	</tr> --%>

  	<tr>
    	<td width=30%>书名：</td>
    	<td width=70%><input id="book_name" name="book_name" value="<%=book_name %>" type="text" size="20" /></td>
  	</tr>

  	<tr>
    	<td width=30%>丛书名：</td>
    	<td width=70%><input id="sub_book_name" name="sub_book_name" value="<%=sub_book_name %>" type="text" size="20" /></td>
  	</tr>

  	<tr>
    	<td width=30%>ISBN:</td>
    	<td width=70%><input id="ISBN" name="ISBN" value="<%=ISBN %>" type="text" size="20"/></td>
  	</tr>
  	
  	<tr>
  		<td><br/></td>
  	</tr>

	<tr>
	    <td width=30%>选题编号：</td>
	    <td width=70%><input id="id" name="id" value="${xuanTi.id}" type="text" size="10"/></td>
	</tr>

	<tr>
    	<td width=30%>选题类型：</td>
    	<td width=70%><input id="type" name="type" value="${xuanTi.type }" type="text" size="10"/></td>
  	</tr>

  	<tr>
    	<td width=30%>选题年度：</td>
    	<td width=70%><input id="year" name="year" value="${xuanTi.year}" type="text" size="10" /></td>
  	</tr>

	<tr>
    	<td width=30%>选题季度：</td>
    	<td width=70%><input id="season" name="season" value="${xuanTi.season}" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>部门：</td>
    	<td width=70%><input id="department" name="department" value="${xuanTi.department}" type="text" size="20"/></td>
  	</tr>

  	<tr>
    	<td width=30%>申报人：</td>
    	<td width=70%><input id="originator" name="originator" value="${xuanTi.originator}" type="text" size="20" /></td>
  	</tr>

	<tr>
    	<td width=30%>稿件来源：</td>
    	<td width=70%>
      	<select name="source">
      		<c:forEach var="item" items="${gaoJianSourceList}">
      			<option value="${item.id }"
      				<c:if test="${item.id == xuanTi.source }">
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
    	<td width=30%>初审意见：</td>
    	<td width=70%>
      	<select name="first_comments">
      		<c:forEach var="item" items="${chuShenCommentsList}">
      			<option value="${item.id }"
      				<c:if test="${item.id == xuanTi.first_comments }">
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
    	<td width=30%>选题状态：</td>
    	<td width=70%>
      	<select name="status">
      		<c:forEach var="item" items="${xuanTiStatusList}">
      			<option value="${item.id }"
      				<c:if test="${item.id == xuanTi.status }">
      					<c:out value='selected="selected"'></c:out>
      				</c:if>
      			>
      				${item.content }
      			</option>
      		</c:forEach>     	
      	</select>
    	</td>
  	</tr>

</table>
</form>
</TD></TR>
</TBODY>
</TABLE>
</BODY>
</HTML>