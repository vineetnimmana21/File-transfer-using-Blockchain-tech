<%@page import="java.util.Random"%>
<%@page import="dbServices.DB"%>
<%@page import="java.sql.*"%>
<%
    String fname=request.getParameter("fname");
    String name=request.getParameter("name");
    Random r = new Random(); 
    String xyz = Integer.toString(r.nextInt(10000));
    Connection con=new DB().fun();
    PreparedStatement p=con.prepareStatement("update upload set status='Attacked',hash='"+xyz+"' where fname='"+fname+"' and oname='"+name+"' ");
     p.executeUpdate();
     out.println("<script type=\"text/javascript\">"); 			
        out.println("alert(\"File Attacked.\")");
        out.println("</script>"); 
        RequestDispatcher rd=request.getRequestDispatcher("Attack_Files.jsp");
        rd.include(request, response);
%>