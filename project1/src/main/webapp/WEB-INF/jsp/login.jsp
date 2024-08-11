<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.span1{
position: absolute;
font-style: normal;
color:  #d5d5d5;
font-size: 16px;
padding-right: 25px;
width:100%;
right:0px;
padding-top:6px;
}
.dv1{

padding-top: 70px;

}
.in1{
width:100%;
height:20px;
padding-top:5px;

}
.in2{
margin-top: 25px;
background-color: green;
padding: 10px;
border-radius: 3px;
border-style: none;
color:white;
}
</style>
</head>
<body style="margin: 0px;">
		<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
		<p align="right" class="span1"><a class="aa1" href="<%=request.getContextPath()%>/login">Login</a>
		&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/signup">Signup</a></p>
		<div align="center" class="dv1">
		<div style="display: inline-block; width: 50%;">
		<div align="left">
		<h1>Login Form</h1>
		<form action="check" method="post">
		<label>UserName:</label><br>
		<label><input class="in1" type="text" name="username"></label><br>
		<br>
		<label>password:</label><br>
		<label><input class="in1" type="text" name="password"></label><br>
		<input class="in2" type="submit" value="submit">
		</form>
		</div>
		</div>
		</div>
</body>
</html>