<%@page contentType="text/html" pageEncoding="UTF-8"%><!DOCTYPE html>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <title>Moquillo</title>
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
                    <h1 class="titulo">Moquillo</h1>
                    <h2 class="subtitulos">¿Qué es el moquillo canino?</h2>
                    <p class="textoOOOO">Cuando un cachorro perruno entra a formar parte de nuestra familia, una de las mayores preocupaciones que nos quitan el sueño es que nuestra querida mascota pueda enfermar o contagiarse de algún virus grave antes de ser vacunado y que eso ponga en serio peligro su vida.<br>
                        Una de esas patologías, consideradas peligrosas y que afecta principalmente a cachorros domésticos es el moquillo canino o distemper, una enfermedad vírica grave, similar al sarampión humano, muy contagiosa y con altos índices de mortalidad, El moquillo ataca fundamentalmente al aparato digestivo, respiratorio e incluso al sistema nervioso central de nuestra mascota.<br>
                        Hablamos, por tanto, de una enfermedad extremadamente grave y potencialmente mortal, sobre todo para aquellos perros que no han sido vacunados previamente. Por tanto, se puede intentar prevenir el desarrollo del virus mediante vacunaciones específicas para aumentar su inmunidad. En las siguientes líneas desde el equipo del Hospital Veterinario Nacho Menes explicaremos cómo prevenir esta enfermedad o cómo identificar sus síntomas, en el caso de que nuestro perro ya la tuviera.</p>
                    <center><a href="https://hvnachomenes.com/blog/que-es-el-moquillo-canino-y-como-podemos-identificar-sus-sintomas/" target="_blank"><img src="https://cdn.redcanina.es/wp-content/uploads/2018/12/10151200/cuidados-perro-con-moquillo-750x375.jpg" class="imagenParvo"></a> </center>
                    <p class="textoOOOO">La manera más frecuente de contagio en perros es mediante la inhalación de partículas virales que se encuentren flotando en el ambiente.  Aunque el moquillo también puede transmitirse a través del contacto directo del cachorro con los fluidos de otros canes infectados, incluyendo agua y comida.</p>
                    <center><a href="https://hvnachomenes.com/blog/que-es-el-moquillo-canino-y-como-podemos-identificar-sus-sintomas/" target="_blank"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWzd0Cc-znlEVeMLEDT6c23yEu9FpY1u3Omg&usqp=CAU" class="imagenParvo"></a> </center>
                    <h2 class="subtitulos">Síntomas principales</h2>
                    <p class="textoOOOO">Una vez que nuestro cachorro ya está en casa, es muy importante protegerlo al máximo, evitando, en la medida de lo posible, que salga al exterior antes de ser vacunado. Pero si por alguna razón, nos vemos obligados a ello, ¿cómo podemos saber si nuestra mascota se ha contagiado de moquillo? En el caso de haber contraído el virus, las primeras señales suelen hacer acto de presencia entre el tercer y sexto día.

                        <br>Así que debemos estar muy atentos a cualquier indicio físico o comportamiento extraño que tenga nuestra mascota para llevarle al veterinario cuánto antes con el fin de hacerle las pruebas pertinentes que confirmen el diagnóstico. En estos casos, actuar con rapidez resulta clave. A continuación, exponemos algunos de los síntomas más comunes que puede presentar nuestro amigo peludo:</p>
                    <ul class="listitauwu">
                        <li>Fiebre</li>
                        <li>Falta de apetito</li>
                        <li>Desmotivación</li>
                        <li>Secreción nasal acuosa o con pus</li>
                        <li>Vómitos y diarrea</li>
                        <li>Deshidratación</li>
                        <li>Dificultad al respirar y tos</li>
                        <li>Erupciones en la piel</li>
                        <li>Endurecimiento de las almohadillas</li>
                        <li>Enrojecimiento ocular o conjuntivitis</li>
                        <li>Convulsiones</li>
                        <li>Movimientos en la mandíbula</li>
                        <li>Inlinación de la cabeza o parálisis</li>
                    </ul><br><br>
                    <center><a href="https://hvnachomenes.com/blog/que-es-el-moquillo-canino-y-como-podemos-identificar-sus-sintomas/" target="_blank"><img src="https://klean-vet.com/wp-content/uploads/2021/12/moquillo-en-perros.jpg" class="imagenParvo"></a> </center>
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
