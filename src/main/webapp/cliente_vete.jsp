<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="imagenes/logo_nimo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Archivo+Black&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@400;600;700&display=swap');

            *{
                padding: 0;
                margin: 0;
                text-decoration: none;
                box-sizing: border-box;
                scroll-behavior: smooth;
                outline: none;
                list-style: none;
                -webkit-user-select: none;
                user-select: none;
                font-family: 'Poppins', sans-serif;
            }
            body{
                margin: 0;
                padding: 0;
                min-height: 100vh;
                background: url('imagenes/bybyby.jpg');
                display: flex;
                justify-content: center;
                align-items: center;
                background-size: cover;
                background-repeat: repeat-y;
            }
                        .row{
                display: flex;
                flex-wrap: wrap;
            }

            .logoni{
                height: 70px;
            }
            #header{
                background: #4b277a;
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                padding: 10px 20px;
                z-index: 100;
                display: flex;
                justify-content: space-between;
                align-items: center;
                transition: .5s;
            }

            .nav{
                position: relative;
                display: flex;
            }

            .nav li{
                margin: 0 0 0 30px;
            }
            .desplegar{
            background-color: transparent;
            cursor: pointer;
            font-size: 16px;
            }
            .nav li a, .desplegar{
                color: #fff;
                font-weight: 300;
                text-transform: capitalize;
                &.sticky{
                    color: #fff;
                }
            }

            .nav li a:hover, .desplegar:hover{
                color: #c59bfb;
                font-weight: 300;
                text-transform: capitalize;
            }
            body {
  position: relative;
  margin: 0;
}
.sect {
  width: 100%;
  min-height: 100vh;
}
#sect1,
#sect3 {
  background-color: #3333337d;
  color: #fff;
}
#sect2 {
  background-color: #dddddd7d;
  color: #333;
}

video {
  position: fixed;
  right: 0;
  bottom: 0;
  min-width: 105%;
  min-height: 100%;
  transform: translateX(calc((100% - 100vw) / 2));
  z-index: -2;
}
h1 {
  margin: 0;
  padding-top: 3rem;
  padding-left: 2rem;
}
h2 {
  margin: 0;
  padding-top: 3rem;
  padding-left: 2rem;
}

.gridd{
    margin-top: 15%;
                margin-bottom: 50px;
                margin-left: 150px;
                display: grid;
  grid-template-columns: repeat(3, 1fr); /* establece 3 columnas con ancho igual */
  grid-auto-rows: minmax(100px, 700px); /* establece una altura mínima de 100px */
  grid-gap: 100px; /* establece el espacio entre los elementos */
}

.card {
  width: 350px;
  height: 450px;
  background: #8E5431;
  transition: all 0.4s;
  border-radius: 10px;
  box-shadow: 0px 0px 10px 5px  rgba(0, 0, 0, 0.705);
  font-size: 23px;
  font-weight: 600;
}

.card:hover {
  border-radius: 15px;
  cursor: pointer;
  transform: scale(1.2);
  box-shadow: 0px 0px 10px 5px  rgba(0, 0, 0, 0.705);
  background: #744C24;
}

.first-content {
  height: 100%;
  width: 100%;
  transition: all 0.4s;
  display: flex;
  justify-content: center;
  align-items: center;
  opacity: 1;
  border-radius: 15px;
}

.card:hover .first-content {
  height: 0px;
  opacity: 0;
    font-size: 23px;
  font-weight: 600;
}

.second-content {
  height: 0%;
  width: 100%;
  opacity: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  border-radius: 15px;
  transition: all 0.4s;
  font-size: 0px;
  transform: rotate(90deg) scale(-1);
}

.card:hover .second-content {
  opacity: 1;
  height: 100%;
  font-size: 1.8rem;
  transform: rotate(0deg);
}
.texto22{
    font-size: 17px;
  font-weight: 600;
  justify-content: center;
  align-items: center;
}

        </style>
    </head>
    <body>
        <%
            HttpSession sesion = request.getSession();
            String usuario;
            String tipo;

            if (sesion.getAttribute("user") != null && sesion.getAttribute("tipo_usuario") != null) {
                usuario = sesion.getAttribute("user").toString();
                tipo = sesion.getAttribute("tipo_usuario").toString();

        %>
    <header class="headersito" id="header">
        <a href="cierreSesion.jsp" class="logoin">
                <img src="imagenes/logo_nimo.png" alt="" class="logoni" draggable="false">
            </a>
            <ul class="nav">
                <li><a href="inicio_vete.jsp" class="inicio">Inicio</a></li>
                <li><a href="misMascotas_1.html" class="">Mis Mascotas</a></li>
                <li><a href="calendario_1.html" class="">Calendario</a></li>
                <li><a href="informativo_1.html" class="">Información Mascotas</a></li>
                <li><a href="comunidad_1.html" class="">Comunidad</a></li>
                <li><a href="notas_1.html" class="">Notas</a></li>
                <li><a href="citas_1.html" class="">Citas</a></li>
                <li><a href="saludBienestar_1.html" class="">Salud y Bienestar</a></li>
                <li><a href="calendario.html" class="">Calendario</a></li>
                <li><a href="soyVeterinario.jsp" class="">Opciones Veterinario</a></li>
                <li><a href="config_vete.jsp" class="">Configuración</a></li>
                <li><a href="cierreSesion_1.jsp" class="">Cerrar Sesión</a></li>
            </ul>
        </header>
        <br>
<br>
        <br>
        <br>
        <br>
        
        <video src="imagenes/video/animated dogs on a purple flower field landscape.mp4" autoplay="true" muted="true" loop="true" poster="https://carontestudio.com/img/contacto.jpg"></video>
  
        <section id="sect1" class="sect">
            <div class="gridd">
            
        <%
                Connection cnx = null;
                Statement sta = null;
                ResultSet rs = null;
                Statement sta2 = null;
                ResultSet rs2 = null;
                Statement sta3 = null;
                ResultSet rs3 = null;

                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    cnx  = DriverManager.getConnection("jdbc:mysql://localhost:3306/NimoBase?autoReconnect=true&useSSL=false","root","n0m3l0");                               
                    sta = cnx.createStatement();
                    rs = sta.executeQuery("select * from veterinario where usuar='"+usuario+"'");
                    while (rs.next()) { 
                        String cedula = rs.getString(1);
                        int ced = Integer.parseInt(cedula);
                        sta2 = cnx.createStatement();
                        rs2 = sta2.executeQuery("select * from veterinario_cliente where cedula='"+ced+"'");
                        while (rs2.next()) { 
                        String client = rs2.getString(1);
                        sta3 = cnx.createStatement();
                        rs3 = sta3.executeQuery("select * from usuario where usuar='"+client+"'");
                        while (rs3.next()) { 
                        %>
      
        
        
    <div class="card">
  <div class="first-content">
      <center>
                            <span>
                                Cliente <br>
                            <%=rs3.getString(8)%>&nbsp;<%=rs3.getString(6)%>&nbsp;<%=rs3.getString(7)%>
                            </span>
      </center>
  </div>
  <div class="second-content">
      <center>
          <span class="texto22">
                                
                                Teléfono:&nbsp;&nbsp;<%=rs3.getString(3)%><br>
                                E-mail:<br><%=rs3.getString(10)%>
                            </span>
      </center>

  </div>


</div>
  
<%
                }}}
                        sta.close();
                        cnx.close();
                        rs.close();
                    }
                    catch (SQLException error){
                        out.print(error.toString());
                    }
                %>
            </div>
            </section>
        
        <%
            } else {
                out.print("<script>location.replace('ini_sesion.jsp');</script>");
            }
        %>
    </body>
</html>