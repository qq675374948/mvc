<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.io.PrintWriter"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'chakan.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<table border="1"  cellpadding="0"  >
  		 <tr>
  	  	      <td>账户</td>
  	  	      <td>性别</td>
  	  	      <td>邮箱</td>
  	  	      <td>爱好</td>
  	  	      <td>学历</td>
  	  	      <td>简介</td>
  	  	  </tr>
  		<tr>
	  	  	<td>${user.userName}</td>
	  	  	<td>${user.sex}</td>
	  	  	<td>${user.email}</td>
	  	  	<td>${user.hobby}</td>
	  	  	<td>${user.education}</td>
	  	  	<td>${user.intro}</td>
  	  	</tr>
   </table>
  </body>
</html>
