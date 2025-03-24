<%
    String fname=request.getParameter("fname");
    String fkey=request.getParameter("fkey");
    String skey=request.getParameter("skey");
    try{
    if(skey.equalsIgnoreCase(fkey)){
              String filepath = "C:\\blockchain\\";   
            response.setContentType("APPLICATION/OCTET-STREAM");   
            response.setHeader("Content-Disposition","attachment; filename=\"" + fname + "\"");   

            java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + fname);  

            int i;   
            while ((i=fileInputStream.read()) != -1) {  
              out.write(i);   
            }   
            fileInputStream.close();   
            RequestDispatcher rd=request.getRequestDispatcher("Download.jsp");
            rd.include(request, response);
          }
        else{
            out.println("<script>"
				+"alert('Wrong Key.....')"
				+"</script>");
            RequestDispatcher rd=request.getRequestDispatcher("Download_Files.jsp");
            rd.include(request, response);
        }
    }
    catch(Exception e){
        
    }
%>