<%@page import="java.sql.PreparedStatement"%>
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%
String mobilenumber=request.getParameter("mobilenumber");
try
{
Connection con=ConnectionProvider.getCon();
PreparedStatement ps=con.prepareStatement( "update bloodgroup set status='completed' where mobilenumber=?");
ps.setString( 1, mobilenumber);
ps.executeUpdate();
response.sendRedirect( "requestForBlood.jsp");

}
catch(Exception e)
{
	response.sendRedirect( "requestForBlood.jsp");

}
%>
