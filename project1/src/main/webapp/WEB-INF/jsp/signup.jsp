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
}
.dv1{
padding-left:10%;
padding-top: 70px;

}
.in1{
width:100%;
padding-right:0px;
height:25px;
padding-top:5px;
border-radius: 3px;
border-color: #d5d5d5;
border-width: thin;
padding-left:10px;
margin-top:5px;

}
.in2{
margin-top: 25px;
background-color: green;
padding: 10px;
border-radius: 3px;
border-style: none;
color:white;
}
.f1{
padding-right:0px;
height:30px;
padding-left:0px;
margin-bottom: 7px;
margin-left:25px;
background-color: #98FB98;
border-style:none;
border-radius: 3px;
}
.hhh1{
margin: 10px;
margin-left:0px;

}
</style>
</head>
<body style="margin: 0px;">
		<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
		<p align="right" class="span1"><a class="aa1" href="<%=request.getContextPath()%>/login">Login</a>
		&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/signup">Signup</a></p>
		<div class="dv1">
		<div style="display: inline-block; width: 45%;">
		<div align="left">
		<h1 class="hhh1">User Register Form</h1>
		<fieldset class="f1">${message}</fieldset>
		<form style="padding-left: 25px;"action="adduser">
		<label>FirstName:</label><br>
		<label><input class="in1" type="text" name="fname" placeholder="FirstName"></label><br><br>
		<label>LastName:</label><br>
		<label><input class="in1" type="text" name="lname" placeholder="LastName"></label><br><br>
		<label>UserName:</label><br>
		<label><input class="in1" type="text" name="uname" placeholder="UserName"></label><br><br>
		<label>password:</label><br>
		<label><input class="in1" type="text" name="pass" placeholder="PassWord"></label><br>
		<input class="in2" type="submit" value="submit">
		</form>
		</div>
		</div>
		</div>
</body>
</html>