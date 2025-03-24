<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="dbServices.DB"%>
<%@page import="java.sql.*"%>
 <!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<% 
         String file =(String)session.getAttribute("filename");
          String jspPath = session.getServletContext().getRealPath("/res");
            String txtFilePath = "C://files//enc//"+file;           
            BufferedReader reader = new BufferedReader(new FileReader(txtFilePath));
            StringBuilder sb = new StringBuilder();
            String line;
            while((line = reader.readLine())!= null){
                 sb.append(line+"\n");
                }
            String book=sb.toString();
			
           
       %>
    <center>
        <form action="Upload_Files.jsp">
        <input type="hidden" name="fname" value="<%=file%>">
        <textarea rows="15" cols="40" style="width:600px;height: 250px;"><%=book%></textarea><br><br>
        <input type="submit" value="upload">
        </form>
    </center>
            </body>
</html>
