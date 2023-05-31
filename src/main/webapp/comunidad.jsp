<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="menusito.css">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Comunidad</title>
        <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,700&display=swap" rel="stylesheet">
        <!--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">-->
        <!--<link rel="stylesheet" href="estilos.css" type="text/css">-->    
        <style>
            body{
                background-color: #C1BAFD;
            }

            .sidebar{
                width: 50px;
            }
            .hola{
                text-align: justify;
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
                    <a href="/Controler?visualizar=mascotas">
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
                    <a href="/Controler?visualizar=notas">
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
            <link rel="stylesheet" href="comu.css">
            <section id="pantalla-dividida">
                <div class="izquierda">
                    <h1><span class="creative">INTERACTÚA EN COMUNIDAD</span></h1>
                    <span class="text">
                        <p class="hola">Una mascota requiere de un dueño responsable que la cuide, proteja y procure todos los cuidados y atenciones que esta requiere, no solo comida y techo. Además, se le debe ofrecer atención médica y cuidado cuando los necesita, darle amor, atención y entretenimiento.</p>

                    </span>
                </div>            
                <div class="derecha">
                    <link rel="stylesheet" href="comunidad.css">
                    <div class="contenedor">
                        <div class="card">
                            <a class="card1" href="nuevaComunidad.jsp">
                                <p>Nueva comunidad</p>
                                <p class="small">Crea una nueva comunidad para interactuar con más del mismo tema</p>
                                <div class="go-corner" href="nuevaComunidad.jsp">
                                    <div class="go-arrow">
                                        →
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="card">
                            <a class="card1" href="listadoComunidades.jsp">
                                <p>Interactúa en comunidad</p>
                                <p class="small">Encuentra comunidades e interactúa en ellas</p>
                                <div class="go-corner" href="listadoComunidades.jsp">
                                    <div class="go-arrow">
                                        →
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>             
            </section>
        </section>
    </body>
    <script src="prueba.js"></script>
</html>
