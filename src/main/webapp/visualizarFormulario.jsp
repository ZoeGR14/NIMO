<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="Adopt.css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="menusito.css">
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <style>
            .sidebar {
                position: fixed;
                top: 0;
                left: 0;
                width: 50px;
                background: #ffffff;
                padding: 6px 16px;
                height: 100%;
                box-shadow: 5px 0 30px rgba(0, 0, 0, 0.1);
                transition: all 0.5s ease;
                overflow: hidden;
            }
        </style>
        <title>Quiero Adoptar</title>
    </head>
    <!--
    
    En este apartado se supone que debes jalar la ID de la mascota dada en adopción, el ID del usuario dueño
    de la mascota y se guardará en la base de datos el ID del usuario que adoptará, el que da en adopción y
    el ID de la mascota, todo en una sola tabla con llaves foráneas.
    
    -->
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
            <div class="form-container">
                <p class="title">FORMULARIO DE ADOPCIÓN</p>
                <c:forEach var="listaAd" items="${listaAd}">
                <form class="form" method="post" id="quieroAdoptar" action="Controler?accion=enviarFormulario">
                    <!-- Pregunta 1 -->
                    <div class="input-group">
                        <label for="escribir">¿Por qué desea adoptar?</label>
                        <input type="text" name="razonAdop" id="escribir" value="${listaAd.getP1()}" disabled>
                    </div>
                    <!-- Pregunta 2 -->
                    <div class="input-group">
                        <label for="escribir">¿Actualmente cuenta con mascotas?</label>
                        <div class="radio-input">
                            <label class="label">
                                <input type="radio" name="radio" value="Si" disabled <c:if test="${listaAd.getP2() eq 'Si'}">checked</c:if>>
                                <span class="check"></span>
                                &nbsp;&nbsp;&nbsp;<p>Sí</p>
                            </label>
                            <label class="label">
                                <input type="radio" name="radio" value="No" disabled <c:if test="${listaAd.getP2() eq 'No'}">checked</c:if>>
                                <span class="check"></span>
                                &nbsp;&nbsp;&nbsp;<p>No</p>
                            </label>
                        </div>
                    </div>
                    <!-- Pregunta 3 -->
                    <div class="input-group">
                        <label for="escribir">¿Anteriormente ha tenido mascotas?</label>
                        <div class="radio-input">
                            <label class="label">
                                <input type="radio" name="radio1" value="Si"disabled <c:if test="${listaAd.getP3() eq 'Si'}">checked</c:if>>
                                <span class="check"></span>
                                &nbsp;&nbsp;&nbsp;<p>Sí</p>
                            </label>
                            <label class="label">
                                <input type="radio" name="radio1" value="No" disabled<c:if test="${listaAd.getP3() eq 'No'}">checked</c:if>>
                                <span class="check"></span>
                                &nbsp;&nbsp;&nbsp;<p>No</p>
                            </label>
                        </div>
                    </div>
                    <!-- Pregunta 4 -->
                    <div class="input-group">
                        <label for="escribir">¿Cuántas personas viven en su casa?</label>
                        <input type="number" min="0" max="20" name="personas" id="escribir" value="${listaAd.getP4()}" disabled>
                    </div>
                    <!-- Pregunta 5 -->
                    <div class="input-group">
                        <label for="escribir">¿Están de acuerdo con adoptar?</label>
                        <div class="radio-input">
                            <label class="label">
                                <input type="radio" name="radio2" value="Si" disabled <c:if test="${listaAd.getP5() eq 'Si'}">checked</c:if>>
                                <span class="check"></span>
                                &nbsp;&nbsp;&nbsp;<p>Sí</p>
                            </label>
                            <label class="label">
                                <input type="radio" name="radio2" value="No" disabled <c:if test="${listaAd.getP5() eq 'No'}">checked</c:if>>
                                <span class="check"></span>
                                &nbsp;&nbsp;&nbsp;<p>No</p>
                            </label>
                        </div>
                    </div>
                    <!-- Pregunta 6 -->
                    <div class="input-group">
                        <label>¿Cuántos niños viven en su casa?</label>
                        <input type="number" min="0" max="20" name="niños" id="escribir" value="${listaAd.getP6()}" disabled>
                    </div>
                    <!-- Pregunta 7 -->
                    <div class="input-group">
                        <label for="escribir">En caso de viaje, ¿Qué pasaría?</label>
                        <input type="text" name="viaje" id="escribir" value="${listaAd.getP7()}" disabled>
                    </div>
                    <!-- Pregunta 8 -->
                    <div class="input-group">
                        <label for="escribir">¿Hay espacio suficiente?</label>
                        <div class="radio-input">
                            <label class="label">
                                <input type="radio" name="radio3" value="Si" disabled <c:if test="${listaAd.getP8() eq 'Si'}">checked</c:if>>
                                <span class="check"></span>
                                &nbsp;&nbsp;&nbsp;<p>Sí</p>
                            </label>
                            <label class="label">
                                <input type="radio" name="radio3" value="No" disabled <c:if test="${listaAd.getP8() eq 'No'}">checked</c:if>>
                                <span class="check"></span>
                                &nbsp;&nbsp;&nbsp;<p>No</p>
                            </label>
                        </div>
                    </div>
                    <!-- Pregunta 9 -->
                    <div class="input-group">
                        <label for="escribir">¿Cuánto tiempo pasaría solo al día? (En horas)</label>
                        <input type="number" min="0" max="24" name="tiempo" id="escribir" value="${listaAd.getP9()}" disabled>
                    </div>
                    <br>
                </form>
                </c:forEach>
            </div>
        </section>
    </body>
    <script src="prueba.js"></script>
</html>