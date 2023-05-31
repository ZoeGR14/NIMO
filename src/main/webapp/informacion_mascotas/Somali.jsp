<%@page contentType="text/html" pageEncoding="UTF-8"%><!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <title>Explora</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="../estilos.css" type="text/css">
        <link rel="stylesheet" href="../apartado_informativo.css" type="text/css">
        <link rel="stylesheet" href="estilosInfo.css" type="text/css">
        <link rel="stylesheet" href="menusito.css">
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
    </head>
    <body>
        <aside class="sidebar">
            <div class="logo_content">
                <div class="logo">
                    <img src="../imagenes/logo_nimo.png" alt="" class="logo2">
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
                    <a href="../2_calendario.jsp">
                        <i class='bx bx-calendar'></i>
                        <span class="link_name">Calendario</span>
                    </a>
                    <span class="tooltip">Calendario</span>
                </li>
                <li>
                    <a href="../informativo.jsp">
                        <i class='bx bx-info-circle'></i>
                        <span class="link_name">Información Mascotas</span>
                    </a>
                    <span class="tooltip">Información Mascotas</span>
                </li>
                <li>
                    <a href="../comunidad.jsp">
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
                    <a href="../saludBienestar.jsp">
                        <i class='bx bxs-heart-circle'></i>
                        <span class="link_name">Salud y Bienestar</span>
                    </a>
                    <span class="tooltip">Salud y Bienestar</span>
                </li>
                <li>
                    <a href="../adopciones.jsp">
                        <i class='bx bxs-clinic'></i>
                        <span class="link_name">Adopciones</span>
                    </a>
                    <span class="tooltip">Adopciones</span>
                </li>
                <li>
                    <a href="../config_usu.jsp">
                        <i class='bx bx-cog'></i>
                        <span class="link_name">Configuración</span>
                    </a>
                    <span class="tooltip">Configuración</span>
                </li>
                <li>
                    <a href="../cierreSesion.jsp">
                        <i class='bx bx-log-out-circle'></i>
                        <span class="link_name">Cerrar Sesión</span>
                    </a>
                    <span class="tooltip">Cerrar Sesión</span>
                </li>
            </ul>
        </aside>
        <section class="sectionInformativo ventana">
            <div class="aside">
                <h2 class="encuentra">¡Encuentra un tema en especifico!</h2>
                <ul>
                    <li>Perros
                        <ul>
                            <li>Razas
                                <ul>
                                    <li><a href="Husky.jsp">Siberian Husky</a></li>
                                    <li><a href="Chihuahua.jsp">Chihuahua</a></li>
                                    <li><a href="Pomerania.jsp">Pomerania</a></li>
                                    <li><a href="Pug.jsp">Pug</a></li>
                                    <li><a href="Pastor_Ingles.jsp">Pastor Inglés</a></li>
                                    <li><a href="Boxer.jsp">Boxer</a></li>
                                    <li><a href="Retriever.jsp">Labrador Retriever</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>Gatos
                        <ul>
                            <li>Razas
                                <ul>
                                    <li><a href="Siames.jsp">Siamés</a></li>
                                    <li><a href="Maine_Coon.jsp">Maine Coon</a></li>
                                    <li><a href="Ragdoll.jsp">Ragdoll</a></li>
                                    <li><a href="Ruso_Azul.jsp">Ruso Azul</a></li>
                                    <li><a href="Siberiano.jsp">Siberiano</a></li>
                                    <li><a href="Somali.jsp">Somalí</a></li>
                                    <li><a href="Bobtail.jsp">Bobtail Americano</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="info">
                <h1 class="raza">Somalí</h1>
                <img src="../animalesFotos/somali.jpg" alt="" draggable="false"/>
                
                <div class="g-caract">
                    <h2>Caracteristicas:</h2>
                    <ul>
                        <li>Es una raza de tamaño mediano.</li>
                        <li>Su peso está comprendido entre los 3.5 y 5 kg.</li>
                        <li>Su cuerpo es musculoso y estilizado, teniendo una apariencia elegante y majestuosa.</li>
                        <li>Cuentan con extremidades alargadas y esbeltas, fuertes y robustas.</li>
                        <li>Su esperanza de vida ronda los 9 y 13 años</li>
                        <li>La cabeza de un gato Somalí es triangular y su hocico es alargado.</li>
                        <li>Cuenta con orejas grandes y anchas, con terminación en punta marcada y pelo más largo, como en la cola, la cual es larga y en forma de plumero, con pelo largo y denso.</li>
                        <li>Su pelo es semilargo, aunque su cola y las orejas son más largas que el resto del cuerpo.</li>
                        <li>La gama de colores incluye azul, sorrel, fawn y salvaje o ruddy.</li>
                    </ul>
                </div>
                <div class="g-cuidados">
                    <h2>Cuidados especiales:</h2>
                    <ul>
                        <li>Al tener un pelaje semilargo, necesitará cepillados diarios.</li>
                        <li>Podemos complementar los cepillados con el uso de productos contra las inconvenientes bolas de pelo, tales como la malta, vaselina o aceites específicos para este uso</li>
                        <li>Proporcionarle una alimentación de calidad con piensos lo más ricos en carnes posible y con una menor proporción de cereales y subproductos.</li>
                        <li>Moderar ingesta de alimento, pues es un gato que tiende a la glotonería.</li>
                        <li>Controlar el estado de sus uñas, ojos, orejas, boca y dientes.</li>
                        <li>Debe mantener al dia sus vacunas y revisiones veterinarias</li>
                        <li>No olvidar el enrequecimiento ambiental.</li>
                    </ul>
                </div>
                <div class="g-act-hab">
                    <h2>Actitudes y Habilidades:</h2>
                    <ul>
                        <li>Se caracterizan por ser activos y risueños.</li>
                        <li>Adoran la compañía y los juegos con sus humanos.</li>
                        <li>Son una raza de gatos muy enérgica y necesita liberar toda su energía para mostrarse relajado y evitar el nerviosismo.</li>
                        <li>Es una raza muy inteligente, se muestra muy colaborador en el adiestramiento y aprende órdenes sencillas con mucha facilidad y rapidez.</li>
                        <li>Les encanta la vida en exterior.</li>
                    </ul>
                </div>
            </div>
        </section>
    </body>
    <script src="../prueba.js"></script>
</html>
