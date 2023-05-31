<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <title>Hipertiroidismo</title>
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
                    <h1 class="titulo">Hipertiroidismo</h1>
                    <h2 class="subtitulos">¿Qué es?</h2>
                    <p class="textoOOOO">El hipertiroidismo se produce cuando la glándula tiroides produce hormonas tiroideas en exceso. Es la enfermedad endocrina más común en gatos mayores de 8 años. (Una enfermedad endocrina es una enfermedad de los órganos que producen y secretan hormonas).<br><br>
                        En casi el 99 por ciento de los casos, el hipertiroidismo es causado por un tumor benigno (no canceroso) de la glándula tiroides. La glándula tiroides, en forma de mariposa, se encuentra en el cuello, con un lóbulo a cada lado. Desempeña un papel importante en la regulación del "motor" o tasa metabólica del cuerpo. Cuando la glándula tiroides produce una cantidad excesiva de hormonas tiroideas, hace que el "motor" del gato funcione a una velocidad anormalmente alta. Esta alta tasa metabólica afecta negativamente a casi todos los órganos del gato.
                    <center><a href="https://bit.ly/3UXWYg4" target="_blank"><img src="https://bit.ly/3tUBxQU" class="imagenParvo"></a> </center>

                    <h2 class="subtitulos">Síntomas</h2>
                    <p class="textoOOOO"> El síntoma más común de hipertiroidismo en los gatos es la pérdida de peso a pesar de tener un aumento de apetito. Otros síntomas comunes incluyen vómito, diarrea, hiperactividad, beber y orinar más de lo normal, y un pelaje descuidado. Debido a que la enfermedad se desarrolla gradualmente, los síntomas a menudo son fáciles de pasar por alto al principio.<br><br>
                        El hipertiroidismo a menudo resulta en presión arterial alta (hipertensión) y enfermedad cardíaca. La presión arterial alta se debe al aumento de la presión de bombeo del corazón. En algunos gatos, la presión sanguínea se eleva tanto que la retina se desprende de la pared posterior del ojo, lo que produce ceguera repentina. La enfermedad cardíaca se desarrolla porque el corazón debe bombear más rápido y con más fuerza para satisfacer las crecientes demandas metabólicas del cuerpo (debido a la aceleración del motor del gato). Para compensar este aumento de la carga de trabajo, los músculos del corazón se hacen más gruesos, lo que hace que el corazón se agrande y finalmente falle. El hipertiroidismo no tratado es casi 100 por ciento fatal.
                    <center><a href="https://bit.ly/3UXWYg4" target="_blank"><img src="https://bit.ly/3OukVcA" class="imagenParvo"></a> </center>

                    <br><h2 class="subtitulos">¿Cómo se diagnostica el hipertiroidismo en los gatos?</h2>
                    <p class="textoOOOO">Su veterinario puede sospechar que su gato tiene hipertiroidismo basado en los síntomas que describa y al sentir la glándula tiroides agrandada en el cuello de su gato. Su veterinario probablemente confirmará el diagnóstico haciendo pruebas de sangre que miden el nivel de las hormonas tiroideas de su gato.
                    <center><a href="https://bit.ly/3UXWYg4" target="_blank"><img src="https://bit.ly/3Es6SzA" class="imagenParvo"></a> </center>
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
