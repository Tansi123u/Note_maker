<jsp:useBean id="rd" class="com.entities.Rdao"></jsp:useBean>
<%
int id=Integer.parseInt(request.getParameter("id"));
int i=rd.delete(id);
response.sendRedirect("show.jsp");
%>
