<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@include file="common.jsp" %>
<%@page import="org.hibernate.Session" %>
<%@page import="org.hibernate.cfg.Configuration" %>
<%@page import="com.entities.Note" %>
</head>
<style>
.container{
	background-color:#E8E8E8;
	padding:5px;
}
</style>
<body>
<div class="container">
		<%
		int id=Integer.parseInt(request.getParameter("id").trim());
		Session s=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
		Note note=(Note) s.get(Note.class,id);
		
		if(note==null){
			out.println("null value");
		}
		%>
		<form action="update.jsp">
		  <div class="form-group">
		    <label for="title">Title</label>
		    <input type="text" class="form-control" id="title" name="title" aria-describedby="emailHelp" value="<%= note.getTitle() %>">
		     </div>
		  <div class="form-group">
		    <label for="content">Content</label><br>
		    <textarea id="content" name="content" class="form-control" style="height:300px;" ><%= note.getContent() %>
		    </textarea>
		  </div>
		  
		  <center><button type="submit" class="btn btn-primary">Update Notes</button></center>
		</form>
</div>
</body>
</html>