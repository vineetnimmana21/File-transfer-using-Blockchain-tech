<%@page import="dbServices.DB"%>
<%@page import="java.sql.*"%>
<%
    String oname=request.getParameter("oname");
    String fname=request.getParameter("fname");
    Connection con=new DB().fun();
    PreparedStatement p1=con.prepareStatement("update upload set coowner='accept' where oname='"+oname+"' and fname='"+fname+"' ");
    p1.executeUpdate();
    out.println("<script>"
            +"alert('File Activated..')"
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("Activate_File.jsp");
    rd.include(request, response);
%>