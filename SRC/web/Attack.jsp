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
           String id=request.getParameter("id");
           String name=request.getParameter("oname");
           String filename=request.getParameter("fname");
           String jspPath = session.getServletContext().getRealPath("/res");
            String txtFilePath = "C://files//"+filename;           
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
        <form action="hack.jsp">
        <input type="hidden" name="fname" value="<%=filename%>">
        <input type="hidden" name="name" value="<%=name%>">
        <textarea rows="15" cols="40" style="width:600px;height: 250px;"><%=book%></textarea><br><br>
        <input type="submit" value="Attack">
        </form>
        <h2><a href="Attack_Files.jsp">Go Back</a></h2>
    </center>
    </body>
</html>
