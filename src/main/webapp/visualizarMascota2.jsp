
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <title>Mis Mascotas</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>

        </style>
        <link rel="stylesheet" href="estilos.css" type="text/css">
    </head>
    <body>
        <nav>
            <link rel="stylesheet" href="menu.css">
            <input type="checkbox" id="check">
            <label for="check" class="checkbtn">
                <i class="menu-icon"> <img src="imagenes\menuicon.png"> </i>
            </label>
            <a href="index.jsp" class="enlace">
                <img src="imagenes/logo_nimo.png" alt="" class="logo">
            </a>
            <ul class="bot_acc">
                        <li><a href="inicio.jsp" class="inicio">Inicio</a></li>
                        <li><a href="/NIMO/Controler?visualizar=mascotas" class="">Mis Mascotas</a></li>
                        <li><a href="2_calendario.jsp" class="">Calendario</a></li>
                        <li><a href="informativo.jsp" class="">Información Mascotas</a></li>
                        <li><a href="comunidad.jsp" class="">Comunidad</a></li>
                        <li><a href="/NIMO/Controler?visualizar=notas" class="">Notas</a></li>
                        
                        <li><a href="saludBienestar.jsp" class="">Salud y Bienestar</a></li>
                        <li><a href="adopciones.jsp" class="">Adopciones</a></li><li><a href="config_usu.jsp" class="">Configuración</a></li>
                    </ul>
                            </nav>
                    <section>
                        <h1 class="titulo">Mis Mascotas</h1>
                        <div class='contenedorMascotas'>
                            <c:if test="${empty lista}">
                                <h2 class="warning warMascotas">No hay mascotas registradas u.u</h2>
                            </c:if>
                            <c:forEach var="dato" items="${lista}">
                                <div class="tarjetasMascota">
                                    <div class="conteIMG">
                                        <img class="imagenMasc" src="ControlerIMG?id=${dato.getId()}" draggable="false">
                                    </div>
                                    <br>
                                    <div class="infoMasc">
                                        <p>Nombre: ${dato.getNombre()}</p>
                                        <p>Tipo de Animal: ${dato.getTipoAnimal()}</p>
                                        <p>Tipo de Raza: ${dato.getTipoRaza()}</p>
                                        <p>Raza: ${dato.getRaza()}</p>
                                        <p>Sexo: ${dato.getSexo()}</p>
                                        <p>Nacimiento: ${dato.getNacimMasc()}</p>
                                        <p>Gustos: ${dato.getGustos()}</p>
                                        <p>Disgustos: ${dato.getDisgustos()}</p>
                                        <p>Alergias: ${dato.getAlergias()}</p>
                                        <p>Color: ${dato.getColor()}</p>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        <form action="Controler" method="post">
                            <button class="añadirNota" name="accion" value="Añadir nueva mascota">+</button>
                        </form>
                    </section>
                    </body>
                    </html>
