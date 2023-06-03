<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
    <head>
        <title>Comidas</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="comida.css" type="text/css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="menusito.css">
    </head>
    <body>
        <header>
            <div class="textoss">
                <h1 class="titulo">Comidas
                    </h2><p class="textito">Aquí podrás consultar las comidas que benefician o perjudican a tus mascotas</p>
            </div></header>
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
                <div class="apartadito">
                    <div class="grid">
                        <section class="questions__container">
                            <article class="questions__padding">
                                <div class="questions__answer">
                                    <h3 class="questions__title">
                                        COMIDA NO RECOMENDADA EN PERROS

                                        <span class="questions__arrow">
                                            <img src="./imagenes/arrow.svg" class="questions__img">
                                        </span>
                                    </h3>
                                    <p class="questions__show">
                                        Empezando por los más importantes:<br>
                                        <br>
                                        <b>• Uvas y pasas </b>
                                        <br>
                                        Las uvas normalmente resultan altamente tóxicas para nuestro canino, aún si es ingerida en pocas cantidades es muy probable que generen lgún tipo de fallas renal.<br>
                                        <br>
                                        <b>
                                            • Chcolate<br>
                                        </b>
                                        Indudablemente el chocolate es sumamente tóxico para los perros, igual que en el punto anterior, no importa la cantidad que consuman, la teovromia qu contiene el cacao es imposible de procesar para los perros.<br>
                                        <br>
                                        <b>• Cebolla</b>
                                        <br>
                                        La cebolla contiene varios compuestos azufrados que pueden llegar a destruir los glóbulos rojos de la sangre y causar anemia, no importa su presentación.<br>
                                        <br>
                                        <b>• Alcohol</b>
                                        <br>
                                        Definitivamente el alcohol es peligroso para los perros y puede causar daños graves ya que no lo toleran. Debemos evitar también que nuestro perro consuma alimentos que contengan alcohol.<br>
                                        <br>
                                        <b>• Bayas de acaí</b>
                                        <br>
                                        Aunque no hay estudios previos, éstas contienen teobromina, que es la sustancia por la cual se les prohíbe la ingesta del chocolate. <br>
                                        <br>
                                        <b>• Berenjena</b>
                                        <br>
                                        Al igual que el tomate, ésta contiene solanina, la cual es increíblemente tóxica para nuestros canes. <br>
                                        <br>
                                        <b>• Canela </b>
                                        <br>
                                        Cierta cantidad de ésta llega a volverse tóxica, ya que además de sus propiedades saludables, contiene cumarina, la cual afecta al hígado del perro. <br>
                                        <br>
                                        <b>• Mostaza </b>
                                        <br>
                                        La mostaza, tanto en su presentación engrano, como la que ingerimos los humanos , es altamente dañina para nuestros perros. Pues les causa diarrea y vómito. <br>
                                        <br>
                                        <b>• Nueces de Macadamia </b>
                                        <br>
                                        Éstas son conocidas por ser ricas en grasas, lo que puede llegar a producir problemas en el páncreas, mejor dicho, pancreatitis. Además de contemner un principio tóxico que contribuye a generar problemas neurológicos. <br>
                                        <br>
                                        <br>
                                        <b>Algunos alimentos a considerar:</b>
                                        <br>
                                        Estos alimentos son dificiles de digerir y procesar, por lo tanto no se recomienda su ingesta.<br>
                                        • Tomate (crudo) <br>
                                        • Setas <br>
                                        • Semillas y huesos de las frutas (por su contenido de cianuro) <br>
                                        • Levaduras <br>
                                        • Huesos <br>
                                        • Pescado crudo <br>
                                        • Cafeína <br>
                                        • Teína <br>
                                        • Dulces <br>
                                        • Aceite de oliva <br>
                                        • Amaranto <br>
                                        • Arroz <br>
                                        • Avena <br>
                                        • Espagueti <br>
                                        • Garbanzos <br>
                                        • Guisantes/Chícharos <br>
                                        • Leche <br>
                                        • Lentejas <br>
                                        • Limón <br>
                                        • Linaza <br>
                                        • Macarrones <br>
                                        • Mijo <br>
                                        • Naranja <br>
                                        • Palomitas <br>
                                        • Pan <br>
                                        • Pizza <br>
                                        • Quinoa (Sólo si no está bien preparada evitar su consumo) <br>
                                        • Soja <br>
                                        • Tallarines <br>
                                        <br>
                                        <br>
                                    </p>
                                </div>
                            </article>
                            <article class="questions__padding">
                                <div class="questions__answer">
                                    <h3 class="questions__title">
                                        COMIDA RECOMENDADA EN PERROS

                                        <span class="questions__arrow">
                                            <img src="./imagenes/arrow.svg" class="questions__img">
                                        </span>
                                    </h3>
                                    <p class="questions__show">
                                        •<b>Betabel </b>
                                        <br>
                                        Éste contiene altos niveles de vitamina A, C y E, mismas que le van a ayudar a fortalecer sus niveles de magnesio, hierro, potasio, calcio y fibra.<br>
                                        •<b>Aguacate </b>
                                        <br>
                                        Es un mito que el aguacate es tóxico para nuestros canes, realmente si les damos la pulsa (sin hueso, rabillo y piel), éste le hará mucho bien a su perro, más que nada porque las propiedades del aguacate sin muy saludables. Contiene fbra, vitaminas B5, B6, C, E y K. Además que el aguacate tiene más potasio que el mismo plátano y es un anticancerígeno.<br>
                                        •<b>Ajo </b>
                                        <br>
                                        Hay muchos mitos acerca de por qué darle ajo a tu perro puede hacerle daño, pero la verdad es que, a ciencia cierta, lo que importa del ajo es la cantidad que consuma tu animal, no es recomendable su ingesta en exceso, pero sí 1 gajo por semana a un perro de 6 kilos, lo que actuará como un antibiótico natural.<br>
                                        •<b>Albaricoque y Orejón </b>
                                        <br>
                                        Tanto los albaricoques (presentación en fresco), como los orejones (presentación en seco), son excelentes para nuestros perros, es necesario evitar l consumo del hueso, pero el comer la pulpa lo hará aumentar sus niveles de fibra y potasio.<br>
                                        •<b>Alcachofas </b>
                                        <br>
                                        Ésta es recomendada ofrecérselas en pequeñas cantidades y cociendo el corazón, pues las alcachofas contienen bastantes vitaminas y minerales beneficiosos.<br>
                                        •<b>Algas </b>
                                        <br>
                                        Hay una gran cantidad de algas que están indicadas para perros, como la Espirulina, la Chlorela y el Ascophylum Nodosum (la última siendo imprescindible en cualquier dieta natural cruda por su contenido de yodo).<br>
                                        •<b>Almendras </b>
                                        <br>
                                        Las almendras contienen más fibra que cualquier otro fruto seco. Además, proporcionan vitaminas B y E, grasas saludables y hierro a nuestros perros. <br>
                                        •<b>Aloe Vera </b>
                                        <br>
                                        Se trata de una planta muy versátil ayudando a curar heridas tanto dentro como fuera del cuerpo. El gel fresco de la planta se puede poner en heridas del perro o gato, ya que no es un problema cuando se lamen.<br>
                                        •<b>Apio </b>
                                        <br>
                                        Totalmente sano para nuestro perro, lleno de vitaminas (A, B, C) y minerales (calcio, sodio). <br>
                                        •<b>Arándanos </b>
                                        <br>
                                        Sí son beneficiosos para nuestros perros con moderación; además, son usados a menudo en comidas comerciales y puedes hacer deliciosos premios congelándolos.<br>
                                        •<b>Atún </b>
                                        <br>
                                        Es una gran fuente de proteína de alta calidad y se les puede dar, tanto cocido como crudo. Si tu perro está acostumbrado a los huesos, puedes dárselo con espinas. Si decides darles atún en lata, que sea en agua, no en aceite ni con ningún tipo de escabeche. <br>
                                        •<b>Avellanas </b>
                                        <br>
                                        Las avellanas no son tóxicas para ellos, aunque no deben estar en su dieta, hablamos de darle algo de vez en cuando, debido a la cantidad de grasa que tienen. Si tenemos perros pequeños, hay que ir alerta porque se pueden atragantar. <br>
                                        •<b>Plátano </b>
                                        <br>
                                        Por supuesto, los perros pueden comer bananas o plátano con moderación y, de hecho, muchos las adoran. Son mejores como premio que como comida por su alto contenido en azúcar. <br>
                                        •<b>Berros   </b>
                                        <br>
                                        De la familia del nabo y la mostaza. Es totalmente aceptable para la comida de nuestro perro. Rico en vitaminas, minerales y se dice que tiene propiedades anti-inflamatorias.<br>
                                        •<b>Berza </b>
                                        <br>
                                        Por supuesto que sí! Con muchos antioxidantes, es buena para los perros e incluso se le reconocen beneficios para la digestión, la piel y hasta propiedades anti-cancerígenas.
                                        <br>
                                        •<b>Boniato </b>
                                        <br>
                                        Geniales para perros, sobretodo cortado fino y deshidratado para usar como premio. A muchos perros les chifla, pero hay que evitar que se atiborren. Rico en betacaroteno y carbohidratos de bajo índice glucémico, mejores que las papas para nuestros perros.
                                        <br>
                                        •<b>Brócoli </b>
                                        <br>
                                        Sano y les encanta. Puedes dárselo en pequeñas cantidades (no más de un 10% de su ración) crudo o cocido tanto como snack como mezclado con su comida. Además tiene muchos nutrientes.
                                        <br>
                                        •<b>Cacahuates </b>
                                        <br>
                                        Buenos para nuestro perro, pero con moderación debido a su alto contenido en grasa. Son un snack fabuloso, a ellos les encanta, sobre todo la manteca de cacahuetes. Pueden contener aflatoxinas, mejor darlos en moderación. Y deberemos dárselos sin sal ni aditivos.
                                        <br>
                                        •<b>Calabacín </b>
                                        <br>
                                        Como el pepino, este es un vegetal sano y recomendable para nuestros perros. Compuesto de un 95% de agua y bajo en calorías, se lo podemos dar cocido, asado, a la plancha o en crudo, tanto en rodajas como premio como triturado a diario con su ración.
                                        <br>
                                        •<b>Calabaza </b>
                                        <br>
                                        Uno de esos alimentos fantásticos: baja en calorías, rica en fibra, vitaminas A, C y K, alfa y betacarotenos. Se puede dar cruda o cocida, mejor en puré o pequeños trocitos. Ayuda en casos de diarrea y constipados.
                                        <br>
                                        •<b>Calamares </b>
                                        <br>
                                        Los calamares son perfectamente aptos para él/ella y, aunque no va a pasar nada si le lanzas ese calamar rebozado y llenito de grasa, es recomendable que no sean muchos o incluso mejor, añadirlos crudos a su comida. Tienen buena proporción de proteína y son bastante magros. Como máximo, una vez a la semana en sustitución de la carne en su dieta es una buena medida.
                                        <br>
                                        •<b>Caqui </b>
                                        <br>
                                        Al igual que el durazno, tiene mucha vitamina C (aunque a los perros no les suele hacer falta), agua y fibra. Si se lo das maduro y evitáis el hueso para evitar accidentes.
                                        <br>
                                        •<b>Carne </b>
                                        <br>
                                        Vacuno, Pollo, Cordero, Ciervo o caza, un perro puede con casi todas las carnes de la naturaleza en crudo y debe constituir la gran parte de su dieta. Recomendable entre un 15 y un 20% de grasa en condiciones normales.
                                        <br>
                                        •<b>Chirimoya </b>
                                        <br>
                                        Una fruta dulce que está muy poquito en temporada y que a muchos les encanta. Si nos tomamos la molestia de quitar las pepitas podemos compartir un poquito con ellos, pero no de continuo porque tiene bastante azúcar. Es rica en B1, B2, B3, B9 y A, muchos minerales y fibra.
                                        <br>
                                        •<b>Ciruela </b>
                                        <br>
                                        Bien si es en poca cantidad, evitando la piel y cuando la ciruela está madura. Preferiblemente en trocitos junto con su comida. Tiene vitamina C y antioxidantes. Evitar siempre el hueso que, como con otras fruta, aunque en pequeña cantidad contiene cianuro y también puede obstruirles el tracto.
                                        <br>
                                        •<b>Coco </b>
                                        <br>
                                        Tanto el agua de coco como la carne es buena para ellos, siempre que no les demos nada de la cáscara marrón ni de los pelos exteriores. Constituye un premio estupendo seco o en su estado natural. El coco no es bajo en grasa, por lo que si nuestro perro necesita de control de peso es mejor no abusar de él.
                                        <br>
                                        •<b>Col </b>
                                        <br>
                                        La col es segura para ellos y a muchos les encanta, tanto la morada como la normal. Ayuda a la buena digestión y en procesos cancerígenos. Aunque se puede dar cruda en pocas cantidades, si quieres darle más es mejor cocerla, debido al tiocianato, que en cantidad puede inducir hipotiroidismo. Para evitar la flatulencias, empieza poco a poco y observa a tu perro.
                                        <br>
                                        •<b>Coliflor </b>
                                        <br>
                                        La coliflor es buena para los perros, por su alto contenido en vitamina C, cisteína, carotenos con propiedades depurativas. El único problema es que, como pasa con nosotros, dan gases, por lo que en general, cuando la demos queremos hacerlo muy poco a poco. Recuerda siempre cocerla antes de añadirla a su plato.

                                        <br>
                                        •<b>Dátiles </b>
                                        <br>
                                        No son tóxicos, pero demasiados pueden causar diarrea causada por los altos niveles de azúcar. Siempre dar sin la pepita, ya que podría quedarse retenida en su tracto intestinal.
                                        <br>
                                        •<b>Duraznos </b>
                                        <br>
                                        Siempre y cuando estén maduros, son adecuados para nuestros perros en la medida justa (la de fruta en la dieta barf). Hay que tener cuidado, sin embargo, con el hueso ya que, a parte de que se pueda atragantar, contiene pequeñas cantidades de cianuro que son tóxicas para los perros.
                                        <br>
                                        •<b>Endivia </b>
                                        <br>
                                        Como ocurre con las lechugas, sin problema. Hay que darle a probar al perro por si no le gustara (algunos tienen sus preferencias por las hojas dulces), pero en general no se quejan. Se puede cortar en trocitos y mezclar con su plato de comida, preferiblemente cruda y aportará fibra y vitaminas.
                                        <br>
                                        •<b>Espinacas </b>
                                        <br>
                                        Llenas de vitaminas A, B, C y K, beta-caroteno, fibra y hierro. Aunque hay leyendas, la espinaca es estupenda para nuestro perro aunque no siempre les gusta. Es incluso indicada en casos de perros con anemia. Si es cocinada, mejor poca cantidad, ya que presenta altos niveles de oxalatos, que pueden dar lugar a piedras en el riñón.
                                        <br>
                                        •<b>Frambuesas </b>
                                        <br>
                                        Con muchísima vitamina C y antioxidantes es una de las frutas de temporada que más color añaden a sus platos.
                                        <br>
                                        •<b>Fresas </b>
                                        <br>
                                        Cargadas de vitaminas, antioxidantes, fibra, son muy refrescantes: un premio perfecto para tu perro, al natural o congeladas. 
                                        <br>
                                        •<b>Huevo </b>
                                        <br>
                                        Los perros pueden comer huevos enteros crudos incluida clara, yema y cáscara, como parte habitual de su dieta. Lo recomendable para un perro de unos 30 kilos es de 1 a 2 huevos a la semana junto con su comida. No hace falta decir que tiene altas dosis de proteína y un gran valor nutritivo en vitaminas A, B y D, al margen del calcio claro. 
                                        <br>
                                        •<b>Ejote </b>
                                        <br>
                                        Con vitaminas A, K y C, magnesio y fibra, es un vegetal bueno para tus dietas caseras, siempre cocidas. Si escoges de lata, observa que no contengan sal. 
                                        <br>
                                        •<b>Jengibre </b>
                                        <br>
                                        En muy poquita cantidad puede ayudar a tu perro a superar episodios de mareo y náuseas, acidez e incluso, se ha estudiado su efecto beneficioso para prevenir la hinchazón de estómago o tratar inflamaciones. Hay que darlo rallado y crudo.
                                        <br>
                                        •<b>Lechuga </b>
                                        <br>
                                        En general todas las variedades de lechuga son seguras para nuestros perros, desde la romana, iceberg u otras variedades. No hace falta hervirla, aunque si es muy sensible, siempre se puede hacer. Tampoco hay regla para qué parte, a algunos les gustan enteras, a otros picadas, a unos verdes y a otros más la parte crujiente.
                                        <br>
                                        •<b>Levadura de Cerveza </b>
                                        <br>
                                        Fuente de muchos minerales y vitaminas, muy rica en vitamina B. Ayuda en la temporada de cambio de pelaje y para problemas de piel. Es importante saber que los perros con epilepsia no pueden comer levadura de cerveza, así como tampoco es recomendable para perros alérgicos. Se puede dar una cucharadita y hasta una cuchara por día, dependiendo del tamaño de nuestras mascotas, en las temporadas de cambio del pelo hasta dos semanas enteras.
                                        <br>
                                        •<b>Manzana  </b>
                                        <br>
                                        Una excelente elección como fruta para nuestro perro, rica en vitamina A, C y fibra. A muchos de ellos les encanta. Son geniales como premio, o metidas en el Kong y además ayudan a limpiar la dentadura. Se pueden dar con piel, evitando las pepitas, que son tóxicas, debidamente cortadas según el tamaño del perro.
                                        <br>
                                        •<b>Melón </b>
                                        <br>
                                        Cargado de vitaminas y minerales, es una fruta muy recomendable para perros y a menudo lo disfrutan, tanto los piel de sapo como los de galia. En verano, es estupendo para mantener la hidratación y cuidar la piel. Evita darles la cáscara y las pepitas, que no se digieren muy bien.
                                        <br>
                                        •<b>Miel </b>
                                        <br>
                                        La miel es un buen antibiótico natural y puede calmar dolores de garganta e inflamaciones intestinales. Una cuchara a la semana es un buen complemento y a la mayoría de nuestros amigos les encanta. No es aconsejable dar más debido a la cantidad de azúcar y mejor no dársela a los cachorros.
                                        <br>
                                        •<b>Moras </b>
                                        <br>La moras, igual que las frambuesas están cargadas de minerales y antioxidantes y son un complemento espectacular para la dieta de tu perro. Añade un par de ellas a su comida de vez en cuando (no siempre debido a los azúcares) y estarás completando su alimentación.

                                    </p>
                                </div>
                            </article>
                            <article class="questions__padding">
                                <div class="questions__answer">
                                    <h3 class="questions__title">
                                        COMIDA NO RECOMENDADA EN GATOS

                                        <span class="questions__arrow">
                                            <img src="./imagenes/arrow.svg" class="questions__img">
                                        </span>
                                    </h3>
                                    <p class="questions__show">
                                        <br>
                                        •<b>Huevos cocidos </b>
                                        <br>
                                        Nunca le des a tu gato huevos crudos, siempre en muy pequeños trozos y cantidades y habiéndolos cocido bien previamente.
                                        <br>
                                        •<b>Cereales </b>
                                        <br>
                                        El pan, los cereales, etc, pueden dificultar la digestión de tu gato y provocarle malestar, así que es mejor evitarlos. Vigila la composición del pienso para asegurarte de que la cantidad de cereales que contiene es la adecuada.
                                        <br>
                                        •<b>Algunas plantas </b>
                                        <br>
                                        Debemos tener mucho cuidado si tenemos plantas en casa, ya que hay varias que son tóxicas para los gatos. Entre ellas se encuentran la flor de Pascua, la adelfa y el lirio de los valles.
                                        <br>
                                        •<b>Dulces industriales y azúcar </b>
                                        <br>
                                        El azúcar, especialmente el presente en galletas, bollos, dulces industriales... es muy perjudicial para el gato. Nunca le des a tu gato algún alimento de ese tipo y mantenlos fuera de su alcance en casa.
                                        <br>
                                        •<b>Naranjas y uvas </b>
                                        <br>
                                        Por un lado, las uvas y las pasas pueden causar problemas renales al gato, y por otro, los cítricos les causará molestias y malestar estomacal. Así que, ¡evítalos!
                                        <br>
                                        •<b>Alcohol </b>
                                        <br>
                                        Esto puede parecer una obviedad, pero no hay que pasarlo por alto. Los gatos no digieren bien el alcohol y pueden intoxicarse, llegando a ser letal en ocasiones.
                                        <br>
                                        •<b>Chocolate, café y té </b>
                                        <br>
                                        Los tres están totalmente prohibidos en la dieta del gato, pues puede llegar a causarles incluso la muerte. 
                                        <br>
                                        •<b>Cebolla, ajo... </b>
                                        <br>
                                        Hay algunas verduras que debemos evitar en la alimentación de nuestro gato. Entre ellas se encuentran la cebolla, el ajo, la patata y el tomate. 
                                        <br>
                                        •<b>Setas </b>
                                        <br>Como sucede con los humanos, muchas setas no son tóxicas para los gatos, pero otras muchas sí que lo son e incluso pueden crecer en nuestro jardín (si tenemos la suerte de tener uno). Para prevenir, lo mejor es evitar que tenga setas a su alcance, pues muchas veces es imposible distinguir las que son tóxicas de las que no lo son.

                                    </p>
                                </div>
                            </article>
                            <article class="questions__padding">
                                <div class="questions__answer">
                                    <h3 class="questions__title">
                                        COMIDA RECOMENDADA EN GATOS

                                        <span class="questions__arrow">
                                            <img src="./imagenes/arrow.svg" class="questions__img">
                                        </span>
                                    </h3>
                                    <p class="questions__show">
                                        <br>
                                        •<b>Atún </b>
                                        <br>
                                        El atún es uno de los alimentos que fascinan a los gatos, sin embargo esto no quiere decir que esté recibiendo una dieta balanceada, ya que falta incorporar muchos otros nutrientes como son la fibra, vitaminas y minerales. Es por ello que Purina ha desarrollado dietas con este sabor que fascina a los gatos y que cuentan con todos esos nutrientes que nuestro gato necesita.
                                        <br>
                                        •<b>Cebollas y ajos </b>
                                        <br>
                                        Algunos alimentos para gatitos contienen este ingrediente. En pequeñas cantidades y de manera ocasional no le pasará nada a nuestro gato, sin embargo de manera repetida o en grandes cantidades puede romper los glóbulos rojos y provocar anemias importantes. No probemos, Purina cuenta con una gran variedad de dietas y sabores.
                                        <br>
                                        •<b>Carne de pollo, pavo y vaca </b>
                                        <br>
                                        Estas carnes (siempre cocinadas y nunca crudas) le proporcionan una gran cantidad de nutrientes al gato. El hígado, presente en la mayoría de los piensos, le proporcionará mucho hierro.
                                        <br>
                                        •<b>Pescado </b>
                                        <br>
                                        El pescado (cocinado) es muy beneficioso para los gatos y además les encanta. El mejor es el pescado blanco y siempre sin espinas, pero también puedes darle atún y trucha, que les suelen volver locos. Mejor que no sean de lata, pues llevan demasiada sal. 
                                        <br>
                                        •<b>Zanahoria, betabel... </b>
                                        <br>
                                        Algunas verduras, entre las que se encuentran las zanahorias, las acelgas, los calabacines y la remolacha, son aptas para los gatos. No obstante, no les suele gustar mucho lo verde. Lo emplean habitualmente para purgarse.
                                        <br>
                                        •<b>Embutido </b>
                                        <br>
                                        El jamón cocido y la pechuga de pavo en embutido son bajos en sal y grasas y altos en proteínas. Además, su sabor les encanta.
                                        <br>
                                        •<b>Durazno, sandía.. </b>
                                        <br>
                                        En general, las frutas son buenas para el gato, aunque hay algunas que te contaremos más adelante que convendría evitar. Entre las aptas se encuentran la sandía, el melón (ideales para que se refresquen en verano), el durazno y la pera.
                                        <br>
                                        •<b>Yogur natural </b>
                                        <br>Aunque los lácteos pueden no sentar muy bien al gato, no hay problema en darle un poco de yogur natural (siempre sin azúcares, edulcorantes ni sabores) de vez en cuando a modo de capricho, y en pequeñas cantidades.

                                    </p>
                                </div>
                            </article>
                        </section>
                    </div>
                </div>
            </section>
        </section>
        <script>
            (function () {
                const titleQuestions = [...document.querySelectorAll('.questions__title')];
                console.log(titleQuestions);
                titleQuestions.forEach(question => {
                    question.addEventListener('click', () => {
                        let height = 0;
                        let answer = question.nextElementSibling;
                        let addPadding = question.parentElement.parentElement;

                        addPadding.classList.toggle('questions__padding--add');
                        question.children[0].classList.toggle('questions__arrow--rotate');

                        if (answer.clientHeight === 0) {
                            height = answer.scrollHeight;
                        }

                        answer.style.height = height + 'px';
                    }
                    );
                }
                );
            }
            )();
        </script>
    </body><script src="prueba.js"></script>
</html>
