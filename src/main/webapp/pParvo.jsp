<%@page contentType="text/html" pageEncoding="UTF-8"%><!DOCTYPE html>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <title>Parvovirus</title>
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
                    <h1 class="titulo">Parvovirus</h1>
                    <h2 class="subtitulos">¿Qué es?</h2>
                    <p class="textoOOOO">Se trata de una enfermedad que debe considerarse en todo perro joven que presente un cuadro agudo de vómitos y diarrea. Estos síntomas ocurren como consecuencia de la acción de un virus de la familia Parvoviridae, que penetra en el cuerpo a través de fosas nasales o la boca así como a través de elementos que estuvieron en contacto con materia fecal contaminada. El virus avanza por diferentes órganos transformándose en una enfermedad sistémica. Entre los 3 y los 12 días posteriores al contagio, el animal elimina grandes cantidades de virus con las heces, que contaminan el ambiente.
                        La enfermedad se caracteriza fundamentalmente por un cuadro gastroentérico, aunque también hay una forma cardiaca que en la actualidad es de muy baja incidencia. Las condiciones sanitarias del cachorro influyen en el desarrollo de la enfermedad. Son más vulnerables al parvovirus aquellos animales con una infestación masiva de parásitos, con mala nutrición o en un ambiente con higiene deficiente. La forma gastroentérica afecta a cachorros entre los 2 y 12 meses de edad, los adultos y seniles difícilmente enferman.</p>
                    <center><a href="https://www.tiendanimal.es/articulos/parvovirus/" target="_blank"><img src="https://t1.ea.ltmcdn.com/es/posts/1/1/0/parvovirus_canino_contagio_sintomas_y_tratamiento_20011_orig.jpg"class="imagenParvo"></a> </center>
                    <h2 class="subtitulos">Síntomas y tratamientos</h2>
                    <p class="textoOOOO">Entre los síntomas encontramos decaimiento, falta de apetito, aumento de la temperatura, dolor abdominal, vómitos y diarrea, que comienza amarillenta grisácea y se hará luego sanguinolenta y con un olor característico. Todo esto lleva a la deshidratación del cachorro. Estos signos son muy genéricos, de modo que podrían confundirse con los síntomas propios de otras enfermedades como: gastroenteritis por cuerpos extraños, parásitos, enteritis bacterianas, virales o intoxicaciones.
                        La parvovirosis es una enfermedad que evoluciona rápidamente. Su duración es de una semana aproximadamente y conlleva un gran deterioro del estado general del animal, por lo que su diagnóstico y posterior tratamiento deben hacerse lo antes posible. Dicho tratamiento consiste en paliar los síntomas, restablecer la hidratación con suero endovenoso, antibióticos, antieméticos y dietas especiales cuando el cachorro comience a tolerar el alimento sólido.
                        Al igual que el <a href="pMoquillo.jsp" target="_blank">moquillo</a>, la parvovirosis es una enfermedad muy peligrosa para tu mascota. Pero puede evitarse fácilmente con la correcta vacunación de tu cachorro y la revacunación anual de tu perro adulto. Desde TiendAnimal te recomendamos que cuides con mucho esmero la nutrición y la higiene de tu mascota y que consultes con tu veterinario de confianza para saber cuál es el plan de vacunas más indicado para tu cachorro.</p>
                    <center><a href="https://www.tiendanimal.es/articulos/parvovirus/" target="_blank"><img src="https://www.bunko.pet/__export/1632613991450/sites/debate/img/2021/09/25/cachorro_enfermo_crop1632613946475.jpeg_976912859.jpeg"class="imagenParvo"></a> </center>
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
