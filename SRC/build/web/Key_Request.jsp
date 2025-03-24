<%@page import="dbServices.DB"%>
<%@page import="java.sql.*"%>
<%
    String oid=request.getParameter("id");
    String oname=request.getParameter("oname");
    Connection con=new DB().fun();
    PreparedStatement p1=con.prepareStatement("update owner_register set estatus='Request_Send',sstatus='Request_Send' where id='"+oid+"' and username='"+oname+"' ");
    p1.executeUpdate();
    out.println("<script>"
            +"alert('Key Request Sends to Cloud....')"
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("Send_Request_Key.jsp");
    rd.include(request, response);
%>