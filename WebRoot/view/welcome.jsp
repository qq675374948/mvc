<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>欢迎你</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
		
		#top{
			background-color:orange;	
			height: 100px;
		}
		#left{
			float: left;
			background-color:red;
			height:600px;
			width: 300px;
		}
		#center{
			float:left;
			background-color:white;
			height:600px;
			width:1265px;
		}
		#left a{
			display: block;
			color: white;
			font-size: 30px;
			
		}
		iframe {
			width: 100%;
			height: 100%;
		}
	</style>
  </head>
  
  <body>
  	  <div id="top">
  	  	  <h1>欢迎你${LoginUser.userName}</h1>
  	  </div>
  	  <div id="left">
  	  	<ul>
  	  		<c:forEach items="${MenuList}" var="m2">
  	  			<c:if test="${m2.level==2}">
  	  				<li>
  	  					<span>${m2.name}</span>
  	  					<ul>
  	  						<c:forEach items="${MenuList}" var="m3">
  	  							<c:if test="${m3.parentid==m2.mid}">
  	  								<li><a href="<%=basePath%>${m3.url}" target="cc">${m3.name}</a></li>
  	  							</c:if>
  	  						</c:forEach>
  	  					</ul>
  	  				</li>
  	  			</c:if>
  	  		</c:forEach>
  	  	</ul>
  	  </div>
  	  <div id="center">
  	      <iframe name="cc"></iframe>
  	  </div>
  </body>
</html>
