
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.DarAdop;
import Modelo.DarAdopDAO;
import Modelo.Mascota;
import Modelo.MascotaDAO;
import Modelo.Nota;
import Modelo.NotaDAO;
import Modelo.Usuario;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author alumno
 */
@MultipartConfig
public class Controler extends HttpServlet {

    MascotaDAO dao = new MascotaDAO();
    Mascota m = new Mascota();
    Nota n = new Nota();
    NotaDAO nDAO = new NotaDAO();
    DarAdop d = new DarAdop();
    DarAdopDAO dDAO = new DarAdopDAO();

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
        request.setCharacterEncoding("UTF-8");
        HttpSession sesion = request.getSession();
        String usuario = "";
        if (sesion.getAttribute("user") != null && sesion.getAttribute("tipo_usuario") != null) {
            usuario = sesion.getAttribute("user").toString();
        }
        String visualizar = request.getParameter("visualizar");
        switch (visualizar) {
            case "mascotas":
                List<Mascota> lista = dao.listar(usuario);
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("visualizarMascota.jsp").forward(request, response);
                break;
            case "notas":
                List<Nota> lista2 = nDAO.listar(usuario);
                request.setAttribute("lista2", lista2);
                request.getRequestDispatcher("visualizarNotas.jsp").forward(request, response);
                break;
            case "adopciones":
                List<Mascota> lista3 = dao.listarN(usuario);
                request.setAttribute("listita", lista3);
                System.out.println("Todo bien");
                System.out.println(lista3);
                request.getRequestDispatcher("darAdop.jsp").forward(request, response);
                break;
            case "verAdop":
                List<Mascota> listarAdopcion = dao.listarAdopcion(usuario);
                request.setAttribute("listarAdopcion", listarAdopcion);
                System.out.println("Todo bien w fasilidades");
                System.out.println(listarAdopcion);
                request.getRequestDispatcher("desplegarAdopcion.jsp").forward(request, response);
                break;
            case "vAU":
                List<Mascota> listaAd = dao.listarAdoptados(usuario);
                List<Usuario> listaUs = dao.listarAdoptadosU(usuario);
                request.setAttribute("listaAdoptar", listaAd);
                request.setAttribute("listaContacto", listaUs);
                request.getRequestDispatcher("verAdopciones.jsp").forward(request, response);

        }
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
        request.setCharacterEncoding("UTF-8");
        HttpSession sesion = request.getSession();
        String usuario = "";

        if (sesion.getAttribute("user") != null && sesion.getAttribute("tipo_usuario") != null) {
            usuario = sesion.getAttribute("user").toString();
        }
        String accion = request.getParameter("accion");
        switch (accion) {
            case "Visualizar mis mascotas":
                List<Mascota> lista = dao.listar(usuario);
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("visualizarMascota.jsp").forward(request, response);
                break;
            case "editarMascota":
                int idEditado = Integer.parseInt(request.getParameter("edit"));
                System.out.println("Id: " + idEditado);
                List<Mascota> infoMasc = dao.listarEditado(idEditado);
                request.setAttribute("infoMasc", infoMasc);
                request.getRequestDispatcher("editarMascota.jsp").forward(request, response);
                break;
            case "editarFoto":
                int idEditadoF = Integer.parseInt(request.getParameter("edit"));
                System.out.println("Id: " + idEditadoF);
                List<Mascota> fotoMasc = dao.listarEditado(idEditadoF);
                request.setAttribute("fotoMasc", fotoMasc);
                request.getRequestDispatcher("editarFotoMasc.jsp").forward(request, response);
                break;
            case "eliminarMascota":
                int idEliminado = Integer.parseInt(request.getParameter("delete"));
                dao.eliminar(idEliminado);
                response.sendRedirect("/NIMO/Controler?visualizar=mascotas");
                break;
            case "Dar adopcion":
                List<Mascota> listita = dao.listar(usuario);
                request.setAttribute("listita", listita);
                request.getRequestDispatcher("darAdop.jsp").forward(request, response);
                break;
            case "Añadir nueva mascota":
                request.getRequestDispatcher("nuevaMascota.jsp").forward(request, response);
                break;
            case "Añadir":
                String nombre = request.getParameter("nombreMasc");
                String nacim = request.getParameter("nacimMasc");
                String sexo = request.getParameter("radioSexo");
                String tipoAnimal = request.getParameter("selectAnimal");
                String raza = request.getParameter("radioRaza");
                String tipoRaza = request.getParameter("tipoRaza");
                String color = request.getParameter("selectColor");
                int peso = 0;
                boolean isNumeric = false;
                try {
                    peso = Integer.parseInt(request.getParameter("pesoMasc"));
                    isNumeric = true;
                } catch (Exception e) {
                    isNumeric = false;
                }
                String alergias = request.getParameter("radioAlergias");
                String gustos = request.getParameter("gustosMasc");
                String disgustos = request.getParameter("disgustosMasc");
                Part part = request.getPart("fileFoto");

                if (sexo != null && raza != null && alergias != null && part.getSize() != 0 && isNumeric == true && peso != 0) {
                    InputStream inputStream = part.getInputStream();
                    m.setNombre(nombre);
                    m.setNacimMasc(nacim);
                    m.setSexo(sexo);
                    m.setTipoAnimal(tipoAnimal);
                    m.setRaza(raza);
                    m.setTipoRaza(tipoRaza);
                    m.setColor(color);
                    m.setPeso(peso);
                    m.setAlergias(alergias);
                    m.setGustos(gustos);
                    m.setDisgustos(disgustos);
                    m.setFoto(inputStream);
                    m.setIdDuenio(usuario);
                    dao.agregar(m);
                    dao.agregarUnion(usuario);
                    response.sendRedirect("Controler?visualizar=mascotas");
                } else {
                    request.setAttribute("validacion", "nO");
                    request.getRequestDispatcher("nuevaMascota.jsp").forward(request, response);
                }
                System.out.println("Controler bien");
                break;
            case "Editar":
                idEditado = Integer.parseInt(request.getParameter("idEditado"));
                nombre = request.getParameter("nombreMasc");
                nacim = request.getParameter("nacimMasc");
                sexo = request.getParameter("radioSexo");
                tipoAnimal = request.getParameter("selectAnimal");
                raza = request.getParameter("radioRaza");
                tipoRaza = request.getParameter("tipoRaza");
                color = request.getParameter("selectColor");
                peso = Integer.parseInt(request.getParameter("pesoMasc"));
                alergias = request.getParameter("radioAlergias");
                gustos = request.getParameter("gustosMasc");
                disgustos = request.getParameter("disgustosMasc");
//                part = request.getPart("fileFoto");

                if (sexo != null && raza != null && alergias != null) {
                    m.setNombre(nombre);
                    m.setNacimMasc(nacim);
                    m.setSexo(sexo);
                    m.setTipoAnimal(tipoAnimal);
                    m.setRaza(raza);
                    m.setTipoRaza(tipoRaza);
                    m.setColor(color);
                    m.setPeso(peso);
                    m.setAlergias(alergias);
                    m.setGustos(gustos);
                    m.setDisgustos(disgustos);
//                    m.setFoto(inputStream);
                    m.setIdDuenio(usuario);
                    dao.editar(m, idEditado);
                    request.setAttribute("aprobacionMascota", "si");
                    request.getRequestDispatcher("editarMascota.jsp").forward(request, response);
                } else {
                    request.setAttribute("aprobacionMascota", "no");
                    request.getRequestDispatcher("editarMascota.jsp").forward(request, response);
                }
                System.out.println("Controler bien");
                break;
            case "Editar Foto":
                idEditado = Integer.parseInt(request.getParameter("idEditado"));
                part = request.getPart("fileFoto");
                InputStream inputStream = part.getInputStream();
                m.setFoto(inputStream);
                dao.editarFoto(m, idEditado);
                request.setAttribute("aprobacionMascota", "si");
                request.getRequestDispatcher("editarFotoMasc.jsp").forward(request, response);
//                response.sendRedirect("/NIMO/Controler?visualizar=mascotas");
                break;
            case "✔":
                String nota = request.getParameter("nota");
                nota = nota.replaceAll("\\r\\n|\\r|\\n", "<br>");
                System.out.println(nota);
                n.setContenido(nota);

                nDAO.agregar(n);
                nDAO.agregarUnion(usuario);
                /*
                request.setAttribute("aprovacionNota", "si");
                request.getRequestDispatcher("Controler?accion=Visualizar mis notas").forward(request, response);*/
                response.sendRedirect("/NIMO/Controler?visualizar=notas");
                break;
            case "Visualizar mis notas":
                List<Nota> lista2 = nDAO.listar(usuario);
                request.setAttribute("lista2", lista2);
                request.getRequestDispatcher("visualizarNotas.jsp").forward(request, response);
                break;
            case "Visualizar mi papelera":
                List<Nota> lista3 = nDAO.listar(usuario);
                request.setAttribute("lista3", lista3);
                request.getRequestDispatcher("papelera.jsp").forward(request, response);
                break;
            case "editNote":
                int id = Integer.parseInt(request.getParameter("editar"));
                System.out.println(id);
                request.setAttribute("idNota", id);
                request.getRequestDispatcher("editarNota.jsp").forward(request, response);
                break;
            case "removeNote":
                int id2 = Integer.parseInt(request.getParameter("borrar"));
                n.setId(id2);
                nDAO.editar(n, 2);
                request.getRequestDispatcher("Controler?accion=Visualizar mis notas").forward(request, response);
                break;
            case "revertNote":
                int id3 = Integer.parseInt(request.getParameter("deshacer"));
                n.setId(id3);
                nDAO.editar(n, 3);
                request.getRequestDispatcher("Controler?accion=Visualizar mi papelera").forward(request, response);
                break;
            case "removeCompletelyNote":
                int id4 = Integer.parseInt(request.getParameter("borrar"));
                n.setId(id4);
                nDAO.eliminar(n);
                request.getRequestDispatcher("Controler?accion=Visualizar mi papelera").forward(request, response);
                break;
            case "editarNota":
                int id5 = Integer.parseInt(request.getParameter("id2"));
                String contenido2 = request.getParameter("nota");
                contenido2 = contenido2.replaceAll("\\r\\n|\\r|\\n", "<br>");
                n.setId(id5);
                n.setContenido(contenido2);
                nDAO.editar(n, 1);
//                request.setAttribute("aprovacionNota", "si");
//                request.getRequestDispatcher("editarNota.jsp").forward(request, response);
                response.sendRedirect("/NIMO/Controler?visualizar=notas");
                break;

            case "zoeguapote":
                String historia = request.getParameter("historia");
                String salud = request.getParameter("salud");
                String ubicacion = request.getParameter("ubicacion");
                String mascota = request.getParameter("mascota");
                m.setHistoria(historia);
                m.setSalud(salud);
                m.setUbicacion(ubicacion);
                m.setMascota(mascota);
                dao.agregarDAP(m);
                dao.agregarUnionDAP(Integer.parseInt(mascota));
                dao.cambiarEstadoDAP(mascota);
                System.out.println(d.getMascota());
                request.getRequestDispatcher("adopciones.html").forward(request, response);
                break;
            case "adoptar":
                int idAdop = Integer.parseInt(request.getParameter("adopp"));
                System.out.println(idAdop);
                request.setAttribute("adopp", idAdop);
                request.getRequestDispatcher("QuieroAdop.jsp").forward(request, response);
                break;
            case "enviarFormulario":
                String[] radios = new String[4];
                for (int i = 0; i < radios.length; i++) {
                    if (i == 0) {
                        radios[i] = request.getParameter("radio");
                    } else {
                        radios[i] = request.getParameter("radio" + i);
                    }
                }
                String razonAdop = request.getParameter("razonAdop");
                String personas = request.getParameter("personas");
                String niños = request.getParameter("niños");
                String viaje = request.getParameter("viaje");
                String tiempo = request.getParameter("tiempo");
                int mascotita = Integer.parseInt(request.getParameter("envio"));

                m.setP1(razonAdop);
                m.setP2(radios[0]);
                m.setP3(radios[1]);
                m.setP4(personas);
                m.setP5(radios[2]);
                m.setP6(niños);
                m.setP7(viaje);
                m.setP8(radios[3]);
                m.setP9(tiempo);
                dao.enviarFormulario(m);
                dao.agregarUnionAdoptar(mascotita, usuario);
                response.sendRedirect("Controler?visualizar=verAdop");
                break;
            case "adopciones_usu":
                
            default:
                request.getRequestDispatcher("Controler?accion=Visualizar mis mascotas").forward(request, response);
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
