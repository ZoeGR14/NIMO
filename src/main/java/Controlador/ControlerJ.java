package Controlador;

import Modelo.Mantenimiento;
import Modelo.MantenimientoDAO;
import Modelo.Soporte;
import Modelo.SoporteDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@MultipartConfig
public class ControlerJ extends HttpServlet {

    MantenimientoDAO mDao = new MantenimientoDAO();
    Mantenimiento m = new Mantenimiento();
    SoporteDAO dao = new SoporteDAO();
    Soporte s = new Soporte();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sesion = request.getSession();
        String trabajadorS = "";
        String trabajadorM = "";
        if (sesion.getAttribute("ingeS") != null) {
            trabajadorS = sesion.getAttribute("ingeS").toString();
            System.out.println(trabajadorS);
        }
        if (sesion.getAttribute("ingeM") != null) {
            trabajadorM = sesion.getAttribute("ingeM").toString();
            System.out.println(trabajadorM);
        }

        String tipo = request.getParameter("tipo");
        if (tipo.equals("superUsuario")) {
            List<Soporte> listaG = dao.listar2();
            request.setAttribute("lista", listaG);
            request.getRequestDispatcher("reportessG.jsp").forward(request, response);
        } else if (tipo.equals("superUsuarioM")) {
            List<Mantenimiento> listarr2 = mDao.listarM2();
            request.setAttribute("listaM", listarr2);
            request.getRequestDispatcher("verRepManG.jsp").forward(request, response);
        } else if (tipo.equals("normal")) {
            List<Soporte> lista = dao.listar(trabajadorS);
            request.setAttribute("lista", lista);
            request.getRequestDispatcher("reportess.jsp").forward(request, response);
        } else if (tipo.equals("normalM")) {
            List<Mantenimiento> listaM = mDao.listarM(trabajadorM);
            request.setAttribute("listaM", listaM);
            request.getRequestDispatcher("verRepMan.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession sesion = request.getSession();
        String trabajadorS = "";
        String trabajadorM = "";
        if (sesion.getAttribute("ingeS") != null) {
            trabajadorS = sesion.getAttribute("ingeS").toString();
            System.out.println(trabajadorS);
        }
        if (sesion.getAttribute("ingeM") != null) {
            trabajadorM = sesion.getAttribute("ingeM").toString();
            System.out.println(trabajadorM);
        }

        String accion = request.getParameter("accion");
        switch (accion) {
            case "verTabla":
                List<Soporte> lista = dao.listar(trabajadorS);
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("reportess.jsp").forward(request, response);
                break;
            case "verTabla2":
                List<Soporte> listaG = dao.listar2();
                request.setAttribute("lista", listaG);
                request.getRequestDispatcher("reportessG.jsp").forward(request, response);
                break;
            case "verReporte":
                int id = Integer.parseInt(request.getParameter("reporte"));
                System.out.println(id);
                List<Soporte> lista2 = dao.listarReporte(id);
                request.setAttribute("lista2", lista2);
                request.getRequestDispatcher("visualizarReporte.jsp").forward(request, response);
                break;
            case "verReporte2":
                int idG = Integer.parseInt(request.getParameter("reporte"));
                System.out.println(idG);
                List<Soporte> lista2G = dao.listarReporte(idG);
                request.setAttribute("lista2", lista2G);
                request.getRequestDispatcher("visualizarReporteG.jsp").forward(request, response);
                break;
            case "resolver":
                int id2 = Integer.parseInt(request.getParameter("id_reporte"));
                String solucion = request.getParameter("solucion");
                s.setId_reporte(id2);
                s.setSolucion(solucion);
                dao.resolver(s);
                response.sendRedirect("/NIMO/ControlerJ?tipo=normal");
                break;
            case "resolver2":
                int id2G = Integer.parseInt(request.getParameter("id_reporte"));
                String solucionG = request.getParameter("solucion");
                s.setId_reporte(id2G);
                s.setSolucion(solucionG);
                dao.resolver(s);
                response.sendRedirect("/NIMO/ControlerJ?tipo=superUsuario");
                break;

            case "verTablaM":
                List<Mantenimiento> listarr = mDao.listarM(trabajadorM);
                request.setAttribute("listaM", listarr);
                request.getRequestDispatcher("verRepMan.jsp").forward(request, response);
                break;
            case "verTablaM2":
                List<Mantenimiento> listarr2 = mDao.listarM2();
                request.setAttribute("listaM", listarr2);
                request.getRequestDispatcher("verRepManG.jsp").forward(request, response);
                break;
            case "verReporteM":
                int idM = Integer.parseInt(request.getParameter("reporteM"));
                System.out.println(idM);
                List<Mantenimiento> lista2M = mDao.listarReporteM(idM);
                request.setAttribute("lista2M", lista2M);
                request.getRequestDispatcher("reportesMan.jsp").forward(request, response);
                break;
            case "verReporteM2":
                int idM2 = Integer.parseInt(request.getParameter("reporteM"));
                System.out.println(idM2);
                List<Mantenimiento> lista2M2 = mDao.listarReporteM(idM2);
                request.setAttribute("lista2M", lista2M2);
                request.getRequestDispatcher("reportesManG.jsp").forward(request, response);
                break;
            case "resolverM":
                int id2M = Integer.parseInt(request.getParameter("id_reporteM"));
                String solucionM = request.getParameter("solucionM");
                m.setId_reporte(id2M);
                m.setSolucion(solucionM);
                mDao.resolverM(m);
                response.sendRedirect("/NIMO/ControlerJ?tipo=normalM");
                break;
            case "resolverM2":
                int id2M2 = Integer.parseInt(request.getParameter("id_reporteM"));
                String solucionM2 = request.getParameter("solucionM");
                m.setId_reporte(id2M2);
                m.setSolucion(solucionM2);
                mDao.resolverM(m);
                response.sendRedirect("/NIMO/ControlerJ?tipo=superUsuarioM");
                break;
            case "cerrarReporte":
                int id3 = Integer.parseInt(request.getParameter("reporte"));
                s.setId_reporte(id3);
                dao.cerrarReporte(s);
                response.sendRedirect("/NIMO/ControlerJ?tipo=normal");
                break;
            case "cerrarReporte2":
                int id32 = Integer.parseInt(request.getParameter("reporte"));
                s.setId_reporte(id32);
                dao.cerrarReporte(s);
                response.sendRedirect("/NIMO/ControlerJ?tipo=superUsuario");
                break;
            case "cerrarReporteM":
                int id4 = Integer.parseInt(request.getParameter("reporteM"));
                m.setId_reporte(id4);
                mDao.cerrarReporteM(m);
                response.sendRedirect("/NIMO/ControlerJ?tipo=normalM");
                System.out.println("reporte bien");
                break;
            case "cerrarReporteM2":
                int id42 = Integer.parseInt(request.getParameter("reporteM"));
                m.setId_reporte(id42);
                mDao.cerrarReporteM(m);
                response.sendRedirect("/NIMO/ControlerJ?tipo=superUsuarioM");
                System.out.println("reporte bien");
                break;
        }
    }
}
