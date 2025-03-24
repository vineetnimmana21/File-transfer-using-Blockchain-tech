<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbServices.DB"%>
<%@page import="java.sql.Connection"%>
<%
    String username=request.getParameter("username");
    String id=request.getParameter("id");
    String pname=request.getParameter("pname");
    String fname=request.getParameter("fname");
    String diseases=request.getParameter("diseases");
    String symtoms=request.getParameter("symtoms");
    String fkey=request.getParameter("fkey");
    Connection con=new DB().fun();
    PreparedStatement p=con.prepareStatement("insert into request1(username,pname,fname,diseases,symtoms,fkey)values('"+username+"','"+pname+"','"+fname+"','"+diseases+"','"+symtoms+"','"+fkey+"') ");
    p.executeUpdate();
    out.println("<script type=\"text/javascript\">"); 			
    out.println("alert(\"Key Request Send to Cloud.\")");
    out.println("</script>"); 
    RequestDispatcher rd=request.getRequestDispatcher("viewfile2.jsp");
     rd.include(request, response);
%>