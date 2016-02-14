<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

    /* 
    String username=(String)session.getAttribute("username");
    if(username==null) {
        response.getWriter().println("<script>top.location.href='" + basePath + "login/login_view.action';</script>");
    } */
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<TITLE>编辑图书</TITLE> 
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
	    var barcode = document.getElementById("book.id").value;
	    if(barcode=="") {
	        alert('请输入图书条形码!');
	        return false;
	    }
	    var bookName = document.getElementById("book.book_name").value;
	    if(bookName=="") {
	        alert('请输入图书名称!');
	        return false;
	    }
	    return true; 
	}
	
	function updateBook(){
		var form = document.forms[0];
		form.action = "<%=basePath%>book/updateBook";
		form.method="post";
		form.submit();
	}

</script>
</HEAD>

<BODY background="<%=basePath %>images/adminBg.jpg">
<s:fielderror cssStyle="color:red" />

<TABLE align="center" height="100%" cellSpacing=0 cellPadding=0 width="80%" border=0>
  <TBODY>
  <TR>
    <TD align="left" vAlign=top >
    <form action="" name="bookForm">
	<table width='100%' cellspacing='1' cellpadding='3' class="tablewidth">

  	<tr>
    	<td width=30%>图书名称：</td>
    	<td width=70%><input id="book_name" name="book_name" value="${book.book_name}" type="text" size="20" /></td>
  	</tr>

  	<tr>
    	<td width=30%>丛书名称：</td>
    	<td width=70%><input id="sub_book_name" name="sub_book_name" value="${book.sub_book_name}" type="text" size="20" /></td>
  	</tr>
  	
  	<tr>
    	<td width=30%>ISBN：</td>
    	<td width=70%><input id="ISBN" name="ISBN" value="${book.ISBN}" type="text" size="20" /></td>
  	</tr>

  	<tr>
    	<td width=30%>图书价格：</td>
    	<td width=70%><input id="price" name="price" value="${book.price}" type="text" size="8" /></td>
  	</tr>

  	<tr bgcolor='#FFFFFF'>
      	<td colspan="4" align="center">
        	<input type='submit' name='button' value='保存' onclick="updateBook()">
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