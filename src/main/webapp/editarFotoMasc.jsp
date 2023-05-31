<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <title>Nueva Mascota</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">     
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="menusito.css">
        <link rel="stylesheet" href="nuevaMasc.css">
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </head>
    <body>
        <aside class="sidebar">
            <div class="logo_content">
                <div class="logo">
                    <img src="imagenes/logo_nimo.png" alt="" class="logo2">
                    <div class="logo_name">NIMO</div>
                </div>
                <i class='bx bx-menu' id='btn'></i>
            </div>

            <ul class="nav">
                <li>
                    <a href="/NIMO/Controler?visualizar=mascotas">
                        <i class='bx bxs-dog'></i>
                        <span class="link_name">Mis Mascotas</span>
                    </a>
                    <span class="tooltip">Mis Mascotas</span>
                </li>
                <li>
                    <a href="2_calendario.jsp">
                        <i class='bx bx-calendar'></i>
                        <span class="link_name">Calendario</span>
                    </a>
                    <span class="tooltip">Calendario</span>
                </li>
                <li>
                    <a href="informativo.jsp">
                        <i class='bx bx-info-circle'></i>
                        <span class="link_name">Información Mascotas</span>
                    </a>
                    <span class="tooltip">Información Mascotas</span>
                </li>
                <li>
                    <a href="comunidad.jsp">
                        <i class='bx bx-group'></i>
                        <span class="link_name">Comunidad</span>
                    </a>
                    <span class="tooltip">Comunidad</span>
                </li>
                <li>
                    <a href="/NIMO/Controler?visualizar=notas">
                        <i class='bx bx-note'></i>
                        <span class="link_name">Notas</span>
                    </a>
                    <span class="tooltip">Notas</span>
                </li>
                <li>
                    <a href="saludBienestar.jsp">
                        <i class='bx bxs-heart-circle'></i>
                        <span class="link_name">Salud y Bienestar</span>
                    </a>
                    <span class="tooltip">Salud y Bienestar</span>
                </li>
                <li>
                    <a href="adopciones.jsp">
                        <i class='bx bxs-clinic'></i>
                        <span class="link_name">Adopciones</span>
                    </a>
                        <span class="tooltip">Adopciones</span>
                </li>
                <c:if test="${sessionScope.tipo_usuario eq 2}">
                    <li>
                        <a href="soyVeterinario.jsp">
                            <i class='bx bx-plus-medical'></i>
                            <span class="link_name">Opciones Veterinario</span>
                        </a>
                        <span class="tooltip">Adopciones</span>
                    </li>
                </c:if>
                </li>
                <li>
                    <a href="config_usu.jsp">
                        <i class='bx bx-cog'></i>
                        <span class="link_name">Configuración</span>
                    </a>
                    <span class="tooltip">Configuración</span>
                </li>
                <li>
                    <a href="cierreSesion.jsp">
                        <i class='bx bx-log-out-circle'></i>
                        <span class="link_name">Cerrar Sesión</span>
                    </a>
                    <span class="tooltip">Cerrar Sesión</span>
                </li>
            </ul>
        </aside>
        <section class="ventana">
            <c:forEach var="dato" items="${fotoMasc}">
                <div class="container">
                    <div class="title">Editar fotografía</div>
                    <div class="content">

                        <form method="post" class="contenidoNuevaMasc" action="Controler" id='editarFoto' enctype="multipart/form-data">
                            <div class="image-details">
                                <img src="ControlerIMG?id=${dato.getId()}" id="foto" draggable="false">
                                <input type="file" id="imagen" accept="image/*" name="fileFoto" class="imagen">
                                <label for="imagen" class="boton">Agregar foto</label>
                            </div>
                            <div class="button">
                                <input type="hidden" name="idEditado" value="${dato.getId()}">
                                <input type="hidden" name="accion" value="Editar Foto">
                                <input type="submit" value="Editar Foto">
                            </div>
                        </form>
                    </div>
                </div>
            </c:forEach>

        <script>
            const defaultFile = document.getElementById("foto").src;

            const file = document.getElementById('imagen');
            const img = document.getElementById("foto");

            file.addEventListener("change", e => {
                if (e.target.files[0]) {
                    const reader = new FileReader();
                    reader.onload = function (e) {
                        img.src = e.target.result;
                    };
                    reader.readAsDataURL(e.target.files[0]);
                } else {
                    img.src = defaultFile;
                }
            });

            const form = document.getElementById("editarFoto");

            form.addEventListener("submit", function (e) {
                e.preventDefault();

                var img = document.getElementById("imagen").value;
                console.log(img);
                if (img !== "") {
                    Swal.fire({
                        title: "Foto editada",
                        text: "La foto de su mascota ha sido editada correctamente",
                        icon: "success",
                        confirmButtonText: "Vale",
                        timer: 2000,
                        timerProgressBar: true
                    }).then((result) => {
                        form.submit();
                    });
                } else {
                    Swal.fire({
                        title: "¡Atención!",
                        text: "Termine por completo el formulario, por favor",
                        icon: "warning",
                        confirmButtonText: 'Vale'
                    });
                }

            });

        </script>
        <script src="prueba.js"></script>
</html>