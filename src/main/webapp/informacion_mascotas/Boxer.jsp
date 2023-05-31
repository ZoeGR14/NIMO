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
                <h1 class="raza">Bóxer</h1>
                <img src="../animalesFotos/boxer.jpg" alt="" draggable="false"/>
                
                <div class="p-caract">
                    <h2>Caracteristicas:</h2>
                    <ul>
                        <li>Los perros de esta raza son de tamaño medio o grande.</li>
                        <li>Tienen un aspecto robusto, musculatura desarrollada y movimientos característicos.</li>
                        <li>Poseen una cabeza fuerte y pesada, una mandíbula potente y una gran presión mandibular.</li>
                        <li>Su hocico es pequeño.</li>
                        <li>El cuello del perro bóxer es fuerte, redondo y musculoso.</li>
                        <li>Suelen tener el pelo muy corto, brillante y suave.</li>
                        <li>El tamaño promedio de estos perros está entre los 57 - 63 cm.</li>
                        <li>Peso promedio: 25 - 30 kg</li>
                    </ul>
                </div>
                <div class="p-cuidados">
                    <h2>Cuidados especiales:</h2>
                    <ul>
                        <li>Realizar baño al perruno una vez cada dos meses aproximadamente.</li>
                        <li>Requieren mínimo 3 paseos diarios, que pueda convivir con el ambiente.</li>
                        <li>Tener sesiones de ejercicio físico, para canalizar su estrés y desarrollar su musculatura.</li>
                        <li>Estimularlo física y mentalmente para que sea feliz.</li>
                    </ul>
                </div>
                <div class="p-act-hab">
                    <h2>Actitudes y Habilidades:</h2>
                    <ul>
                            <li>Tienen carácter fiel, alerta, activo y amistoso.</li>
                            <li>Son especialmente sensibles y bondadosos cuando están bien socializados.</li>
                            <li>Llegan a ser realmente protectores y pacientes con los niños.</li>
                            <li>Crean un vínculo especial con sus tutores.</li>
                            <li>Tienen un "estilo de vida" activo y entusiasta.</li>
                    </ul>
                </div>
            </div>
        </section>
    </body>
    <script src="../prueba.js"></script>
</html>
