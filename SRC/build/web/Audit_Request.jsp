<%@page import="dbServices.DB"%>
<%@page import="java.sql.*"%>
<%
    String oname=request.getParameter("oname");
    String fname=request.getParameter("fname");
    Connection con=new DB().fun();
    PreparedStatement p1=con.prepareStatement("update upload set status='Waiting' where oname='"+oname+"' and fname='"+fname+"' ");
    p1.executeUpdate();
    out.println("<script>"
            +"alert('Key Request Sends to cloud..')"
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("Auditing_Request.jsp");
    rd.include(request, response);
%>