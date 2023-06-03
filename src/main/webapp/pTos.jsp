<%@page contentType="text/html" pageEncoding="UTF-8"%><!DOCTYPE html>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <title>Tos de las perreras</title>
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
                    <h1 class="titulo">Tos de las perreras</h1>
                    <h2 class="subtitulos">¿Qué es?</h2>
                    <p class="textoOOOO">La tos de las perreras, también conocida como traquebronquitis infecciosa canina (TBI), es una enfermedad de aparición aguda, localizada en las vías aéreas y producida por varios agentes infecciosos entre los que destacan: la Bordetella bronchiseptica, el adenovirus canino tipo 2 y el virus de la parainfluenza.<br>
                        La manera más frecuente de contagio en perros es mediante la inhalación de partículas virales que se encuentren flotando en el ambiente.  Aunque el moquillo también puede transmitirse a través del contacto directo del cachorro con los fluidos de otros canes infectados, incluyendo agua y comida.</p>
                    <center><a href="https://bit.ly/3Vf1OVL" target="_blank"><img src="https://bit.ly/3gsLLoH" class="imagenParvo"></a> </center>
                    <h2 class="subtitulos">¿Cómo se contrae?</h2>
                    <p class="textoOOOO">Los signos clínicos suelen aparecer entre 3 y 10 días post contacto con un perro con esta enfermedad y suele ser diseminada a través de tos o estornudos. También se puede contraer si se comparten alimentos o platos de comida o agua que han tenido contacto con un animal afectado. </p>
                    <center><a href="https://bit.ly/3Vf1OVL" target="_blank"><img src="https://bit.ly/3EQ7wbf" class="imagenParvo"></a> </center>
                    <h2 class="subtitulos">Síntomas</h2>
                    <p class="textoOOOO"> Suele desarrollarse de manera repentina una tos seca e intensa tras el contacto con un animal infectado. La tos se suele presentar con el ejercicio, cuando presionamos el cuello con la mano o cuando paseamos con una correa, en algunas ocasiones puede aparecer de manera espontánea. En algunos casos tras un episodio de tos seca intensa se puede producir un vómito blanco espumoso. </p>
                    <center><a href="https://bit.ly/3Vf1OVL" target="_blank"><img src="https://bit.ly/3VbxlYK" class="imagenParvo"></a> </center>
                    <h2 class="subtitulos">Prevenciones</h2>
                    <p class="textoOOOO">Se puede prevenir minimizando la exposición de nuestros animales al microorganismo, evitando colectividades de perros y mediante la vacunación. La capacidad de los perros para responder a las infecciones sin desarrollar síntomas clínicos graves se puede potenciar con una correcta nutrición, desparasitaciones periódicas y evitando situaciones de estrés.</p>
                    <center><a href="https://bit.ly/3Vf1OVL" target="_blank"><img src="https://bit.ly/3UYtFKa" class="imagenParvo"></a> </center>
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
