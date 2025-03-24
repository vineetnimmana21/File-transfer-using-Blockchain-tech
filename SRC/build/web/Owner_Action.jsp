<%@page import="dbServices.DB"%>
<%@page import="java.sql.*"%>
<%
    String ref=request.getParameter("ref");
    Connection con=new DB().fun();
    if(ref.equalsIgnoreCase("owner")){
        String id=request.getParameter("id");
        String oname=request.getParameter("oname");
        PreparedStatement p=con.prepareStatement("update owner_register set status='Authorized' where id='"+id+"' and username='"+oname+"' ");
        p.executeUpdate();
        out.println("<script>"
                +"alert('Authorized Successfully..')"
                +"</script>");
        RequestDispatcher rd=request.getRequestDispatcher("Authorize_Owner.jsp");
        rd.include(request, response);
    }
    if(ref.equalsIgnoreCase("user")){
        String id=request.getParameter("id");
        String oname=request.getParameter("oname");
        PreparedStatement p=con.prepareStatement("update accessor_register set status='Authorized' where id='"+id+"' and username='"+oname+"' ");
        p.executeUpdate();
        out.println("<script>"
                +"alert('Authorized Successfully..')"
                +"</script>");
        RequestDispatcher rd=request.getRequestDispatcher("Authorize_Accessor.jsp");
        rd.include(request, response);
    }
%>