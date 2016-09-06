<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>蓝色透明登录界面模板</title>

<link rel="stylesheet" href="<%=basePath%>/view/loginMy/css/font-awesome.min.css"/>
<link rel="stylesheet" href="<%=basePath%>/view/loginMy/css/loginMy.css"/>

<style>
html,body{width:100%;}
</style>

</head>
<body>

<div class="main">

	<div class="center">
		<form action="<%=basePath%>login.do" id="formOne" method="post"onsubmit="return submitB()" >
			<i class="fa fa-user Cone">  | </i>
			<input type="hidden" name="methodName" value="login"/>
			<input type="text" name="userName" id="user" placeholder="用户名"onblur="checkUser()"/>
			<span id="user_pass"></span>
			<br/>
			<i class="fa fa-key Cone">  | </i>
			<input type="password" name="userWord" id="pwd" placeholder="密码"onblur="checkUser1()"/>
			<span id="pwd_pass"></span>
			<br/>
			<span id="surePwd_pass" ></span><br/>
			<p style="text-align: center;">
			<%
		         String LoginError=(String)application.getAttribute("LoginError");
		         if(LoginError != null)out.println(LoginError);      
			%>
			</p>
			<p style="text-align: center;">${LoginError}</p>
			<input type="submit" value="登录" id="submit" name="submit"/>
			<br/><br/><br/>
			<p style="text-align: center;"><span>还没有账号?<a href="<%=basePath%>view/Zhuce.jsp">点击注册</a></span></p>
			<br/>
		</form>
	</div>
	
</div>


<script type="text/javascript" src="<%=basePath%>/view/loginMy/js/loginMy.js"></script>
  
</body>
</html>