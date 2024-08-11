<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Todo</title>
<style type="text/css">
.span1{
position: absolute;
font-style: normal;
color:  #d5d5d5;
font-size: 16px;
padding-right: 25px;
width:100%;

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
.in3{
width:100%;
height:30px;
padding-top:5px;

}
</style>
</head>
<body style="margin: 0px;">
		<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
		<p align="right" class="span1"><a class="aa1" href="<%=request.getContextPath()%>/login">Login</a>
		&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/signup">Signup</a></p>
		<div align="center" class="dv1">
		<div style="display: inline-block; width: 40%;">
		<div align="left">
		<c:if test="${todo==null}">
		<h1>Add Todo Form</h1>
		</c:if>
		<c:if test="${todo!=null}">
		<h1>Edit Todo Form</h1>
		</c:if>
		<form action="new-edit" method="post">
		<c:if test="${todo!=null}">
		<label><input class="in1" type="hidden" name="id" value="${todo.getId()}"></label><br><br>
		</c:if>
		<label><input class="in1" type="hidden" name="username" value="${user}"></label><br><br>
		<label>Todo Title:</label><br>
		<label><input class="in1" type="text" name="title" value="${todo.getTitle()}"></label><br><br>
		<label>Todo Description:</label><br>
		<label><input class="in1" type="text" name="description" value="${todo.getDescription()}"></label><br><br>
		<label>Todo status:</label><br>
		<select id="st" class="in3" name="status" >
			<option value="1">complete</option>
			<option value="0">in progress</option>
		</select><br><br>
		<label>Todo Target Date:</label><br>
		<label><input class="in1" type="date" name="targetdate" value="${todo.getTargetdate()}"></label><br>
		<input class="in2" type="submit" value="save">
		</form>
		</div>
		</div>
		</div>
</body>
</html>