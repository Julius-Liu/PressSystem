<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@ page import="com.tgb.model.Book" %>
<%@ page import="com.tgb.model.BookType" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<title>管理中心</title>
<meta http-equiv=Content-Type content=text/html;charset=utf8>
</head>
<frameset rows="64,*"  frameborder="NO" border="0" framespacing="0">
	<frame src="<%=basePath %>top.jsp" noresize="noresize" frameborder="NO" name="topFrame" scrolling="no" marginwidth="0" marginheight="0" target="main" />
  	<frameset cols="200,*"  rows="640,*" id="frame">
	  <frame src="<%=basePath %>left.jsp" name="leftFrame" noresize="noresize" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" target="main" />
	  <frame src="<%=basePath %>right.jsp" name="main" marginwidth="0" marginheight="0" frameborder="0" scrolling="auto" target="_self" />
    </frameset>
<noframes>
<body></body>
</noframes>
</html>