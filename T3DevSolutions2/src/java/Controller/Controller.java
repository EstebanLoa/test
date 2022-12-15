
package Controller;

import Model.Productos;
import Model.Usuarios;
import ModelDAO.ModelosDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Controller extends HttpServlet {
    String addProduct = "Jsps/addProducts.jsp";
    String updateProducts="Jsps/updateProducts.jsp";
    Productos product = new Productos();
    Usuarios user = new Usuarios();
    ModelosDAO productDAO = new ModelosDAO();
  

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controladorr</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controladorr at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String access = "";
        String acction = request.getParameter("accion");
        switch(acction){
            case "addProducts":{
                access = addProduct;
            }
            break;
            case "Ver":{
                
            }
            break;

            case "Actualizar":{
                access = updateProducts;
            }
            break;
            case "deleteProduct":{
                
            }
            break;
        }
        RequestDispatcher view = request.getRequestDispatcher(access);
        view.forward(request, response);
    }
   

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
