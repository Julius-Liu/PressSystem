<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.tgb.controller.TestAOPController" %>
<%@ page import="org.springframework.beans.factory.BeanFactory"%>
<%@ page import="org.springframework.context.support.ClassPathXmlApplicationContext"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	
	//BeanFactory factory = new ClassPathXmlApplicationContext("config/spring-common.xml");    
	//TestAOPController testAOPController = (TestAOPController)factory.getBean("testAOPController");
	String result = (String)request.getAttribute("result");
%>
<jsp:directive.page import="org.springframework.web.context.WebApplicationContext"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'testAOP.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		function testAOPAction() {			
			//alert("hello");
			document.forms["testAOPForm"].action = "<%=basePath%>testAOP/testAOPMethod";
			document.forms["testAOPForm"].submit();
		}
		
		function testAOPAction1() {
			testAOPController.testAOPMethod(null);
		}
	</script>
  </head>
  
  <body>
    This is my JSP page. <br>
    
    <form action="<%=basePath%>testAOP/testAOPMethod" name="testAOPForm" method="post">
    	<input type=submit value="AOP测试" onclick="testAOPAction();" />
    	&nbsp; &nbsp;
    	<input id=result type="text" value="<%=result%>"/>
    </form>
  </body>
</html>
