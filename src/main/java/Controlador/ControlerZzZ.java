/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Gerente;
import Modelo.GerenteDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Zoe GR
 */
public class ControlerZzZ extends HttpServlet {

    Gerente g = new Gerente();
    GerenteDAO gDAO = new GerenteDAO();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controler2</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controler2 at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        List<Gerente> lista = gDAO.listar3();
        request.setAttribute("lista2", lista);
        request.getRequestDispatcher("reportesMantenimientoG.jsp").forward(request, response);
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
        String accion = request.getParameter("accion");
        switch (accion) {
            case "Aceptar":
                String estatus = request.getParameter("estatus");
                String encargado = request.getParameter("asignar");
                int id = Integer.parseInt(request.getParameter("aceptar"));
                g.setEstatus(estatus);
                g.setAsignado(encargado);
                gDAO.agregar(g, id);
                response.sendRedirect("ControlerZzZ");
                break;

            case "Gerente":
                int id2 = Integer.parseInt(request.getParameter("directo"));
                g.setEstatus("Mantenimiento Finalizado");
                g.setId(id2);
                gDAO.agregarSoporte(g, id2);
                response.sendRedirect("ControlerZzZ");
                break;
            case "Ver Tabla":
                List<Gerente> lista2 = gDAO.listar3();
                request.setAttribute("lista2", lista2);
                request.getRequestDispatcher("reportesMantenimientoG.jsp").forward(request, response);
                break;
        }
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
