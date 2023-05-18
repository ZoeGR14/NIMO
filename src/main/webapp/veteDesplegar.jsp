<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="imagenes/logo_nimo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contacta Veterinarios</title>
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
                background: url('imagenes/fondovetes.png');
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
html,
body {
  height: 100vh;
  overflow: hidden;
}

.parent {
  margin-left: 50%;
  overflow: scroll;
  overflow-x: hidden;
  height: 60%;
  width: 40%;
  scroll-snap-points-y: repeat(100vh);
  scroll-snap-type: y mandatory;
  justify-content: center;
  align-items: center;
  box-shadow: 20px 20px 50px rgba(0,0,0,0.5);
    border-radius: 15px;
    background: rgba(255,255,255,0.8);
    backdrop-filter: blur(10px);
  scrollbar-width: thin;
  
}

/* width */
::-webkit-scrollbar {
    border-radius: 15px;
  width: 10px;
}

/* Track */
::-webkit-scrollbar-track {
    border-radius: 15px;
  background: #f1f1f1; 
}
 
/* Handle */
::-webkit-scrollbar-thumb {
    border-radius: 15px;
  background: rgba(255,250,179,0.8);
}

/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
  background: rgba(255,250,179,1); 
}

section {
  height: 100%;
  scroll-snap-align: start;
  position: relative;
}

p{
    font-weight: 300;
                font-size: 30px;
}
section button{
    background-color: #4b277a;
    color: white;
    padding:  0.5rem 0.8rem;
    border-radius: 2rem;
    transition: .5s;
    margin-top: 10px;
    text-decoration: none;
    cursor: pointer;
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
            <form method="post" action="Controler">
            <ul class="nav">
                <li><a href="inicio.jsp" class="inicio">Inicio</a></li>
                <li><button class="desplegar" name="accion" value="Visualizar mis mascotas" style="border: none;">Mis Mascotas</button></li>
                <li><a href="calendario.html" class="">Calendario</a></li>
                <li><a href="informativo.html" class="">Información Mascotas</a></li>
                <li><a href="comunidad.html" class="">Comunidad</a></li>
                <li><button class="desplegar" name="accion" value="Visualizar mis notas" style="border: none;">Notas</button></li></form>
                <li><a href="citas.html" class="">Citas</a></li>
                <li><a href="saludBienestar.html" class="">Salud y Bienestar</a></li>
                <li><a href="config_usu.jsp" class="">Configuración</a></li>
                <li><a href="cierreSesion.jsp" class="">Cerrar Sesión</a></li>

            </ul>
        </header>
        <br>
        <div class="parent row">

  

                
                
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
                    cnx  = DriverManager.getConnection("jdbc:mysql://localhost:3308/NimoBase?autoReconnect=true&useSSL=false","root","n0m3l0");                               
                    sta = cnx.createStatement();
                    rs = sta.executeQuery("select * from usuario where tipo_us='2'");
                    while (rs.next()) { 
                        String user = rs.getString(1);
                        sta2 = cnx.createStatement();
                        rs2 = sta2.executeQuery("select * from veterinario where usuar='"+user+"'");
                        while (rs2.next()) { 
                %>
                <section>
                    <center>
                        <br><br><br>
                    <h1>Veterinario:&nbsp;<%=rs.getString(8)%>&nbsp;<%=rs.getString(6)%>&nbsp;<%=rs.getString(7)%></h1>
                    <br>
                            <p class="tip">Cédula:&nbsp;&nbsp;<%=rs2.getString(1)%></p><br>
        <p class="tip">Clínica:&nbsp;&nbsp;<%=rs2.getString(2)%></p><br>
        <p class="tip">Teléfono:&nbsp;&nbsp;<%=rs.getString(3)%></p><br>
        <p class="tip">E-mail:&nbsp;&nbsp;<%=rs.getString(10)%></p><br>
        <form class="login-card-form" action="dudasycontactoVete.jsp" method="post" name="contactV">
                                    <input type="hidden" name="veterinarioR" value="<%=rs2.getString(1)%>" required>
                                    <button type="submit" name="pedirVet">
                                        Contacto
                                    </button>
                                </form>
                    </center>
                </section>
                


            <%
                    }
%>

<%
}
                        sta.close();
                        cnx.close();
                        rs.close();
                    }
                    catch (SQLException error){
                        out.print(error.toString());
                    }
                %>
       </div>         
        
        <%
            } else {
                out.print("<script>location.replace('ini_sesion.jsp');</script>");
            }
        %>
    </body>
</html>