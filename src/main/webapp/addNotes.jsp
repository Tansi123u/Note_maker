<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@include file="common.jsp" %>
</head>
<style>
.container{
	background-color:#E8E8E8;
	padding:5px;
}
</style>
<body>
<div class="container">
	<form action="save.jsp">
	  <div class="form-group">
	    <label for="title">Title</label>
	    <input type="text" class="form-control" id="title" name="title" aria-describedby="emailHelp" placeholder="Enter title">
	     </div>
	  <div class="form-group">
	    <label for="content">Content</label><br>
	    <textarea id="content" name="content" placeholder="Enter your content" class="form-control" style="height:300px;"></textarea>
	  </div>
	  
	  
	  <center><button type="submit" class="btn btn-primary">Add Note</button></center>
	</form>
</div>
</body>
</html>