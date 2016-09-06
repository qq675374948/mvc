<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//List<Object []> list =(List<Object []>)request.getAttribute("user");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>欢迎</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  <style type="text/css">
  	  #ta{
  	  	  width: 1000px;
  	  	  height: 200px;
  	  	  border-color: green;
  	  	  border: 1;
  	  }
  	  h1{
  	  	text-align: center;
  	  }
  
  </style>
  </head>
  
  <body>
      <h1 align="center">用户列表</h1>
      <p>
      	<fmt:formatDate value="${date}" pattern="yyyy-MM-dd HH:mm:ss"/>
      </p>
  	  <table id="ta" border="1" cellpadding="1" cellspacing="1">
  	  	  <tr>
  	  	      <td>编号</td>
  	  	      <td>账户</td>
  	  	      <td>性别</td>
  	  	      <td>邮箱</td>
  	  	      <td>爱好</td>
  	  	      <td>学历</td>
  	  	      <td>简介</td>
  	  	      <td>操作</td>
  	  	  </tr>
  	  	 <c:forEach items="${userList}" var="u">
  	  	  	  <tr>
		  	  	  <td>${u.uid}</td>
		  	  	  <td>${u.userName}</td>
		  	  	  <td>
					<c:if test="${u.sex==1}">男</c:if>
		  	  	  	<c:if test="${u.sex==2}">女</c:if>
		  	  	  </td>
		  	  	  <td>${u.email}</td>
		  	  	  <td>${u.hobby}</td>
		  	  	  <td>
		  	  	  	<c:if test="${u.education==1}">初中</c:if>
		  	  	  	<c:if test="${u.education==2}">高中</c:if>
		  	  	  	<c:if test="${u.education==3}">大专</c:if>
		  	  	  	<c:if test="${u.education==4}">本科</c:if>
		  	  	  	<c:if test="${u.education==5}">研究生</c:if>
		  	  	  </td>
		  	  	  <td>${u.intro}</td>
		  	      <td><a href='ff.do?uid=${u.uid}'>查看</a>&nbsp;&nbsp;<a href='gg.do?uid=${u.uid}'>删除</a></td>
	  	  	  </tr>
  	  	  </c:forEach>
  	  </table>
  </body>
</html>
