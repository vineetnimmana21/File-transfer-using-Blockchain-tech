/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import algorithm.CipherHelper;
import cloud.SimpleFTPClient;
import dbServices.DB;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
public class Upload extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html;charset=UTF-8");
        List<String> ms = new ArrayList<String>();
        double hash=0;
         HttpSession session=request.getSession();
	        String finalimage = "";
	        boolean isMultipart = ServletFileUpload.isMultipartContent(request);
	        List<String> m = new ArrayList<String>();
	        File savedFile;
	       
	        if (!isMultipart) 
	        {
	        	
	            System.out.println("File Not Uploaded");
	        } 
	        else 
	        {
	            FileItemFactory factory = new DiskFileItemFactory();
	            ServletFileUpload upload = new ServletFileUpload(factory);
	            List items = null;

	            try 
	            {
	                items = upload.parseRequest(request);
	                
	            } 
	           	catch (FileUploadException e)
	           	{
	                e.printStackTrace();
	            }
	            Iterator itr = items.iterator();
	            while (itr.hasNext()) {
	                List<String> al = new ArrayList<String>();

	                String sss = "";
	                FileItem item = (FileItem) itr.next();
	                String value = "";
	                String a[];
	                if (item.isFormField()) 
	                {
	                    String name = item.getFieldName();
	                    value = item.getString();
	                    al.add(value);
	                    for (int i = 0; i < al.size(); i++) 
	                    {
	                        sss += al.get(i);
	                        System.out.println("is this image" + sss);  
	                    }

	                    a = sss.split("-");
	                    for (int i = 0; i < a.length; i++) {

	                        String am = a[i];
	                        System.out.println("aaaaaaaaaaaaaaaa" + a[i]);
	                        m.add(a[i]);
	                    }
	                } 
	                else
	                {
	                	String itemName = item.getName();
	                

	                    String reg = "[.*]";
	                    String replacingtext = "";
	                    
	                    Pattern pattern = Pattern.compile(reg);
	                    Matcher matcher = pattern.matcher(itemName);
	                    StringBuffer buffer = new StringBuffer();

	                    while (matcher.find()) 
	                    {
	                        matcher.appendReplacement(buffer, replacingtext);
	                    }
	                    int IndexOf = itemName.indexOf(".");
	                    int Indexf = itemName.indexOf(".");
	                    String domainName = itemName.substring(IndexOf);
	                    finalimage = buffer.toString() + domainName;
	                    System.out.println("Final Image===" + finalimage);
	                    ms.add(finalimage);
	                    ms.get(0);
	                  String  fn=ms.get(0);
	                  System.out.println("trying to put all in store");
	                    savedFile = new File("C:\\blockchain\\"+ finalimage);
                            hash=savedFile.hashCode();
	                  String a0=request.getParameter(value);
	                    try 
	                    {
				item.write(savedFile);
                                  CipherHelper c= new CipherHelper();	
                    BufferedReader br= null;
                    
                    String sCurrentLine;
                    StringBuilder b= new StringBuilder();       
                    StringBuilder bb= new StringBuilder(); 
                    br = new BufferedReader(new FileReader("C:\\blockchain\\" + finalimage));
                    while ((sCurrentLine = br.readLine()) != null) 
                    {    
                         bb.append(sCurrentLine);
                         String myAppContext = sCurrentLine;
                    }
                    String rep = bb.toString().replaceAll("( )+", " ");
                    String content=rep;
                    String enc=c.cipher("12345678",content);                      
                    String renc=c.cipher("12345678",enc);
                    PrintWriter writer = new PrintWriter("C:\\blockchain\\block1\\"+finalimage, "UTF-8");
                    writer.println(enc);
                    writer.close(); 
                    PrintWriter writer1 = new PrintWriter("C:\\blockchain\\block1\\block2\\"+finalimage, "UTF-8");
                    writer1.println(renc);
                    writer1.close();                       
						}
                            catch(Exception e){
                                
                            }
                            try
                            {
                            SimpleFTPClient client=new SimpleFTPClient();
                                 client.setHost("ftp.drivehq.com");
	                    	client.setUser("davidmesiya");
	                    	client.setPassword("jesusdavidmesiya");
	                    	client.setRemoteFile(finalimage);
	                    	boolean log= client.connect(); 
	                    	if(log)
	                    	{  
	                	    try 
	                            {
	                            	System.out.println("this is log true block");
	                            	FileOutputStream fos = new FileOutputStream(new  File(item.getName()));
	                            	byte b[] = new byte[1024];
	                            	int c=0;
	                            	InputStream is = item.getInputStream();
	                            	while((c=is.read(b)) != 0)
	                            	{	
	                            		fos.write(b, 0, c);
	                            	}
	                            	fos.close();                	    	
	                            }
	                	    	catch(Exception e){
	                            System.out.println("this is log false block    "+e);
	                            }
	                        	PrintWriter out=response.getWriter();
	                            if (client.uploadFile(new File(item.getName())))
	                            {
	                                System.out.println("This is a true block");
	                                
	                            }
	                    	}
	                    } 
	                    catch (Exception e) 
	                    {
							e.printStackTrace();
						}
	                   
	                }
	            }
	        
	        }
		try 
		{
                    Connection con=new DB().fun();
                    PreparedStatement query=con.prepareStatement("insert into upload(oid,oname,ekey,skey,pname,ip,page,symtoms,diseases,fkey,date,network,node,fname,hash)values ('"+m.get(0)+"','"+m.get(1)+"','"+m.get(2)+"','"+m.get(3)+"','"+m.get(4)+"','"+m.get(5)+"','"+m.get(6)+"','"+m.get(7)+"','"+m.get(8)+"','"+m.get(9)+"','"+m.get(10)+"','"+m.get(11)+"','"+m.get(12)+"','"+ms.get(0)+"','"+hash+"')");
			                 System.out.println(query);
                                         
                             session.setAttribute("filename",ms.get(0));              
                                         
                    query.executeUpdate();
			System.out.println("Success");
			
			PrintWriter out = response.getWriter();
			out.println("<script>"); 			
			out.println("alert(\"Succesfully Upload\")");

			out.println("</script>");
			
			RequestDispatcher rd=request.getRequestDispatcher("upload1.jsp");
			rd.include(request,response);		
		}
                catch(Exception e){
                    
                }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
