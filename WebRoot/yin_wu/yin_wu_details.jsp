<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page import="com.tgb.model.BookSpecs" %>
<%@ page import="com.tgb.model.PrintStatus" %>
<%@ page import="com.tgb.model.PrintQuality" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    
    // 获取所有的 bookSpecs 信息
    List<BookSpecs> bookSpecsList = (List<BookSpecs>)request.getAttribute("bookSpecsList");
    List<PrintStatus> printStatusList = (List<PrintStatus>)request.getAttribute("printStatusList");
    List<PrintQuality> printQualityList = (List<PrintQuality>)request.getAttribute("printQualityList");
    
    int the_book_id = (Integer)request.getAttribute("the_book_id");			// 获取 the_book_id
    String book_name = (String)request.getAttribute("book_name"); 			// 获取 book_name
    String sub_book_name = (String)request.getAttribute("sub_book_name"); 	// 获取 sub_book_name
    String ISBN = (String)request.getAttribute("ISBN"); 					// 获取 ISBN  
    
    /* 
    String username=(String)session.getAttribute("username");
    if(username==null) {
        response.getWriter().println("<script>top.location.href='" + basePath + "login/login_view.action';</script>");
    } */
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<TITLE>查看印务详细信息</TITLE> 
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
    <form action="" name="yinWu">
	<table width='100%' cellspacing='1' cellpadding='3' class="tablewidth">

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
	    <td width=30%>印务编号：</td>
	    <td width=70%><input id="id" name="id" value="${yinWu.id }" type="text" size="5"/></td>
	</tr>

  	<tr>
    	<td width=30%>起始日期：</td>
    	<td width=70%><input id="start_date" name="start_date" value="${yinWu.start_date }" type="text" readonly size="10" onclick="setDay(this);"/></td>
  	</tr>
  	
  	<tr>
    	<td width=30%>终止日期：</td>
    	<td width=70%><input id="end_date" name="end_date" value="${yinWu.end_date }" type="text" readonly size="10" onclick="setDay(this);"/></td>
  	</tr>

  	<tr>
    	<td width=30%>出版单位：</td>
    	<td width=70%><input id="publish_company" name="publish_company" value="${yinWu.publish_company }" type="text" size="20" /></td>
  	</tr>

  	<tr>
    	<td width=30%>印刷单位：</td>
    	<td width=70%><input id="print_company" name="print_company" value="${yinWu.print_company }" type="text" size="20" /></td>
  	</tr>

	<tr>
    	<td width=30%>图书规格：</td>
    	<td width=70%>
      	<select name="book_specs">
      		<c:forEach var="item" items="${bookSpecsList}">
      			<option value="${item.id }"
      				<c:if test="${item.id == yinWu.book_specs }">
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
    	<td width=30%>印章：</td>
    	<td width=70%><input id="yin_zhang" name="yin_zhang" value="${yinWu.yin_zhang }" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>版次：</td>
    	<td width=70%><input id="revision" name="revision" value="${yinWu.revision }" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>印刷数：</td>
    	<td width=70%><input id="print_quantity" name="print_quantity" value="${yinWu.print_quantity }" type="text" size="10"/></td>
  	</tr>

  	<tr>
    	<td width=30%>责任编辑：</td>
    	<td width=70%><input id="ze_ren_editor" name="ze_ren_editor" value="${yinWu.ze_ren_editor }" type="text" size="10" /></td>
  	</tr>
  	
  	<tr>
    	<td width=30%>责任部门：</td>
    	<td width=70%><input id="ze_ren_department" value="${yinWu.ze_ren_editor }" name="ze_ren_department" type="text" size="10" /></td>
  	</tr>  	

	<tr>
    	<td width=30%>印刷状态：</td>
    	<td width=70%>
      	<select name="print_status">
      		<c:forEach var="item" items="${printStatusList}">
      			<option value="${item.id }"
      				<c:if test="${item.id == yinWu.print_status }">
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
    	<td width=30%>印刷质量：</td>
    	<td width=70%>
      	<select name="print_quality">
      		<c:forEach var="item" items="${printQualityList}">
      			<option value="${item.id }"
      				<c:if test="${item.id == yinWu.print_quality }">
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