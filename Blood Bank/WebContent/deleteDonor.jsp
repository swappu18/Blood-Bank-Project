<%@page import="java.sql.Statement"%>
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%
String id=request.getParameter("id");
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeQuery( "delete from donor where id='"+id+"'");
	response.sendRedirect( "editDeleteList.jsp?msg=deleted");
	
}
catch(Exception e)
{
	response.sendRedirect( "editDeleteList.jsp?msg=invalid");
}
%>
