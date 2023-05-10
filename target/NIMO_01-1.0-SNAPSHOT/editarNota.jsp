<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.NotaDAO"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <title>Mis Mascotas</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="estilos.css" type="text/css">
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
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
                    <li><a href="calendario.html" class="">Calendario</a></li>
                    <li><a href="informativo.html" class="">Información Mascotas</a></li>
                    <li><a href="comunidad.html" class="">Comunidad</a></li>
                    <li><a href="/NIMO/Controler?visualizar=notas" class="">Notas</a></li>
            
            <li><a href="saludBienestar.html" class="">Salud y Bienestar</a></li>
                                    <li><a href="adopciones.html" class="">Adopciones</a></li><li><a href="config_usu.jsp" class="">Configuración</a></li>
        </ul>
                </nav>
    <section>
        <form action="Controler" method="post"><button class='regresar' name="accion" value="Visualizar mis notas"><img src='imagenes/regresar.png' height="60" width="60" draggable="false"></button></form>
        <h1 class="titulo">Editar Nota</h1>
        <form style="width: 100%;height: 86%; margin: 0;" method="post" action="Controler?accion=editarNota">
            <div class="conteNota">
                <%
                    try {
                        NotaDAO n = new NotaDAO();
                        int id = Integer.parseInt((request.getAttribute("idNota").toString()));
                        String contenido = n.getContenidoNota(id);
                        contenido = contenido.replaceAll("<br>", "\n");
                %>
                <textarea placeholder="Empieza a escribir aquí..." class="escribirNota" name="nota" required ><%=contenido%></textarea>
            </div>
            <button class="añadirNota" name="id2" value="<%=id%>">✔</button>
                <%
                } catch (Exception e) {
                e.printStackTrace();
                }%>

        </form>
        <%
            try {
                String aprovacion = (String) request.getAttribute("aprovacionNota");
                if (aprovacion.equals("si")) {
        %>
        <script>
            Swal.fire({
                title: "¡Nota Editada!",
                icon: "success",
                confirmButtonText: "Vale",
                confirmButtonColor: "#4b277a",
                color: "black"
            }).then((result) => {
                if (result.isConfirmed) {
                    var form = document.createElement("form");
                    form.setAttribute("action", "Controler");
                    form.setAttribute("method", "post");
                    var submitButton = document.createElement("input");
                    submitButton.setAttribute("type", "submit");
                    submitButton.setAttribute("name", "accion");
                    submitButton.setAttribute("value", "Visualizar mis notas");
                    submitButton.setAttribute("id", "submit");

                    form.appendChild(submitButton);
                    document.body.appendChild(form);

                    var button = document.getElementById("submit");
                    button.click();
                }
            });
        </script>
        <%
        } else {
        %>
        <script>
            Swal.fire({
                title: "¡Pasó un error!",
                icon: "error",
                confirmButtonText: "Vale",
                confirmButtonColor: "#4b277a",
                color: "black"
            }).then((result) => {
                if (result.isConfirmed) {
                    location.href = "creaNota.jsp";
                }
            });
        </script>
        <%
                }
            } catch (Exception e) {
            }%>

    </section>
</body>
</html>
