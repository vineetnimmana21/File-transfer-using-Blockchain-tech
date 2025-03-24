<%@page import="java.util.Random"%>
<%@page import="dbServices.DB"%>
<%@page import="java.sql.*"%>
<%
    String fname=request.getParameter("fname");
    String name=request.getParameter("uname");
    String id=request.getParameter("uid");
    String mail=request.getParameter("mail");
    String fkey=request.getParameter("fkey");
    Connection con=new DB().fun();
    PreparedStatement p=con.prepareStatement("insert into request(id,name,mail,fname,fkey)values('"+id+"','"+name+"','"+mail+"','"+fname+"','"+fkey+"') ");
     p.executeUpdate();
     out.println("<script type=\"text/javascript\">"); 			
        out.println("alert(\"Key Request Send to Cloud.\")");
        out.println("</script>"); 
        RequestDispatcher rd=request.getRequestDispatcher("View_Files.jsp");
        rd.include(request, response);
%>