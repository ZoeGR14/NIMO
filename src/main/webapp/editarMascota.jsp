<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <a href="2_calendario.jsp">
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
            <c:forEach var="dato" items="${infoMasc}">
            <div class="container">
                <div class="title">Editar mascota</div>
                <div class="content">

                    <form method="post" class="contenidoNuevaMasc" action="Controler" id='contenidoNuevaMasc' enctype="multipart/form-data">
                            <div class="user-details">
                                <div class="input-box">
                                    <span class="details">Nombre</span>
                                    <input type="text" name="nombreMasc" id="nombre" placeholder="Ingrese el nombre de su mascota" required value='${dato.getNombre()}'>
                                </div>
                                <div class="input-box">
                                    <span class="details">Fecha de Nacimiento</span>
                                    <input type="date" id="nacim" name="nacimMasc" required value="${dato.getNacimMasc()}">
                                </div>
                                <div class="input-box">
                                    <span class="details">Tipo de Animal</span>
                                    <div class="select-box">
                                        <select  name="selectAnimal" id="tipoAnimal" required>
                                            <c:choose>
                                                <c:when test="${dato.getTipoAnimal() eq 'Perro'}">
                                                    <option value="" disabled hidden>Seleccione el tipo</option>
                                                    <option selected value="Perro">Perro</option>
                                                    <option value="Gato">Gato</option>
                                                </c:when>
                                                <c:otherwise>
                                                    <option value="" disabled hidden>Seleccione el tipo</option>
                                                    <option value="Perro">Perro</option>
                                                    <option selected value="Gato">Gato</option>
                                                </c:otherwise>
                                            </c:choose>
                                        </select>
                                    </div>
                                </div>
                                <div class="input-box">
                                    <span class="details">Raza</span>
                                    <input type="text" name="tipoRaza" id="raza" placeholder="Ingrese la raza de su mascota" required value="${dato.getTipoRaza()}">
                                </div>
                                <div class="input-box">
                                    <span class="details">Color</span>
                                    <div class="select-box">
                                        <select  name="selectColor" id="color" required>
                                            <c:if test="${dato.getColor() eq 'Negro'}">
                                                <option value="" disabled hidden>Seleccione el color</option>
                                                <option selected value="Negro">Negro</option>
                                                <option value="Blanco">Blanco</option>
                                                <option value="Cafe">Cafe</option>
                                                <option value="Gris">Gris</option>
                                                <option value="Rubio">Rubio</option>
                                                <option value="Naranja">Naranja</option>
                                                <option value="Combinado">Combinado</option>
                                            </c:if>
                                            <c:if test="${dato.getColor() eq 'Blanco'}">
                                                <option value="" disabled hidden>Seleccione el color</option>
                                                <option value="Negro">Negro</option>
                                                <option selected value="Blanco">Blanco</option>
                                                <option value="Cafe">Cafe</option>
                                                <option value="Gris">Gris</option>
                                                <option value="Rubio">Rubio</option>
                                                <option value="Naranja">Naranja</option>
                                                <option value="Combinado">Combinado</option>
                                            </c:if>
                                            <c:if test="${dato.getColor() eq 'Cafe'}">
                                                <option value="" disabled  hidden>Seleccione el color</option>
                                                <option value="Negro">Negro</option>
                                                <option value="Blanco">Blanco</option>
                                                <option selected value="Cafe">Cafe</option>
                                                <option value="Gris">Gris</option>
                                                <option value="Rubio">Rubio</option>
                                                <option value="Naranja">Naranja</option>
                                                <option value="Combinado">Combinado</option>
                                            </c:if>
                                            <c:if test="${dato.getColor() eq 'Gris'}">
                                                <option value="" disabled  hidden>Seleccione el color</option>
                                                <option value="Negro">Negro</option>
                                                <option value="Blanco">Blanco</option>
                                                <option value="Cafe">Cafe</option>
                                                <option selected value="Gris">Gris</option>
                                                <option value="Rubio">Rubio</option>
                                                <option value="Naranja">Naranja</option>
                                                <option value="Combinado">Combinado</option>
                                            </c:if>
                                            <c:if test="${dato.getColor() eq 'Rubio'}">
                                                <option value="" disabled hidden>Seleccione el color</option>
                                                <option value="Negro">Negro</option>
                                                <option value="Blanco">Blanco</option>
                                                <option value="Cafe">Cafe</option>
                                                <option value="Gris">Gris</option>
                                                <option selected value="Rubio">Rubio</option>
                                                <option value="Naranja">Naranja</option>
                                                <option value="Combinado">Combinado</option>
                                            </c:if>
                                            <c:if test="${dato.getColor() eq 'Naranja'}">
                                                <option value="" disabled hidden>Seleccione el color</option>
                                                <option value="Negro">Negro</option>
                                                <option value="Blanco">Blanco</option>
                                                <option value="Cafe">Cafe</option>
                                                <option value="Gris">Gris</option>
                                                <option value="Rubio">Rubio</option>
                                                <option selected value="Naranja">Naranja</option>
                                                <option value="Combinado">Combinado</option>
                                            </c:if>
                                            <c:if test="${dato.getColor() eq 'Combinado'}">
                                                <option value="" disabled hidden>Seleccione el color</option>
                                                <option value="Negro">Negro</option>
                                                <option value="Blanco">Blanco</option>
                                                <option value="Cafe">Cafe</option>
                                                <option value="Gris">Gris</option>
                                                <option value="Rubio">Rubio</option>
                                                <option value="Naranja">Naranja</option>
                                                <option selected value="Combinado">Combinado</option>
                                            </c:if>
                                        </select>
                                    </div>
                                </div>
                                <div class="input-box">
                                    <span class="details">Peso</span>
                                    <input type="number"  name="pesoMasc" id="peso" min="0" max="30" placeholder="Ingrese su peso en kg" required value="${dato.getPeso()}">
                                </div>
                                <div class="input-box">
                                    <span class="details">Gustos</span>
                                    <input type="text" name="gustosMasc" id="gustos" placeholder="Ingrese sus gustos" required value="${dato.getGustos()}">
                                </div>
                                <div class="input-box">
                                    <span class="details">Disgustos</span>
                                    <input type="text" name="disgustosMasc" id="disgustos" placeholder="Ingrese sus disgustos" required value="${dato.getDisgustos()}">
                                </div>
                            </div>
                            <div class="radios">
                                <div class="radio-details">
                                    <c:choose>
                                        <c:when test="${dato.getSexo() eq 'Macho'}">
                                            <input type="radio" checked value="Macho" name="radioSexo" id="dot-1">
                                            <input type="radio" value="Hembra" name="radioSexo" id="dot-2">
                                        </c:when>
                                        <c:otherwise>
                                            <input type="radio"  value="Macho" name="radioSexo" id="dot-1">
                                            <input type="radio" checked value="Hembra" name="radioSexo" id="dot-2">
                                        </c:otherwise>
                                    </c:choose>
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
                                    <c:choose>
                                        <c:when test="${dato.getTipoRaza() eq 'Pura'}">
                                            <input type="radio" checked value="Pura" name="radioRaza" id="dot-3">
                                            <input type="radio" value="Cruza" name="radioRaza" id="dot-4">
                                        </c:when>
                                        <c:otherwise>
                                            <input type="radio" value="Pura" name="radioRaza" id="dot-3">
                                            <input type="radio" value="Cruza" checked name="radioRaza" id="dot-4">
                                        </c:otherwise>
                                    </c:choose>
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
                                    <c:choose>
                                        <c:when test="${dato.getAlergias() eq 'Si'}">
                                            <input type="radio" checked value="Si" name="radioAlergias" id="dot-5">
                                            <input type="radio" value="No" name="radioAlergias" id="dot-6">
                                        </c:when>
                                        <c:otherwise>
                                            <input type="radio" value="Si" name="radioAlergias" id="dot-5">
                                            <input type="radio" checked value="No" name="radioAlergias" id="dot-6">
                                        </c:otherwise>
                                    </c:choose>
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
                                <input type="hidden" name="idEditado" value="${dato.getId()}">
                                <input type="submit" name="accion" value="Editar">
                            </div>
                        </form>
                    </div>
                </div>
            </c:forEach>
            <%
                try {
                    String aprove = (String) request.getAttribute("aprobacionMascota");
                    if (aprove.equals("si")) {
            %>
            <script>
                Swal.fire({
                    title: "¡Información editada!",
                    icon: "success",
                    confirmButtonText: "Vale",
                    confirmButtonColor: "#4b277a",
                    color: "black"
                }).then((result) => {
                    if (result.isConfirmed) {
                        window.location.href = "/NIMO/Controler?visualizar=mascotas"
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