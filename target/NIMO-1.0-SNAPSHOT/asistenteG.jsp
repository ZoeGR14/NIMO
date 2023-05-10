<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Asistente Menú</title>

    </head>
    <body>
        <%
            HttpSession sesion = request.getSession();
            String usuario;
            String tipo;

            if (sesion.getAttribute("user") != null && sesion.getAttribute("tipo_usuario") != null) {
                usuario = sesion.getAttribute("user").toString();
                tipo = sesion.getAttribute("tipo_usuario").toString();

        %>

        <link rel="stylesheet" href="headerStyle.css">
        <header class="headersito" id="header">
            <a href="cierreSesion.jsp" class="logoin">
                <img src="imagenes/logo_nimo.png" alt="" class="logoni" draggable="false">
            </a>
            <ul class="nav">

                <a href="cierreSesion.jsp" class="">Cerrar Sesión</a>
            </ul>
        </header>


        <link rel="stylesheet" href="styleAsistente.css">
        <section id="explorar" class="explore">

            <div class="ini_acci" id="ini_acci">

                <div class="margensito" style="margin-top: 70px; align-content: center; justify-content: center;">
                    <center><h5>LEVANTAR REPORTE</h5></center>

                    <center>
                        <button class="bot-mag" style="font-size: 20px;" id="btn-abrir-modal">
                            <span class="botmag_text">
                                Búsqueda de usuario
                            </span>
                            <img src="imagenes/carita_6.png" alt="" class="botmag_img1">
                            <img src="imagenes/carita_3.png" alt="" class="botmag_img2">
                            <img src="imagenes/carita_4.png" alt="" class="botmag_img3">
                            <img src="imagenes/carita_7.png" alt="" class="botmag_img4">
                        </button>

                        <dialog id="modal">
                            <form action="verificarUsuarioG.jsp" method="post" name="buscarUsu">
                                <h3>Ingrese el usuario a verificar para un reporte</h3>
                                <input type="text" placeholder="Usuario" name="usuario" id="campito" required autofocus>
                                &nbsp;&nbsp;
                                <button type="submit" name="verificando" id="btn-enviar-modal">Verificar</button>

                            </form>
                            <br><br>
                            <button id="btn-cerrar-modal" onclick="limpiar()">Cancelar</button>
                        </dialog>
                    </center>
                    <script>
                        const btnAbrirModal = document.querySelector("#btn-abrir-modal");

                        const btnCerrarModal = document.querySelector("#btn-cerrar-modal");

                        const modal = document.querySelector("#modal");

                        modal.showModal();
                        btnAbrirModal.addEventListener("click", () => {
                            modal.showModal();
                        });

                        btnCerrarModal.addEventListener("click", () => {
                            modal.close();
                        });


                    </script>
                    <br><br><br>
                    <center><h5>CONSULTA DE REPORTES</h5></center>
                    <br>
                    <center><a href="estatusReportes.jsp" class="bot-mag">
                            <span class="botmag_text">
                                Estatus de Reportes
                            </span>
                            <img src="imagenes/carita_6.png" alt="" class="botmag_img1">
                            <img src="imagenes/carita_3.png" alt="" class="botmag_img2">
                            <img src="imagenes/carita_4.png" alt="" class="botmag_img3">
                            <img src="imagenes/carita_7.png" alt="" class="botmag_img4">
                        </a></center>
                </div>        

            </div>
        </section>
        <%            } else {
                out.print("<script>location.replace('inicioSPersonal.html');</script>");
            }
        %>
    </body>
</html>

