<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <title>Cáncer felino</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="prevenciones.css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
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
            <section class="secciones">
                <aside class="navi">
                    <ul class="list">
                        <!-- Selección uno -->
                        <li class="list__item list__item--click">

                            <div class="list__button list__button--click">

                                <a href="#" class="nav__link">Perros</a>

                            </div>

                            <ul class="list__show">

                                <li class="list__inside">

                                    <a href="pParvo.jsp" class="nav__link nav__link--inside">Parvovirus</a>

                                </li>

                                <li class="list__inside">

                                    <a href="pMoquillo.jsp" class="nav__link nav__link--inside">Moquillo</a>

                                </li>

                                <li class="list__inside">

                                    <a href="pHepatitis.jsp" class="nav__link nav__link--inside">Hepatitis infecciosa canina</a>

                                </li>

                                <li class="list__inside">

                                    <a href="pLepto.jsp" class="nav__link nav__link--inside">Leptospicosis</a>

                                </li>

                                <li class="list__inside">

                                    <a href="pTos.jsp" class="nav__link nav__link--inside">Tos de las pérreras</a>

                                </li>

                                <li class="list__inside">

                                    <a href="pRabia.jsp" class="nav__link nav__link--inside">Rabia</a>

                                </li>
                            </ul>

                        </li>

                        <!-- Selección uno -->

                        <li class="list__item list__item--click">
                            <div class="list__button list__button--click">

                                <a href="#" class="nav__link">Gatos</a>

                            </div>

                            <ul class="list__show">
                                <li class="list__inside">
                                    <a href="gInsu.jsp" class="nav__link nav__link--inside">Insuficiencia renal crónica</a>
                                </li>

                                <li class="list__inside">
                                    <a href="gHiper.jsp" class="nav__link nav__link--inside">Hipertiroidismo</a>
                                </li>

                                <li class="list__inside">
                                    <a href="gDiabetes.jsp" class="nav__link nav__link--inside">Diabetes Mellitus</a>
                                </li>

                                <li class="list__inside">
                                    <a href="gInfec.jsp" class="nav__link nav__link--inside">Infección por retrovirus</a>
                                </li>

                                <li class="list__inside">
                                    <a href="gCancer.jsp" class="nav__link nav__link--inside">Cáncer en felinos</a>
                                </li>

                            </ul>
                        </li>
                    </ul>
                </aside>
                <article>
                    <h1 class="titulo">Cáncer felino</h1>
                    <h2 class="subtitulos">¿Qué es?</h2>
                    <p class="textoOOOO">Gracias al avance de la medicina veterinaria, las vacunas y las mejoras de la asistencia sanitaria, los perros y los gatos viven más, razón por la que tienden a sufrir más enfermedades relacionadas con edades avanzadas, como el cáncer. Además, hay factores ambientales, como la exposición prolongada a la luz solar y la inhalación de gases residuales de escape, que también aumentan la posibilidad de sufrir cáncer. Las hormonas desempeñan un cierto papel en la aparición de algunas formas de cáncer: si no se esteriliza a las perras y a las gatas, o se hace a una edad avanzada, el riesgo de sufrir cáncer mamario aumenta sensiblemente.<br>Finalmente, los factores genéticos también tienen su importancia. Algunas razas tienen más probabilidades de desarrollar ciertas formas de cáncer: por ejemplo, el cáncer de huesos aparece con mayor frecuencia en razas grandes.</p>
                    <center><a href="" target="_blank"><img src="https://www.seleccionesveterinarias.com/files/1608035082_carcinoma_nasal_13_p.png" class="imagenParvo"></a> </center>

                    <h2 class="subtitulos">Síntomas</h2>
                    <p class="textoOOOO"> Es difícil hacer una descripción completa de todos los signos de cáncer que pueden presentar los perros y los gatos. Entre otros, pueden citarse los siguientes:

                    <ul class="listitauwu">

                        <li>Bultos o inflamaciones anormales que no desaparecen y/o crecen</li>
                        <li>Úlceras y heridas que no cicatrizan</li>
                        <li>Pérdida de apetito</li>
                        <li>Mal aliento</li>
                        <li>Pérdida de peso que no se debe a otras causas</li>
                        <li>Dificultad para comer y/o tragar</li>
                        <li>Cojera o rigidez persistentes</li>
                        <li>Dificultades para respirar o escasa resistencia física</li>
                        <li>Dificultad para orinar y/o defecar</li>
                        <li>Hemorragias o secreciones por cualquier orificio corporal</li>

                    </ul>
                    <center><a href="" target="_blank"><img src="https://www.purina-latam.com/sites/g/files/auxxlc391/files/styles/large/public/purina-como-identificar-cancer-en-gatos.png?itok=U_pegdCD" class="imagenParvo"></a> </center>


                    <h2 class="subtitulos">Prevenciones</h2>
                    <p class="textoOOOO">Igual que en las personas, en los animales es difícil prevenir el cáncer porque su causa es multifactorial. Se ha visto que algunas intervenciones reducen la probabilidad de desarrollar algunos tipos de cáncer (p. ej.: esterilizar a las perras antes del primer celo para evitar tumores mamarios).

                        Sin embargo, es importante destacar que, muy probablemente, el esforzarse por conseguir que nuestras mascotas hagan una vida sana (alimento, ejercicio, calidad del aire, etc.) reducirá el riesgo de cierto tipo de cánceres.</p>
                    <center><a href="" target="_blank"><img src="https://misanimales.com/wp-content/uploads/2020/01/cancer-piel-felinos.jpg" class="imagenParvo"></a> </center>




                </article>
            </section>
        </section>

        <script>
            let listElements = document.querySelectorAll('.list__button--click');

            listElements.forEach(listElement => {
                listElement.addEventListener('click', () => {

                    listElement.classList.toggle('arrow');

                    let height = 0;
                    let menu = listElement.nextElementSibling;
                    if (menu.clientHeight == "0") {
                        height = menu.scrollHeight;
                    }

                    menu.style.height = height + 'px';

                })
            });
        </script>
    </body>
    <script src="prueba.js"></script>
</html>
