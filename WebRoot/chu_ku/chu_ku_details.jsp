<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page import="com.tgb.model.Transportation" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    
    // 获取所有的 transportation 信息
    List<Transportation> transportationList = (List<Transportation>)request.getAttribute("transportationList");
    
    int the_book_id = (Integer)request.getAttribute("the_book_id");			// 获取 the_book_id
    String book_name = (String)request.getAttribute("book_name"); 			// 获取 book_name
    String sub_book_name = (String)request.getAttribute("sub_book_name"); 	// 获取 sub_book_name
    String ISBN = (String)request.getAttribute("ISBN"); 					// 获取 ISBN
    float price = (Float)request.getAttribute("price");						// 获取 price    
    
    /* 
    String username=(String)session.getAttribute("username");
    if(username==null) {
        response.getWriter().println("<script>top.location.href='" + basePath + "login/login_view.action';</script>");
    } */
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<TITLE>查看出库详细信息</TITLE> 
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
    <form action="" name="chuKu">
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
    	<td width=30%>ISBN：</td>
    	<td width=70%><input id="ISBN" name="ISBN" value="<%=ISBN %>" type="text" size="20"/></td>
  	</tr>
  	
  	<tr>
    	<td width=30%>单价：</td>
    	<td width=70%><input id="price" name="price" value="<%=price == 0.0 ? "":price %>" type="text" size="20"/></td>
  	</tr>
  	
  	<tr>
  		<td><br/></td>
  	</tr>

	<tr>
	    <td width=30%>发书编号：</td>
	    <td width=70%><input id="id" name="id" value="${chuKu.id}" type="text" size="10" /></td>
	</tr>

	<tr>
    	<td width=30%>发书日期：</td>
    	<td width=70%><input id="deliver_date" name="deliver_date" value="${chuKu.deliver_date }" type="text" size="10"/></td>
  	</tr>

  	<tr>
    	<td width=30%>客户编号：</td>
    	<td width=70%><input id="customer_id" name="customer_id" value="${chuKu.customer_id}" type="text" size="10" /></td>
  	</tr>

	<tr>
    	<td width=30%>客户名称：</td>
    	<td width=70%><input id="customer_name" name="customer_name" value="${chuKu.customer_name}" type="text" size="20" /></td>
  	</tr>

  	<tr>
    	<td width=30%>货主编号：</td>
    	<td width=70%><input id="book_owner_id" name="book_owner_id" value="${chuKu.book_owner_id}" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>货主名称：</td>
    	<td width=70%><input id="book_owner_name" name="book_owner_name" value="${chuKu.book_owner_name}" type="text" size="20" /></td>
  	</tr>

  	<tr>
    	<td width=30%>发货人：</td>
    	<td width=70%><input id="deliver_man" name="deliver_man" value="${chuKu.deliver_man}" type="text" size="10"/></td>
  	</tr>

  	<tr>
    	<td width=30%>发货人电话：</td>
    	<td width=70%><input id="deliver_contact_phone" name="deliver_contact_phone" value="${chuKu.deliver_contact_phone}" type="text" size="20" /></td>
  	</tr>

  	<tr>
    	<td width=30%>版次：</td>
    	<td width=70%><input id="revision" name="revision" value="${chuKu.revision}" type="text" size="10"/></td>
  	</tr>
  	<tr>
    	<td width=30%>数量：</td>
    	<td width=70%><input id="quantity" name="quantity" value="${chuKu.quantity}" type="text" size="10"/></td>
  	</tr>

  	<tr>
    	<td width=30%>码洋：</td>
    	<td width=70%><input id="fixed_price" name="fixed_price" value="${chuKu.fixed_price}" type="text" size="10"/></td>
  	</tr>
  	<tr>
    	<td width=30%>折扣：</td>
    	<td width=70%><input id="discount" name="discount" value="${chuKu.discount}" type="text" size="10"/></td>
  	</tr>
  	<tr>
    	<td width=30%>实样：</td>
    	<td width=70%><input id="discounted_price" name="discounted_price" value="${chuKu.discounted_price}" type="text" size="10"/></td>
  	</tr>
  	<tr>
    	<td width=30%>所在箱序号：</td>
    	<td width=70%><input id="crate_id" name="crate_id" value="${chuKu.crate_id}" type="text" size="10"/></td>
  	</tr>
  	<tr>
    	<td width=30%>送货地址：</td>
    	<td width=70%><input id="deliver_address" name="deliver_address" value="${chuKu.deliver_address}" type="text" size="10"/></td>
  	</tr>
  	<tr>
    	<td width=30%>邮编：</td>
    	<td width=70%><input id="postcode" name="postcode" value="${chuKu.postcode}" type="text" size="10"/></td>
  	</tr>  	

	<tr>
    	<td width=30%>运输方式：</td>
    	<td width=70%>
      	<select name="transportation">
      		<c:forEach var="item" items="${transportationList}">
      			<option value="${item.id }"
      				<c:if test="${item.id == chuKu.transportation }">
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
    	<td width=30%>到站:</td>
    	<td width=70%><input id="site_arrived" name="site_arrived" value="${chuKu.site_arrived}" type="text" size="20"/></td>
  	</tr>
  	  	<tr>
    	<td width=30%>联系人：</td>
    	<td width=70%><input id="contact_person" name="contact_person" value="${chuKu.contact_person}" type="text" size="10"/></td>
  	</tr>
  	  	<tr>
    	<td width=30%>联系电话：</td>
    	<td width=70%><input id="contact_phone" name="contact_phone" value="${chuKu.contact_phone}" type="text" size="10"/></td>
  	</tr>

</table>
</form>
</TD></TR>
</TBODY>
</TABLE>
</BODY>
</HTML>