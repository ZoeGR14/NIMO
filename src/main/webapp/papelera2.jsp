<%-- 
    Document   : visualizarNotas
    Created on : 15 mar 2023, 08:23:07
    Author     : alumno
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <title>Papelera</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>

        </style>
        <link rel="stylesheet" href="estilos.css" type="text/css">
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </head>
    <body>
        <nav>
            <link rel="stylesheet" href="menu.css">
            <input type="checkbox" id="check">
            <label for="check" class="checkbtn">
                <i class="menu-icon"> <img src="imagenes\menuicon.png"> </i>
            </label>
            <a href="index.html" class="enlace">
                <img src="imagenes/logo_nimo.png" alt="" class="logo">
            </a>
            <ul class="bot_acc">
                    <li><a href="inicio.jsp" class="inicio">Inicio</a></li>
                    <li><a href="/NIMO/Controler?visualizar=mascotas" class="">Mis Mascotas</a></li>
                    <li><a href="2_calendario.jsp" class="">Calendario</a></li>
                    <li><a href="informativo.html" class="">Información Mascotas</a></li>
                    <li><a href="comunidad.html" class="">Comunidad</a></li>
                    <li><a href="/NIMO/Controler?visualizar=notas" class="">Notas</a></li>
            
            <li><a href="saludBienestar.html" class="">Salud y Bienestar</a></li>
                                    <li><a href="adopciones.jsp" class="">Adopciones</a></li><li><a href="config_usu.jsp" class="">Configuración</a></li>
        </ul>
                </nav>
    <section>
        <form action="Controler" method="post"><button class='regresar' name="accion" value="Visualizar mis notas"><img src='imagenes/regresar.png' height="60" width="60" draggable="false"></button></form>

        <h1 class="titulo">Papelera de Notas</h1>
        <c:set var="variable" value="${0}"/>
        <div class="contenedorNotas">
            <c:forEach var="datito" items="${lista3}">
                <c:if test="${datito.getEstado() == 2}">
                    <c:set var="variable" value="${variable + 1}"/>
                    <div class="notitas">
                        <div class="tituloNota">
                            <center>
                                <p>Nota ${variable}</p>
                            </center>
                        </div>
                        <div class="contenidoNota">
                            <p>
                                ${datito.getContenido()}
                            </p>
                        </div>
                        <form action="Controler?accion=revertNote" method="post">
                            <button class="botonNota deshacer" name="deshacer" value="${datito.getId()}"><img src="imagenes/deshacer.png" draggable="false" width="25" ></button>
                        </form>
                        <form action="Controler?accion=removeCompletelyNote" method="post" id="removerPorCompleto">
                            <button class="botonNota remove" name="borrar" value="${datito.getId()}" onclick="eliminar();"><img src="imagenes/remove.png" draggable="false" width="25" height="25" ></button>
                        </form>
                    </div>
                </c:if>
            </c:forEach>
        </div>
        <c:if test="${empty lista3 or variable == 0}">
            <div class="warning">
                <h2 class="warNotas">Vacío</h2>
            </div>
        </c:if>

    </section>

</body>
</html>
