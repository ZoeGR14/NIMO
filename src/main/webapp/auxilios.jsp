<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <title>Primeros Auxilios</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="menusito.css">
        <link rel="stylesheet" href="estilos.css" type="text/css">
        <link rel="stylesheet" href="comida.css">

        <style>
            .apartadito{
                padding-bottom: 20px;
                padding-left: 20px;
                padding-right: 20px;
            }
            .imagensita {
                height: 12em;
                margin: 20px;
                border: 2px solid rgb(85, 19, 135);
                -webkit-box-shadow: 4px 4px 4px rgba(0,0,0,0.2);
                -moz-box-shadow: 4px 4px 4px rgba(0,0,0,0.2);
                box-shadow: 4px 4px 4px rgba(0,0,0,0.2);
                -webkit-transition: all 0.5s ease-out;
                -moz-transition: all 0.5s ease;
                -o-transition: all 0.5s ease;
            }
            .imagensita:hover {
                -webkit-transform: rotate(-7deg);
                -moz-transform: rotate(-7deg);
                -o-transform: rotate(-7deg);
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
            <section class="questions container">
                <h1 class="tile">Primeros Auxilios</h1>
                <div class="apartadito">
                    <div class="grid">
                        <section class="questions__container">
                            <article class="questions__padding">
                                <div class="questions__answer">
                                    <h3 class="questions__title">BOTIQUÍN DE PRIMEROS AUXILIOS
                                        <span class="questions__arrow">
                                            <img src="./imagenes/arrow.svg" class="questions__img">
                                        </span>
                                    </h3>
                                    <p class="questions__show">
                                        Tenga un botiquín de suministros para primeros auxilios básicos para las mascotas de su hogar. Muchos de los artículos del botiquín de primeros auxilios del hogar pueden usarse también para mascotas.
                                        <br><br><b>• NÚMEROS DE TELÉFONO IMPORTANTES</b> (veterinario, clínica de emergencia, control de envenenamiento, control de animales, policía para no emergencias)
                                        <br>
                                        <br><b>•</b> Una copia del <b>REGISTRO MÉDICO DE SU MASCOTA</b>
                                        <br>
                                        <br><b>• TERMÓMETRO DIGITAL</b> para tomar la temperatura de su mascota
                                        <br>
                                        <br><b>• BOZAL</b> para evitar mordeduras (NO lo use si su mascota está vomitando)
                                        <br>
                                        <br><b>• CORREA Y COLLAR ADICIONALES</b>
                                        <br>
                                        <br><b>• ROLLO DE GASA</b> para vendar heridas o amordazar a 
                                        un animal herido
                                        <br>
                                        <br><b>• TOALLAS LIMPIAS</b> para contener gatos, limpiar o para 
                                        usar como material acolchado
                                        <br>
                                        <br><b>• VENDAJES ANTIADHERENTES O TIRAS DE TELA LIMPIA</b> para controlar sangrados o proteger heridas
                                        <br>
                                        <br><b>• CINTA ANTIADHERENTE </b> para vendajes.
                                        <br>
                                        <br><b>• CINTA ADHESIVA </b>para asegurar vendajes
                                        <br>
                                        <br><b>• GOTERO </b>(o una jeringa larga sin aguja) para administrar tratamientos orales o lavar heridas.
                                        <br>
                                        <br><b>• GEL K-Y</b> (o versión gernérica) para proteger heridas, u ojos.
                                        <br>
                                        <br><b>• LECHE DE MAGNESIO O CARBÓN ACTIVADO </b>para absorber veneno.
                                        <br>
                                        <br><b>• PERÓXIDO DE HIDRÓGENO 3%</b>para inducir el vómito 
                                        (siempre contacte a su veterinario o centro para el 
                                        control de envenenamiento antes de inducir el vómito; 
                                        no use peróxido de hidrógeno en heridas.)
                                        <br>
                                        <br><b>• SOLUCIÓN SALINA </b>para limpiar heridas (la solución 
                                        salina que se vende para lentes de contacto funciona 
                                        bien para la mayoría de los casos.)
                                        <br>
                                        <br><b>• LOCALIZACIÓN DE JAULAS</b>
                                        <br>
                                    </p>
                                </div>
                            </article>
                            <center><a href="https://bit.ly/3i1RFxA" target="_blank"><img src="https://i0.wp.com/codigoespagueti.com/wp-content/uploads/2017/09/perro-rescatista.jpg?fit=1080%2C608&quality=80&ssl=1" class="imagensita"></a></center>
                            <article class="questions__padding">
                                <div class="questions__answer">
                                    <h3 class="questions__title"> POR SU SEGURIDAD
                                        <span class="questions__arrow">
                                            <img src="./imagenes/arrow.svg" class="questions__img">
                                        </span>
                                    </h3>
                                    <p class="questions__show">
                                        Si su mascota está lesionada, probablemente tenga dolor, esté 
                                        asustada y confusa. Tenga cuidado y evite ser lastimado, mordido o 
                                        rasguñado.
                                        <br>• Nunca asuma que una mascota, por muy mansa que sea, no 
                                        morderá o rasguñará aunque esté herida. El dolor y el miedo puede 
                                        hacer a los animales impredecibles o incluso peligrosos.
                                        <br>• No intente abrazar a una mascota herida, y siempre mantenga su 
                                        rostro alejado del hocico. Aunque este puede ser su primer impulso 
                                        para consolar a su mascota, esto solo podría asustarla más o 
                                        causarle dolor.
                                        <br>• Lleve a cabo cualquier examinación de manera lenta y cuidadosa. 
                                        Deténgase si su mascota se altera más.
                                        <br>• Conduzca cuidadosamente a la clínica veterinaria. No conduzca con 
                                        pánico o fuera de control, ya que esto lo pone en peligro a usted y a 
                                        su mascota.
                                    </p>
                                </div>
                            </article>
                            <center><a href="https://bit.ly/3i1RFxA" target="_blank"><img src="https://arc-anglerfish-arc2-prod-infobae.s3.amazonaws.com/public/NVWQSYGX3RC7ZBEHLPLDVXA3PU.jpg" class="imagensita"></a></center>

                            <article class="questions__padding">
                                <div class="questions__answer">
                                    <h3 class="questions__title">SI LA HERIDA ESTÁ SANGRANDO
                                        <span class="questions__arrow">
                                            <img src="./imagenes/arrow.svg" class="questions__img">
                                        </span>
                                    </h3>
                                    <p class="questions__show">
                                        • Aplique presión directa con una toalla o tela limpia por al menos 3 minutos antes de comprobar que el sangrado se haya detenido.<br>
                                        • Un sangrado severo puede rápidamente poner en riesgo la vida - lleve a su mascota con un veterinario inmediatamente si esto ocurre. Agregue más toallas encima de las toallas o vendas que haya aplicado previamente si se están empapando, pero no las retire, ya que podría interrumpir la formación de algún coágulo.
                                    </p>
                                </div>
                            </article>
                            <center><a href="https://bit.ly/3i1RFxA" target="_blank"><img src="https://cdn.pixabay.com/photo/2018/10/01/09/21/pets-3715733__480.jpg" class="imagensita"></a></center>

                            <article class="questions__padding">
                                <div class="questions__answer">
                                    <h3 class="questions__title">SI SU MASCOTA SE HA QUEMADO
                                        <span class="questions__arrow">
                                            <img src="./imagenes/arrow.svg" class="questions__img">
                                        </span>
                                    </h3>
                                    <p class="questions__show">
                                        • Colóquele un bozal y lave la quemadura con agua fresca (no fría). Busque atención veterinaria de inmediato.
                                    </p>
                                </div>
                            </article>
                            <center><a href="https://bit.ly/3i1RFxA" target="_blank"><img src="https://fotografias.lasexta.com/clipping/cmsimages01/2022/08/09/3FFA8546-05CE-4608-9B69-6602D02A4C58/cachorro-pomsky_98.jpg?crop=1183,666,x0,y103&width=1900&height=1069&optimize=high&format=webply" class="imagensita"></a></center>

                            <article class="questions__padding">
                                <div class="questions__answer">
                                    <h3 class="questions__title"> SI SU MASCOTA SUFRE UN GOLPE DE 
                                        CALOR
                                        <span class="questions__arrow">
                                            <img src="./imagenes/arrow.svg" class="questions__img">
                                        </span>
                                    </h3>
                                    <p class="questions__show">
                                        • Si no puede llevar inmediatamente a su mascota con un 
                                        veterinario, llévela a una zona sombreada y fuera de la luz 
                                        del sol directa. <br>
                                        • Coloque una toalla mojada fresca o fría alrededor del 
                                        cuello y cabeza de su mascota (no cubra los ojos, nariz o 
                                        boca de su mascota). Retire la toalla, exprímala, vuélvala a 
                                        mojar y colóquela de nuevo después de unos minutos. <br>
                                        • Vierta o utilice una manguera para verter agua 
                                        constantemente sobre el cuerpo del animal (especialmente 
                                        el abdomen y entre las patas traseras). Luego utilice sus 
                                        manos para retirar el agua mientras absorbe el calor 
                                        corporal.<br>
                                        • Lleve a su mascota a un veterinario lo antes posible
                                    </p>
                                </div>
                            </article>
                            <center><a href="https://bit.ly/3i1RFxA" target="_blank"><img src="https://cdn-3.expansion.mx/dims4/default/ac315c4/2147483647/strip/true/crop/2121x1414+0+0/resize/1800x1200!/format/webp/quality/90/?url=https%3A%2F%2Fcdn-3.expansion.mx%2F88%2Fd9%2F4a5b86c14d7283611473d1290c9f%2Ftienes-perrhijos-esto-es-lo-que-cuesta-mantener-a-tus-mascotas.jpg" class="imagensita"></a></center>

                            <article class="questions__padding">
                                <div class="questions__answer">
                                    <h3 class="questions__title"> SI SU MASCOTA ES MORDIDA POR UNA 
                                        SERPIENTE
                                        <span class="questions__arrow">
                                            <img src="./imagenes/arrow.svg" class="questions__img">
                                        </span>
                                    </h3>
                                    <p class="questions__show">
                                        • Asuma que la serpiente es venenosa y busque 
                                        atención veterinaria inmediatamente. Trate de 
                                        identificar a la serpiente si es posible hacerlo sin 
                                        riesgos; no trate de capturarla o de matarla. No lleve 
                                        la serpiente al consultorio del veterinario, con una 
                                        fotografía basta
                                    </p>
                                </div>
                            </article>
                            <center><a href="https://bit.ly/3i1RFxA" target="_blank"><img src="https://static.dw.com/image/15885952_303.jpg" class="imagensita"></a></center>


                            <article class="questions__padding">
                                <div class="questions__answer">
                                    <h3 class="questions__title"> SI SU MASCOTA SE ESTÁ ASFIXIANDO
                                        <span class="questions__arrow">
                                            <img src="./imagenes/arrow.svg" class="questions__img">
                                        </span>
                                    </h3>
                                    <p class="questions__show">
                                        Las mascotas que se están asfixiando tienen dificultades para 
                                        respirar, se tocan excesivamente el hocico, hacen sonidos de ahogo 
                                        al respirar o al toser y pueden tener sus labios o la lengua con una 
                                        coloración azul.
                                        <br>• Si su mascota aún puede respirar, manténgala calmada y busque 
                                        atención veterinaria de inmediato.
                                        <br>• Revise el hocico de su mascota para ver si se puede encontrar 
                                        algún objeto extraño. Si ve un objeto, trate de retirarlo con cuidado 
                                        con pinzas, pero tenga cuidado de no empujar más el objeto hacia 
                                        la garganta. Si no se puede alcanzar fácilmente, no pierda más 
                                        tiempo; lleve a su mascota con un veterinario inmediatamente.
                                        <br>• Si no puede retirar el objeto o si su mascota se colapsa, coloque 
                                        ambas manos a los lados de la caja torácica de su mascota y 
                                        aplique presión rápida y firmemente, o acuéstela de lado y golpee 
                                        la cara torácica firmemente con la palma de su mano 3-4 para 
                                        expulsar aire rápidamente de sus pulmones y empujar el objeto 
                                        desde atrás. Repita esto hasta que el objeto se desplace o hasta que 
                                        pueda llegar al consultorio del veterinario.
                                    </p>
                                </div>
                            </article>
                            <center><a href="https://bit.ly/3i1RFxA" target="_blank"><img src="https://unamglobal.unam.mx/wp-content/uploads/2019/05/Fotolia_210686824_Subscription_Monthly_M-990x556.jpg" class="imagensita"></a></center>

                            <article class="questions__padding">
                                <div class="questions__answer">
                                    <h3 class="questions__title"> SI SU MASCOTA NO ESTÁ RESPIRANDO
                                        <span class="questions__arrow">
                                            <img src="./imagenes/arrow.svg" class="questions__img">
                                        </span>
                                    </h3>
                                    <p class="questions__show">
                                        • Abra las vías respiratorias de su mascota sujetando con cuidado su lengua 
                                        y jalándola (fuera del hocico) hasta que esté plana. Revise su garganta para 
                                        ver si hay algún objeto extraño que esté bloqueando las vías respiratorias.
                                        <BR>
                                        • Lleve a cabo reanimación respiratoria manteniendo cerrado el hocico de 
                                        su mascota con su mano y respirando directamente en su nariz hasta 
                                        que vea su pecho expandirse. Una vez que el pecho se expanda, continúe 
                                        administrando reanimación respiratoria cada 4-5 segundos.
                                    </p>
                                </div>
                            </article>
                            <center><a href="https://bit.ly/3i1RFxA" target="_blank"><img src="https://play-lh.googleusercontent.com/xlnwmXFvzc9Avfl1ppJVURc7f3WynHvlA749D1lPjT-_bxycZIj3mODkNV_GfIKOYJmG" class="imagensita"></a></center>

                            <article class="questions__padding">
                                <div class="questions__answer">
                                    <h3 class="questions__title"> SI SU MASCOTA NO PRESENTA LATIDOS
                                        <span class="questions__arrow">
                                            <img src="./imagenes/arrow.svg" class="questions__img">
                                        </span>
                                    </h3>
                                    <p class="questions__show">
                                        No comience a realizar compresiones en el pecho hasta que haya asegurado 
                                        una vía respiratoria y haya comenzado la reanimación respiratoria.
                                        <br>• Recueste con cuidado a su mascota sobre su lado derecho en una superficie 
                                        firme. El corazón está localizado en el lado izquierdo, en la mitad inferior del 
                                        pecho, justo detrás del codo de la pata frontal izquierda. Coloque una mano 
                                        debajo del pecho de su mascota para sostenerla y la otra mano sobre el 
                                        corazón.
                                        <br>• En perros, aplique presión rápida y firme para hundir el pecho una pulgada 
                                        en perros de tamaño mediano. Aplique más fuerza en animales más 
                                        grandes y menos en animales más pequeños.
                                        <br>• Para gatos y otras mascotas pequeñas, coloque su mano alrededor del 
                                        pecho del animal de modo que el pulgar quede en el lado izquierdo del 
                                        pecho y sus otros dedos queden en el lado derecho, y comprima el pecho 
                                        presionándolo entre su pulgar y sus dedos.
                                        <br>• Presione de 80 a 120 veces por minuto en animales grandes y 100 a 150 
                                        veces por minuto en animales pequeños (menos de 25 libras).
                                        <br>• Alterne las compresiones pectorales con las reanimaciones respiratorias: 
                                        realice compresiones pectorales cada 4-5 segundos y deténgase lo 
                                        suficiente para dar una reanimación respiratoria.
                                        <br>• Continúe hasta que pueda escuchar un latido y su mascota comience a 
                                        respirar regularmente, o hasta que haya llegado a la clínica veterinaria y 
                                        puedan encargarse ahí de los intentos de resucitación.
                                        <br>Recuerde que la posibilidad de sobrevivir de su mascota con la resucitación 
                                        es muy baja. Sin embargo, en una emergencia, puede darle a su mascota una 
                                        única oportunidad
                                    </p>
                                </div>
                            </article>
                            <center><a href="https://bit.ly/3i1RFxA" target="_blank"><img src="https://elcomercio.pe/resizer/3axHoEjh4N0WLpWXl3kPsyfxeyA=/580x330/smart/filters:format(jpeg):quality(75)/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/SIYH3MDF7ZEKFNV763LM26MHNI.png"  class="imagensita"></a></center>

                            <article class="questions__padding">
                                <div class="questions__answer">
                                    <h3 class="questions__title"> SI SU MASCOTA SE HA ENVENENADO
                                        <span class="questions__arrow">
                                            <img src="./imagenes/arrow.svg" class="questions__img">
                                        </span>
                                    </h3>
                                    <p class="questions__show">
                                        • Si se entera o sospecha que su mascota ha consumido algo que pueda 
                                        hacerle daño, llame a su veterinario, clínica de emergencias veterinarias o al Centro para el Control de Envenenamiento de Animales 
                                        (800.426.4435 - disponible los 365 días del año, 24 horas al día; 
                                        aplica una tarifa de consulta) inmediatamente.
                                        <br><br>• De ser posible, tenga a la mano la siguiente información:
                                        <br>- Especie, raza, edad, sexo, peso y número de animales 
                                        involucrados
                                        <br>- Síntomas
                                        <br>- Nombre/descripción de la sustancia en cuestión; la cantidad 
                                        a la que el animal estuvo expuesto; y cuánto tiempo ha 
                                        pasado desde que su mascota consumió o estuvo 
                                        expuesta a dicha sustancia.
                                        <br>- El contenedor/empaque del producto disponible para referencia.
                                        <br><br>• Recolecte cualquier material que su mascota haya vomitado o 
                                        masticado, y colóquela en una bolsa de plástico sellable para 
                                        llevarla consigo cuando lleve a su mascota a que reciba tratamiento 
                                        veterinario.
                                        <br><br>• No trate de inducir el vómito ni dar algún medicamento a su 
                                        mascota a menos que en el Control de Envenenamiento o su 
                                        veterinario se lo indiquen.
                                    </p>
                                </div>
                            </article>
                            <center><a href="https://bit.ly/3i1RFxA" target="_blank"><img src="https://www.anahuac.mx/mexico/sites/default/files/noticias/Les-puede-dar-COVID-19-a-las-mascotas.jpg" class="imagensita"></a></center>

                            <article class="questions__padding">
                                <div class="questions__answer">
                                    <h3 class="questions__title"> SI SU MASCOTA ESTÁ SUFRIENDO 
                                        CONVULSIONES
                                        <span class="questions__arrow">
                                            <img src="./imagenes/arrow.svg" class="questions__img">
                                        </span>
                                    </h3>
                                    <p class="questions__show">
                                        • Despeje el área de otras mascotas, muebles y cualquier objeto 
                                        que pueda lastimarlo. No trate de sujetar a su mascota ni intente 
                                        liberarla de su convulsión.
                                        <br>• Tome el tiempo de la convulsión (generalmente dura 2-3 minutos).
                                        <br>• Una vez que la convulsión se haya detenido, mantenga a su 
                                        mascota cálida y tranquila y contacte a su veterinario.
                                    </p>
                                </div>
                            </article>
                            <center><a href="https://bit.ly/3i1RFxA" target="_blank"><img src="https://as01.epimg.net/deporteyvida/imagenes/2020/03/16/portada/1584361192_820498_1584361306_noticia_normal_recorte1.jpg" class="imagensita"></a></center>

                            <article class="questions__padding">
                                <div class="questions__answer">
                                    <h3 class="questions__title"> SI SU MASCOTA SE LESIONA
                                        <span class="questions__arrow">
                                            <img src="./imagenes/arrow.svg" class="questions__img">
                                        </span>
                                    </h3>
                                    <p class="questions__show">
                                        • Si es posible y seguro, trate de estabilizar las heridas antes de 
                                        mover a un animal herido mediante tablillas o vendas. Sin embargo, 
                                        tenga en cuenta que un vendaje o un entablillado mal aplicados 
                                        pueden causar más daño que beneficio; si tiene dudas, mejor deje 
                                        el vendaje/entablillado a los profesionales.
                                        <BR>• Si hay un cuerpo extraño en la herida, no lo retire. De ser 
                                        necesario, córtelo cuidadosamente sin moverlo para dejar 3-6 
                                        pulgadas de fuera antes de llevar a su mascota al veterinario.
                                        <BR>• Mientras transporta a su mascota, manténgala confinada en un 
                                        área pequeña para reducir el riesgo de más lesiones. Las jaulas 
                                        funcionan bien, pero también puede usar una caja u otro tipo de 
                                        contenedor (pero asegúrese de que la mascota tenga suficiente 
                                        aire). Para perros más grandes, puede usar un tablón, un trineo, 
                                        una cobija o algo similar a manera de camilla.
                                    </p>
                                </div>
                            </article>
                            <center><a href="https://bit.ly/3i1RFxA" target="_blank"><img src="https://minisomx.vtexassets.com/assets/vtex.file-manager-graphql/images/dc72ed6b-ea5d-4c81-b783-4be14c8df666___7a71c63a7fad68add87ba0d003f8dad0.webp" class="imagensita"></a></center>

                        </section>
                    </div>
                </div>
            </section>
        </section>

        <script src="auxi.js">
        </script>
    </body>
    <script src="prueba.js"></script>
</html>
