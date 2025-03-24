
<%@page import="pack.mail"%>
<%@page import="dbServices.DB"%>
<%@page import="java.sql.*"%>
<%
   
    String mail="";
    String sno=request.getParameter("sno");
    String username=request.getParameter("username");
    String fname=request.getParameter("fname");
   
    String fkey=request.getParameter("fkey");
    Connection con=new DB().fun();
    PreparedStatement ps=con.prepareStatement("select * from accessor_register where username='"+username+"'   ");
    ResultSet rs=ps.executeQuery();
    if(rs.next())
    {
    mail=rs.getString("mail");
    }
    mail m=new mail(); 
    String subject="Encryption Password";
    String message="You file Key "+fkey;
    System.out.println(subject);
    System.out.println(message);
 
    m.sendFromGMail("otpsendermessage", "nnrfttsakomwugsr",mail, subject,message);
    System.out.println("Done");
     PreparedStatement p=con.prepareStatement("update request1 set status='Send' where sno='"+sno+"' ");
    p.executeUpdate();
    System.out.println(p);
    out.println("<script type=\"text/javascript\">"); 			
    out.println("alert(\"Key send to mail Successfully....\")");
    out.println("</script>"); 
    RequestDispatcher rd=request.getRequestDispatcher("View_request.jsp");
    rd.include(request, response);
%>