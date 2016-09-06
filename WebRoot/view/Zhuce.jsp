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

<link rel="stylesheet" href="css/font-awesome.min.css"/>
<link rel="stylesheet" href="loginMy/css/loginMy.css"/>

<style type="text/css">
    #a{
        width:30px;
        height:50px;    
    }

</style>

</head>
<body>
 <div>
           <form action="<%=basePath%>view/Zhuce.do" method="post">
             <table border="0"  cellpadding="0" style="margin: auto;" width="100" height=100px>
			       <tr>
			           <td><lable>账号：</lable></td>
			           <td><input type="text" name="userName" border="1"></td>
			       </tr>
			       <tr>
			           <td><lable>密码：</lable></td>
			           <td><input type="password" name="userWord" border="1"></td>
			       </tr>
			       <tr>
			           <td id="a"><lable>性别：</lable></td>
			       	   <td>
				           <input type="radio" name="sex" value="1"/>男
				           <input type="radio" name="sex" value="2"/>女
			           </td>
			       </tr>
			       <tr>
			           <td><lable>邮箱：</lable></td>
			           <td><input type="text" name="email" border="1"></td>
			       </tr>
			       <tr>
			          <td width="10px" height="1%"> <lable>兴趣爱好：</lable></td>
			          <td>
				          <input type="checkbox" name="hobby" value="1"/>篮球
				          <input type="checkbox" name="hobby" value="2"/>羽毛球
				          <input type="checkbox" name="hobby" value="3"/>LOL
				          <input type="checkbox" name="hobby" value="4"/>上网
				          <input type="checkbox" name="hobby" value="5"/>泡妞
			          </td>
			       </tr>
			       <tr>
			           <td><label heigth="200">学历:</label></td>
			           <td>
				           <select name="education">
				               <option  value="1">初中</option>
				               <option  value="2">高中</option>
				               <option  value="3">大专</option>
				               <option  value="4">本科</option>
				               <option  value="5">研究生</option>
				           </select>
			           </td>
			       </tr>
			       <tr>
			       	   <td><lable>个人简介：</lable></td>
			           <td><textarea name="intro"></textarea></td>
			       </tr>
			       <tr>
			           <td colspan="2" style="text-align: center;">
			               <% 
         String ZhuceError=(String)application.getAttribute("ZhuceError"); 
         if(ZhuceError != null)out.println(ZhuceError);       
       %><input type="submit" value="注册"/>
			               <br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			               <span>已有注册账号<a href="<%=basePath%>view/index.jsp">直接登录</a></span>
			           </td>
			       </tr>
			 </table>
      </form>
      </div>
      
</body>
</html>
