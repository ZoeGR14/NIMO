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
                                        <li><a href="adopciones.html" class="">Adopciones</a></li><li><a href="config_usu.jsp" class="">Configuración</a></li>
            </ul>
        </nav>
        <section>
        <h1 class="titulo">MIS MASCOTAS</h1>
        <form action="Controler" method="post">
            <input type="submit" name="accion" value="Visualizar mis mascotas">
            <input type="submit" name="accion" value="Añadir nueva mascota">
        </form>
        </section>
        
    </body>
</html>
