package pack;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class Login_Action extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String username=request.getParameter("username");
        String password=request.getParameter("pass");
        PrintWriter out = response.getWriter();
        try {
            if(username.equalsIgnoreCase("ta")&&password.equalsIgnoreCase("ta")){
                 out.println("<script>"
                        +"alert('Welcome Trust Authority')"
                        +"</script>");
                RequestDispatcher rd=request.getRequestDispatcher("TA_Home.jsp");
                rd.include(request, response);
            }
            else if(username.equalsIgnoreCase("cloud")&&password.equalsIgnoreCase("cloud")){
                 out.println("<script>"
                        +"alert('Welcome Cloud Service Provider')"
                        +"</script>");
                RequestDispatcher rd=request.getRequestDispatcher("Cloud_Home.jsp");
                rd.include(request, response);
            }
            else if(username.equalsIgnoreCase("admin")&&password.equalsIgnoreCase("admin")){
                 out.println("<script>"
                        +"alert('Welcome Admin')"
                        +"</script>");
                RequestDispatcher rd=request.getRequestDispatcher("Co_Owner_Home.jsp");
                rd.include(request, response);
            }
            else if(username.equalsIgnoreCase("disseminator")&&password.equalsIgnoreCase("disseminator")){
                 out.println("<script>"
                        +"alert('Welcome Data Disseminator')"
                        +"</script>");
                RequestDispatcher rd=request.getRequestDispatcher("Disseminator_Home.jsp");
                rd.include(request, response);
            }
            else if(username.equalsIgnoreCase("attacker")&&password.equalsIgnoreCase("attacker")){
                 out.println("<script>"
                        +"alert('Welcome Attacker')"
                        +"</script>");
                RequestDispatcher rd=request.getRequestDispatcher("Attacker_Home.jsp");
                rd.include(request, response);
            }
            else if(username.equalsIgnoreCase("network1")&&password.equalsIgnoreCase("network1")){
                out.println("<script>"
                        +"alert('Welcome Network 1')"
                        +"</script>"
                         );
                 RequestDispatcher rd=request.getRequestDispatcher("n1home.jsp");
                rd.include(request, response);
            }
            else if(username.equalsIgnoreCase("network2")&&password.equalsIgnoreCase("network2")){
                out.println("<script>"
                        +"alert('Welcome Network2')"
                        +"</script>"
                         );
                           RequestDispatcher rd=request.getRequestDispatcher("n2home.jsp");
                rd.include(request, response);
                
               
            }
            else{
                out.println("<script>"
                        +"alert('Invalid Login')"
                        +"</script>");
                RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
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
