<%-- 
    Document   : attack
    Created on : Oct 23, 2019, 7:44:41 PM
    Author     : welcome
--%>

<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="dbServices.DB"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%           
        String uid=(String)session.getAttribute("uid");
         String mail=(String)session.getAttribute("email");
        String uname=(String)session.getAttribute("username");
           String filename=request.getParameter("fname");
           String fkey=request.getParameter("fkey");
           String diseases=request.getParameter("diseases");
           String symtoms=request.getParameter("symptoms");
           String jspPath = session.getServletContext().getRealPath("/res");
            String txtFilePath = "C://blockchain//block1//block2//"+filename;           
            BufferedReader reader = new BufferedReader(new FileReader(txtFilePath));
            StringBuilder sb = new StringBuilder();
            String line;
            while((line = reader.readLine())!= null){
                 sb.append(line+"\n");
                }
            String book=sb.toString();
			
           
       %>
    <center>
        <h3><%=filename%></h3>
        <form action="Send_Decrypt_Key.jsp">
        <input type="hidden" name="fname" value="<%=filename%>">
        <input type="hidden" name="fkey" value="<%=fkey%>">
        <input type="hidden" name="uid" value="<%=uid%>">
        <input type="hidden" name="mail" value="<%=mail%>">
        <input type="hidden" name="uname" value="<%=uname%>">
        <textarea rows="15" cols="40" style="width:600px;height: 250px;"><%=book%></textarea><br><br>
        <input type="submit" value="Send Decrypt Key Request">
        </form>
        <h2><a href="View_Files.jsp">Go Back</a></h2>
    </center>
    </body>
</html>
