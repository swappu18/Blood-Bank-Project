<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%
String mobilenumber=request.getParameter("mobilenumber");
try
{
Connection con=ConnectionProvider.getCon();
 Statement st=con.createStatement();
 st.executeUpdate( "delete from bloodrequest where mobilenumber='"+mobilenumber+"'");
 
response.sendRedirect( "requestForBlood.jsp");

}
catch(Exception e)
{
	response.sendRedirect( "requestForBlood.jsp");

}
%>