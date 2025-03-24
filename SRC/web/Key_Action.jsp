<%@page import="algorithm.CipherHelper"%>
<%@page import="java.util.Random"%>
<%@page import="dbServices.DB"%>
<%@page import="java.sql.*"%>
<%
    String oid=request.getParameter("id");
    String oname=request.getParameter("oname");
    Random r = new Random(); 
    String xyz = Integer.toString(r.nextInt(100000)); 
    CipherHelper c=new CipherHelper();
    String ekey=c.cipher("12345678", xyz);
    Connection con=new DB().fun();
    PreparedStatement p=con.prepareStatement("insert into key_request(oid,oname,ekey,skey)values('"+oid+"','"+oname+"','"+xyz+"','"+ekey+"')");
    p.executeUpdate();
    PreparedStatement p1=con.prepareStatement("update owner_register set estatus='Accepted',sstatus='Accepted' where id='"+oid+"' and username='"+oname+"' ");
    p1.executeUpdate();
    out.println("<script>"
            +"alert('Key Request Accepted..')"
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("Generate_Owner_Key.jsp");
    rd.include(request, response);
%>