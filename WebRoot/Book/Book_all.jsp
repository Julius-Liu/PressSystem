<%@ page language="java" import="java.util.*"  contentType="text/html;charset=UTF-8"%> 
<%@ page import="com.tgb.model.Book" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

    List<Book> bookList = (List<Book>)request.getAttribute("bookList");

    int currentPage =  (Integer)request.getAttribute("currentPage"); //当前页
    int totalPage =   (Integer)request.getAttribute("totalPage");  //一共多少页
    int recordNumber =   (Integer)request.getAttribute("recordNumber");  //一共多少记录

    String book_name = (String)request.getAttribute("book_name"); 			// 
    String sub_book_name = (String)request.getAttribute("sub_book_name"); 	// 
    String ISBN = (String)request.getAttribute("ISBN"); 					// 
        //String username=(String)session.getAttribute("username");
    //if(username==null){
        //response.getWriter().println("<script>top.location.href='" + basePath + "login/login_view.action';</script>");
    //}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>图书查询</title>
<style type="text/css">
<!--
body {
    margin-left: 0px;
    margin-top: 0px;
    margin-right: 0px;
    margin-bottom: 0px;
}
.STYLE1 {font-size: 12px}
.STYLE3 {font-size: 12px; font-weight: bold; }
.STYLE4 {
    color: #03515d;
    font-size: 12px;
}
-->
</style>

<script type="text/javascript" src="<%=basePath %>js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="<%=basePath %>js/calendar.js"></script>
<script type="text/javascript">
var  highlightcolor='#c1ebff';
//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
var  clickcolor='#51b2f6';
function changeto(){
	source=event.srcElement;
	if  (source.tagName=="TR"||source.tagName=="TABLE") {
		return;
	}
	while(source.tagName!="TD") {
		source=source.parentElement;
	}
	source=source.parentElement;
	cs  =  source.children;
	//alert(cs.length);
	if (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc") {
		for(i=0;i<cs.length;i++){
	    	cs[i].style.backgroundColor=clickcolor;
		}
	}
	else {
		for(i=0;i<cs.length;i++) {
		    cs[i].style.backgroundColor="";
		}
	}
}

function changeback() {
	if (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc") {
		return;
	}
	if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor) {
		//source.style.backgroundColor=originalcolor
		for(i=0;i<cs.length;i++) {
			cs[i].style.backgroundColor="";
		}
	}
}

/*跳转到查询结果的某页*/
function GoToPage(currentPage, totalPage) {
    if(currentPage == 0) {
    	return;
    }
    if(currentPage > totalPage) {
    	return;
    }
    document.forms[0].currentPage.value = currentPage;
    document.forms[0].action = "<%=basePath %>book/queryBook";
    document.forms[0].submit(); 
}

function changepage(totalPage)
{
    var pageValue=document.bookQueryForm.pageValue.value;
    if(pageValue>totalPage) {
        alert('你输入的页码超出了总页数!');
        return ;
    }
    document.bookQueryForm.currentPage.value = pageValue;
    document.forms["bookQueryForm"].action = "<%=basePath %>book/queryBook";
    document.bookQueryForm.submit();
}

/* 查询图书按钮 */
function QueryBook() {
	document.forms["bookQueryForm"].action = "<%=basePath %>book/queryBook";
	document.forms["bookQueryForm"].submit();
}

/* 删除 书本 */
function DelBook(id) {
	$.get("<%=basePath%>book/delBook?id=" + id, function(data){
		if("success" == data.result) {
			alert("删除成功！");
			window.location.reload();
		}else{
			alert("删除失败！");
		}
	});
}

/* 导出当前记录到Excel */
/* 需要启用 */
function OutputToExcel() {
	document.forms["bookQueryForm"].action = "<%=basePath%>book/exportExcel";
	document.forms["bookQueryForm"].submit(); 
}

</script>
</head>

<body>
<form action="<%=basePath %>book/queryBook" name="bookQueryForm" method="post">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" background="<%=basePath %>images/tab_05.gif">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="<%=basePath %>images/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="5%"><div align="center"><img src="<%=basePath %>images/tb.gif" width="16" height="16" /></div></td>
                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：[图书管理]-[图书查询]</td>
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">

            </table></td>
          </tr>
        </table></td>
        <td width="16"><img src="<%=basePath %>images/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table>
    </td>
  </tr>
  
  <tr>
  <td>
图书名称：<input type=text name="book_name" value="<%=book_name%>"/>&nbsp;
丛书名称：<input type=text name="sub_book_name" value="<%=sub_book_name%>"/>&nbsp;
ISBN：<input type=text name="ISBN" value="<%=ISBN%>"/>&nbsp;
    <input type=hidden name=currentPage value="1" />
    <input type=submit value="查询" onclick="QueryBook();"  />
  </td>
</tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="<%=basePath %>images/tab_12.gif">&nbsp;</td>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()"  onmouseout="changeback()">
          <tr>
          <!-- 
            <td width="3%" height="22" background="images/bg.gif" bgcolor="#FFFFFF"><div align="center">
              <input type="checkbox" name="checkall" onclick="checkAll();" />
            </div></td> -->
            <td width="4%" height="22" background="<%=basePath %>images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">图书编号</span></div></td>
            <td height="22" background="<%=basePath %>images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">图书名称</span></div></td>
            <td height="22" background="<%=basePath %>images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">丛书名称</span></div></td>
            <td width="12%" height="22" background="<%=basePath %>images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">ISBN</span></div></td>
            <td width="4%" height="22" background="<%=basePath %>images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">图书单价</span></div></td>
            <td width="15%" height="22" background="<%=basePath %>images/bg.gif" bgcolor="#FFFFFF" class="STYLE1"><div align="center">基本操作</div></td>
          </tr>
             <%-- <c:if test="${!empty bookList && !empty bookTypeList}"> --%>
				<%-- <c:forEach items="${bookList}" var="book"> --%>
				<%
					int bookListSize = bookList.size();
					int startIndex = (currentPage -1) *10;
					System.out.println("bookList size = " + bookListSize);
				    for(int i=0; i<bookListSize; i++) {
            			Book book = bookList.get(i); // 获取到Book对象
				 %>
		          <tr>
		            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><%=book.getId() %></span></div></td>
		            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><%=book.getBook_name() %></span></div></td>
		            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><%=book.getSub_book_name() %></span></div></td>
		            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><%=book.getISBN() %></span></div></td>
		            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><%=book.getPrice()==0.0 ? "": book.getPrice()%></span></div></td>
		            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4">
		            	<span style="cursor:hand;" onclick="location.href='<%=basePath %>book/checkBook?id=<%=book.getId() %>'"><a href='#'><img src="<%=basePath %>images/vie.gif" width="16" height="16"/>详细</a></span>&nbsp;
		            	<span style="cursor:hand;" onclick="location.href='<%=basePath %>book/getBook?id=<%=book.getId() %>'"><a href='#'><img src="<%=basePath %>images/edt.gif" width="16" height="16"/>编辑</a></span>&nbsp;
            			<span style="cursor:hand;" onclick=""><a href="javascript:DelBook('<%=book.getId() %>')"><img src="<%=basePath %>images/del.gif" width="16" height="16"/>删除</a></span>
		            </div></td>
		          </tr>
		          <% } %>
          		<%-- </c:forEach> --%>
          	<%-- </c:if> --%>
        </table></td>
        <td width="8" background="<%=basePath %>images/tab_15.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>

  <tr>
    <td height="35" background="<%=basePath %>images/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35"><img src="<%=basePath %>images/tab_18.gif" width="12" height="35" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td class="STYLE4">&nbsp;&nbsp;共有<%=recordNumber %>条记录，当前第 <%=currentPage %>/<%=totalPage %> 页&nbsp;&nbsp;
              <span onclick="OutputToExcel();"><a style="cursor:hand;color:red;text-decoration:underline;" href='#'>导出当前记录到excel</a></span>
            </td>
            <td><table border="0" align="right" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="40"><img src="<%=basePath %>images/first.gif" width="37" height="15" style="cursor:hand;" onclick="GoToPage(1,<%=totalPage %>);" /></td>
                  <td width="45"><img src="<%=basePath %>images/back.gif" width="43" height="15" style="cursor:hand;" onclick="GoToPage(<%=currentPage-1 %>,<%=totalPage %>);"/></td>
                  <td width="45"><img src="<%=basePath %>images/next.gif" width="43" height="15" style="cursor:hand;" onclick="GoToPage(<%=currentPage+1 %>,<%=totalPage %>);" /></td>
                  <td width="40"><img src="<%=basePath %>images/last.gif" width="37" height="15" style="cursor:hand;" onclick="GoToPage(<%=totalPage %>,<%=totalPage %>);"/></td>
                  <td width="100"><div align="center"><span class="STYLE1">转到第
                    <input name="pageValue" type="text" size="4" style="height:12px; width:20px; border:1px solid #999999;" />
                    页 </span></div></td>
                  <td width="40"><img src="<%=basePath %>images/go.gif" onclick="changepage(<%=totalPage %>);" width="37" height="15" /></td>
                </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="16"><img src="<%=basePath %>images/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</form>
</body>
</html>
