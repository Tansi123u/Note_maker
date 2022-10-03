<jsp:useBean id="rd" class="com.entities.Rdao"></jsp:useBean>
<%@page import="com.entities.Note" %>
<%@page import="java.util.Date" %>

<%
String title=request.getParameter("title");
String content=request.getParameter("content");

Note note=new Note(title,content,new Date());

rd.add(note);
response.sendRedirect("show.jsp");
%>