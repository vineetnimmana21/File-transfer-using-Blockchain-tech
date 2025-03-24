
<%@page import="pack.mail"%>
<%@page import="dbServices.DB"%>
<%@page import="java.sql.*"%>
<%
    String id=request.getParameter("id");
    String name=request.getParameter("oname");
    String filename=request.getParameter("fname");
    String email="";
    Connection con=new DB().fun();
    PreparedStatement p=con.prepareStatement("select * from owner_register where username='"+name+"' ");
    ResultSet r=p.executeQuery();
    if(r.next()){
        email=r.getString("mail");
    }
    System.out.println(email);
    mail m=new mail(); 
    String subject="Encryption Password";
    String message="You file was Attacked. File name is  "+filename;
    m.sendFromGMail("otpmessenger", "qawsedrftg",email, subject,message);
    System.out.println("Done");
    out.println("<script type=\"text/javascript\">"); 			
    out.println("alert(\"Alert Send.\")");
    out.println("</script>"); 
    RequestDispatcher rd=request.getRequestDispatcher("Disseminator_Home.jsp");
    rd.include(request, response);
%>