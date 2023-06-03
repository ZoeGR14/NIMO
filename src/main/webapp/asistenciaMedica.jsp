<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Asistencia Médica</title>
        <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,700&display=swap" rel="stylesheet">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="menusito.css">
        <!--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">-->
        <!--<link rel="stylesheet" href="estilos.css" type="text/css">-->     
        <link rel="stylesheet" href="asistenciaMedica.css">
        <style>
            .sidebar{
                width:50px;
            }
            .ventana{
                zoom:0.9;
            }
            iframe{
                width: 100%;
                height: auto;
            }
        </style>
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
            <section id="tarjetas">
                <div class="tarjetaUbicacion">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d60228.74569891395!2d-99.35241222381593!3d19.356305610779266!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85d20735ee6910b5%3A0xf86253a248f5bed2!2sCentro%20M%C3%A9dico%20ABC%20Santa%20Fe!5e0!3m2!1ses!2smx!4v1668900309535!5m2!1ses!2smx" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    <h2>Centro Médico ABC Santa Fe</h2>
                    <p class="localidad">Cuajimalpa Morelos, CDMX</p>
                    <p class="parrafo">Vasco de Quiroga 154, Contadero, Cuajimalpa de Morelos, 05348 Ciudad de México, CDMX</p>
                </div>
                <div class="tarjetaUbicacion">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d60209.66316720262!2d-99.24872544179684!3d19.407914200000004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85d1ff7ab02ed76f%3A0xe68fa9d3673949c4!2sHospitales%20de%20Especialidad%20Veterinaria%20Torre%20WestCare%20Condesa!5e0!3m2!1ses!2smx!4v1668901237151!5m2!1ses!2smx" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    <h2>Especialidad Veterinaria Torre WestCare</h2>
                    <p class="localidad">Cuahtémoc, CDMX</p>
                    <p class="parrafo">Gral. Benjamín Hill 123, Hipódromo Condesa, Cuauhtémoc, 06170 Ciudad de México, CDMX</p>
                </div>
                <div class="tarjetaUbicacion">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d60225.385310603226!2d-99.31940038592401!3d19.365403354097484!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85d201bf2c2be78d%3A0x1af40cacbf338516!2sMUMBii%20Hospital!5e0!3m2!1ses!2smx!4v1668901254198!5m2!1ses!2smx" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    <h2>MUMBii Hospital</h2>
                    <p class="localidad">Álvaro Obregón, CDMX</p>
                    <p class="parrafo">Prol. P.º de la Reforma 275, Santa Fe, Zedec Sta Fé, Álvaro Obregón, 01219 Ciudad de México, CDMX</p>
                </div>            
                <div class="tarjetaUbicacion">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30104.832076910043!2d-99.20765184522268!3d19.40791153511055!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85d21ce7601f431d%3A0xf72258e8dffaa869!2sAnimal%20Care%20Center%20Hospital%20Veterinario!5e0!3m2!1ses!2smx!4v1668920059138!5m2!1ses!2smx" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    <h2>Animal Care Center Hospital Veterinario</h2>
                    <p class="localidad">Benito Juárez, CDMX</p>
                    <p class="parrafo">Av. Patriotismo 549, Cd. de los Deportes, Benito Juárez, 03710 Ciudad de México, CDMX</p>
                </div>
                <div class="tarjetaUbicacion">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30104.832076910043!2d-99.20765184522268!3d19.40791153511055!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85d1ff82e5f008eb%3A0xb9765a7f3f8e9f67!2sCentro%20Veterinario%20M%C3%A9xico%20Hospital%20de%20Especialidades!5e0!3m2!1ses!2smx!4v1668920152300!5m2!1ses!2smx" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    <h2>Centro Veterinario México Hospital de Especialidades</h2>
                    <p class="localidad">Benito Juárez, CDMX</p>
                    <p class="parrafo">Cincinnati 26, Cd. de los Deportes, Benito Juárez, 03710 Ciudad de México, CDMX</p>
                </div>
                <div class="tarjetaUbicacion">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d83844.96312796793!2d-99.3034281418875!3d19.334980767998413!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85d2007325d33cd7%3A0x42f5f46f5c45514a!2sHospital%20Veterinario%20de%20Alta%20Especialidad!5e0!3m2!1ses!2smx!4v1668920258022!5m2!1ses!2smx" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    <h2>Hospital Veterinario de Alta Especialidad</h2>
                    <p class="localidad">Álvaro Obregón, CDMX</p>
                    <p class="parrafo">Lote 18 MZ 10, Desierto de los Leones, Lomas de los Ángeles Tetelpan, Álvaro Obregón, 01790 CDMX</p>
                </div>            

            </section>
        </section>

        <!--<h1 class="titulo">Comunidad</h1>
        <div class="conteComunidad">
                <button class="botonCumunidad buscarCom">
                    Buscar comunidades
                </button>
                <button class="botonCumunidad tusCom">
                    Tus comunidades
                </button>
        </div>-->      
    </body>
    <script src="prueba.js"></script>
</html>