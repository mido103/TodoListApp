<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
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
.span2{
position: fixed;
font-style: normal;
color:  #d5d5d5;
font-size: 16px;
padding-left: 110px;
width:100%;
padding-top:6px;
}
.hh1{
padding-top:70px;
margin-top:0px;

}
.aa1{
text-decoration: none;
font-family: sans-serif;
}
.ss1{
color: blue;

}
.h22{
font-size: 35px;
text-decoration: underline;
margin-bottom:10px;
}
.tab2{
border-top-style: groove;
border-top-width: 2px;
border-left-style: groove;
border-left-width: 2px;
border-spacing: 0px;
width:60%;
margin-top:5px;
border-color:rgb(233, 233, 233);
}
.tab1{
border-right-style: groove;
border-right-width: 2px;;
border-bottom-style: groove;
border-bottom-width: 2px;
text-align: center;
border-color:rgb(233, 233, 233);
}
.dv1{

}
.fd1{
width:60%;
padding-left:0px;
padding-right:0px;
border-top-style: solid;
border-right-width:0px;
border-left-width:0px;
border-bottom-width:0px;
border-spacing: 0px;
text-align: left;

}
.bt1{
margin:0px;
border-spacing: 0px;
background-color: green;
padding:8px;
border-radius: 3px;
color:white;
border-style: none;
}
</style>
</head>
<body style="margin: 0px;">
		<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
		<%-- <label class="span2"><a href="show?user=<c:out value="${user.getUsername()}"></c:out>">Todos</a></label> --%>
		<p align="right" class="span1"><a class="aa1" href="<%=request.getContextPath()%>/login">Login</a>
		&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/signup">Signup</a></p>
		<h1 align="center" class="hh1">Welcome&nbsp;<span class="ss1">${name}</span> 😊</h1>
		<h2 align="center" class="h22">List of Todos</h2>
		<div align="center" class="dv1">
		<fieldset class="fd1"><a href="add?user=<c:out value="${user}"></c:out>"><button class="bt1">Add Todo</button></a></fieldset>
			<table  class="tab2">
				<tr>
					<th class="tab1">
						Title
					</th>
					<th class="tab1">
						TargetDate
					</th>
					<th class="tab1">
						TodoStatus
					</th>
					<th class="tab1">
						Actions
					</th>
				</tr>
				
				<c:forEach items="${todos}" var="todo">
					<tr>
						<td class="tab1">
							<c:out value="${todo.getTitle()}"></c:out>
						</td>
						<td class="tab1">
							<c:out value="${todo.getTargetdate()}"></c:out>
						</td>
						<td class="tab1">
							<c:out value="${todo.isStatus()}"></c:out>
						</td>
						<td class="tab1">
							<a href="modify?id=<c:out value="${todo.getId()}"></c:out>&user=<c:out value="${user}"></c:out>">edit</a>
							 &nbsp;&nbsp;&nbsp;<a href="delete?id=<c:out value="${todo.getId()}"></c:out>">delete</a>
						</td>
					</tr>
				</c:forEach>
		
			</table>
		</div>
</body>
</html>