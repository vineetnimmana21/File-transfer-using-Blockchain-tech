/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import dbServices.DB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author welcome
 */
public class Accessor_Login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String username=request.getParameter("username");
        String password=request.getParameter("pass");
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession();
        try{
            Connection con=new DB().fun();
            PreparedStatement p=con.prepareStatement("select * from accessor_register where username='"+username+"' and password='"+password+"' and status='Authorized' ");
            ResultSet r=p.executeQuery();
            if(r.next()){
                String uid=r.getString("id");
                String dob=r.getString("dob");
                String email=r.getString("mail");
                String pic=r.getString("pic");
                session.setAttribute("username",username);
                session.setAttribute("uid",uid);
                session.setAttribute("dob",dob);
                session.setAttribute("email",email);
                session.setAttribute("pic", pic);
                out.println("<script>"
                        +"alert('Welcome "+username+"')"
                        +"</script>");
                RequestDispatcher rd=request.getRequestDispatcher("User_Home.jsp");
                rd.include(request, response);
            }
            else{
                out.println("<script>"
                        +"alert('Invalid Login')"
                        +"</script>");
                RequestDispatcher rd=request.getRequestDispatcher("Data_Accessor.jsp");
                rd.include(request, response);
            }
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
