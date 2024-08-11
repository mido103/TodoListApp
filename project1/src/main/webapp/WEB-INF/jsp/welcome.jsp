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
.hh1{
padding-top:100px;
margin-top:0px;

}
.aa1{
text-decoration: none;
font-family: sans-serif;
}

</style>
</head>
<body style="margin: 0px;">
		<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
		<p align="right" class="span1"><a class="aa1" href="<%=request.getContextPath()%>/login">Login</a>
		&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/signup">Signup</a></p>
		<h1 align="center" class="hh1">Welcome to Todo Application 😊</h1>
</body>
</html>