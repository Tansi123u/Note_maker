<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@include file="common.jsp" %>
<jsp:useBean id="rd" class="com.entities.Rdao"></jsp:useBean>
<%@page import="com.entities.Note" %>
<%@page import="java.util.List" %>
</head>
<style>
.container{
padding:5px;
}
h2{
text-align:center;
}
.container{
background-color:#888888;
}
</style>
<body>
</body>
<%
List<Note> l=rd.show();
for(Note n:l){
	%>
	<div class="container">
		<div class="card">
	  	<img class="card-img-top" src="images/note.jpg" alt="Card image cap" style="width:200px; height:150px;" >
	  	<div class="card-body">
	    <h5 class="card-title"><%=n.getTitle() %></h5>
	    <p class="card-text"><%=n.getContent() %></p>
	    <a href="delete.jsp?id=<%=n.getId() %>" class="btn btn-danger">Delete</a>
	    <a href="edit.jsp?id=<%=n.getId() %>" class="btn btn-primary">Update</a>
	  	</div>
		</div>
	</div>
	<%
}
%>