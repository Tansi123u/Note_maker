<jsp:useBean id="rd" class="com.entities.Rdao"></jsp:useBean>
<jsp:useBean id="note" class="com.entities.Note"></jsp:useBean>
<jsp:setProperty property="*" name="note"/>
<%
int i=rd.update(note);
response.sendRedirect("show.jsp");
%>