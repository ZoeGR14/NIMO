<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
                    <a href="calendario.html">
                        <i class='bx bx-calendar'></i>
                        <span class="link_name">Calendario</span>
                    </a>
                    <span class="tooltip">Calendario</span>
                </li>
                <li>
                    <a href="informativo.html">
                        <i class='bx bx-info-circle'></i>
                        <span class="link_name">Información Mascotas</span>
                    </a>
                    <span class="tooltip">Información Mascotas</span>
                </li>
                <li>
                    <a href="comunidad.html">
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
                    <a href="saludBienestar.html">
                        <i class='bx bxs-heart-circle'></i>
                        <span class="link_name">Salud y Bienestar</span>
                    </a>
                    <span class="tooltip">Salud y Bienestar</span>
                </li>
                <li>
                    <a href="adopciones.html">
                        <i class='bx bxs-clinic'></i>
                        <span class="link_name">Adopciones</span>
                    </a>
                    <span class="tooltip">Adopciones</span>
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
            <div class="container">
                <div class="title">Nueva Mascota</div>
                <div class="content">
                    <form method="post" class="contenidoNuevaMasc" action="Controler" id='contenidoNuevaMasc' enctype="multipart/form-data">
                        <div class="image-details">
                            <img src="imagenes/nuevaMasc.jpg" id="foto" draggable="false">
                            <input type="file" id="imagen" accept="image/*" name="fileFoto" class="imagen" required>
                            <label for="imagen" class="boton">Agregar foto</label>
                        </div>
                        <div class="user-details">
                            <div class="input-box">
                                <span class="details">Nombre</span>
                                <input type="text" name="nombreMasc" id="nombre" placeholder="Ingrese el nombre de su mascota" required>
                            </div>
                            <div class="input-box">
                                <span class="details">Fecha de Nacimiento</span>
                                <input type="date" id="nacim" name="nacimMasc" required>
                            </div>
                            <div class="input-box">
                                <span class="details">Tipo de Animal</span>
                                <div class="select-box">
                                    <select  name="selectAnimal" id="tipoAnimal" required>
                                        <option value="" disabled selected hidden>Seleccione el tipo</option>
                                        <option value="Perro">Perro</option>
                                        <option value="Gato">Gato</option>
                                    </select>
                                </div>
                            </div>
                            <div class="input-box">
                                <span class="details">Raza</span>
                                <input type="text" name="tipoRaza" id="raza" placeholder="Ingrese la raza de su mascota" required>
                            </div>
                            <div class="input-box">
                                <span class="details">Color</span>
                                <div class="select-box">
                                    <select  name="selectColor" id="color" required>
                                        <option value="" disabled selected hidden>Seleccione el color</option>
                                        <option value="Negro">Negro</option>
                                        <option value="Blanco">Blanco</option>
                                        <option value="Cafe">Cafe</option>
                                        <option value="Gris">Gris</option>
                                        <option value="Rubio">Rubio</option>
                                        <option value="Naranja">Naranja</option>
                                        <option value="Combinado">Combinado</option>
                                    </select>
                                </div>
                            </div>
                            <div class="input-box">
                                <span class="details">Peso</span>
                                <input type="number"  name="pesoMasc" id="peso" min="0" max="30" placeholder="Ingrese su peso en kg" required>
                            </div>
                            <div class="input-box">
                                <span class="details">Gustos</span>
                                <input type="text" name="gustosMasc" id="gustos" placeholder="Ingrese sus gustos" required>
                            </div>
                            <div class="input-box">
                                <span class="details">Disgustos</span>
                                <input type="text" name="disgustosMasc" id="disgustos" placeholder="Ingrese sus disgustos" required>
                            </div>
                        </div>
                        <div class="radios">
                            <div class="radio-details">
                                <input type="radio" value="Macho" name="radioSexo" id="dot-1">
                                <input type="radio" value="Hembra" name="radioSexo" id="dot-2">
                                <span class="gender-title">Sexo</span>
                                <div class="category">
                                    <label for="dot-1">
                                        <span class="dot one"></span>
                                        <span class="gender">Macho</span>
                                    </label>
                                    <label for="dot-2">
                                        <span class="dot two"></span>
                                        <span class="gender">Hembra</span>
                                    </label>
                                </div>
                            </div>
                            <div class="radio-details">
                                <input type="radio" value="Pura" name="radioRaza" id="dot-3">
                                <input type="radio" value="Cruza" name="radioRaza" id="dot-4">
                                <span class="gender-title">Tipo de Raza</span>
                                <div class="category">
                                    <label for="dot-3">
                                        <span class="dot three"></span>
                                        <span class="gender">Pura</span>
                                    </label>
                                    <label for="dot-4">
                                        <span class="dot four"></span>
                                        <span class="gender">Cruza</span>
                                    </label>
                                </div>
                            </div>
                            <div class="radio-details">
                                <input type="radio" value="Si" name="radioAlergias" id="dot-5">
                                <input type="radio" value="No" name="radioAlergias" id="dot-6">
                                <span class="gender-title">Alergias</span>
                                <div class="category">
                                    <label for="dot-5">
                                        <span class="dot five"></span>
                                        <span class="gender">Si</span>
                                    </label>
                                    <label for="dot-6">
                                        <span class="dot six"></span>
                                        <span class="gender">No</span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="button">
                            <input type="submit" name="accion" value="Añadir">
                        </div>
                    </form>
                </div>
            </div>
            <%
                try {
                    String aprove = (String) request.getAttribute("aprobacionMascota");
                    if (aprove.equals("si")) {
            %>
            <script>
                Swal.fire({
                    title: "¡Mascota registrada!",
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
                        submitButton.setAttribute("value", "Visualizar mis mascotas");
                        submitButton.setAttribute("id", "submit");

                        form.appendChild(submitButton);
                        document.body.appendChild(form);

                        var button = document.getElementById("submit");
                        button.click();
                    }
                });
            </script>
            <%} else {
            %>
            <script>
                Swal.fire({
                    title: "¡Error!",
                    text: "Verifica que toda la información esté correcta",
                    icon: "error",
                    confirmButtonText: "Vale",
                    confirmButtonColor: "#4b277a",
                    color: "black"
                }).then((result) => {
                    if (result.isConfirmed) {
                        window.history.back();
                    }
                });
            </script>
            <%
                    }
                } catch (Exception e) {
                }
            %>


        </section>
        <script src="mascota.js"></script>
        <script src="prueba.js"></script>
</html>