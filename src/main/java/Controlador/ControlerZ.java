/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Gerente;
import Modelo.GerenteDAO;
import Modelo.Mantenimiento;
import Modelo.MantenimientoDAO;
import Modelo.Soporte;
import Modelo.SoporteDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ControlerZ extends HttpServlet {

    Gerente g = new Gerente();
    GerenteDAO gDAO = new GerenteDAO();
    SoporteDAO dao = new SoporteDAO();
    Soporte s = new Soporte();
    Mantenimiento m = new Mantenimiento();
    MantenimientoDAO mDAO = new MantenimientoDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controler</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controler at " + request.getContextPath() + "</h1>");
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
        List<Gerente> lista = gDAO.listar();
        request.setAttribute("lista", lista);
        request.getRequestDispatcher("reportes.jsp").forward(request, response);
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
        HttpSession sesion = request.getSession();
        String trabajador = sesion.getAttribute("gerenteS").toString();
        System.out.println(trabajador);
        String accion = request.getParameter("accion");
        switch (accion) {
            case "Aceptar":
                String estatus = request.getParameter("estatus");
                System.out.println(estatus);
                String encargado = request.getParameter("asignar");
                System.out.println(encargado);
                int id = Integer.parseInt(request.getParameter("aceptar"));
                g.setEstatus(estatus);
                g.setAsignado(encargado);

                gDAO.agregar(g, id);
                gDAO.agregarGerenteEncargado(id, encargado);
                response.sendRedirect("ControlerZ");
                break;
            case "AceptarA":
                String estatus3 = request.getParameter("estatus");
                String encargado3 = request.getParameter("asignar");
                sesion.setAttribute("gerenteSM", trabajador);
                int id3 = Integer.parseInt(request.getParameter("aceptar"));

                System.out.println("Stat: " + estatus3 + ", Encargado: " + encargado3 + "id: " + id3 + " trabajador: " + trabajador);
                g.setEstatus(estatus3);
                g.setAsignado(encargado3);
                g.setGerenteM(trabajador);

                System.out.println(g.getGerenteM());

                gDAO.agregar(g, id3);
                response.sendRedirect("ControlerZ");
                break;
            case "Gerente":
                int id4 = Integer.parseInt(request.getParameter("directo"));
                sesion.setAttribute("gerenteSM", "");
                g.setEstatus("Mantenimiento Finalizado");
                g.setId(id4);
                gDAO.agregarSoporte(g, id4);
                response.sendRedirect("ControlerZ");
                break;
            case "Aceptar2":
                String estatus2 = request.getParameter("estatus");
                int id2 = Integer.parseInt(request.getParameter("aceptar"));
                System.out.println("Estatus: " + estatus2);
                System.out.println("ID: " + id2);
                System.out.println("Trabajador: " + trabajador);
                g.setEstatus(estatus2);
                g.setAsignado(trabajador);

                gDAO.agregar(g, id2);
                gDAO.agregarGerenteEncargado(id2, trabajador);
                response.sendRedirect("ControlerZ");
                break;
            case "Aceptar2A":
                String estatus4 = request.getParameter("estatus");
                int id7 = Integer.parseInt(request.getParameter("aceptar"));
                System.out.println("Estatus: " + estatus4);
                System.out.println("ID: " + id7);
                System.out.println("Trabajador: " + trabajador);
                g.setEstatus(estatus4);
                g.setAsignado(trabajador);

                gDAO.agregar(g, id7);
                gDAO.agregarGerenteEncargado(id7, trabajador);
                response.sendRedirect("ControlerZ");
                break;
            case "Levantar Reporte":
                sesion.setAttribute("user", trabajador);
                System.out.println(trabajador);
                request.getRequestDispatcher("asistenteG.jsp").forward(request, response);
                break;
            case "Ver Tabla":
                List<Gerente> lista = gDAO.listar();
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("reportes.jsp").forward(request, response);
                break;
            default:
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
