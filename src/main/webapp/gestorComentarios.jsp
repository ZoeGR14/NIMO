<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="imagenes/logo_nimo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestor de Comentarios</title>
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
                font-size: 16px;
                line-height: 1.5;
                
                background-size: cover;
                height: 100%;
                width: 100%;
                background-repeat: no-repeat;
            }
            

            :before, :after{
                box-sizing: border-box;
            }

            /*img{
                width: 100%;
            }*/

            .container{
                max-width: 1140px;
                margin: auto;
            }

            .row{
                display: flex;
                flex-wrap: wrap;
            }

            .logoni{
                    height: 70px;
            }

            #header{
                
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

            .nav li a{
                color: white;
                font-weight: 300;
                text-transform: capitalize;
                &.sticky{
                color: #fff;}
            }

            .nav li a:hover{
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
  background-color: rgba(0,0,0,0.45);
  color: #fff;
}
#sect2 {
  background-color: #dddddd7d;
  color: #333;
}

.imagensita {
  position: fixed;
  right: 0;
  bottom: 0;
  min-width: 105%;
  min-height: 100%;
  transform: translateX(calc((100% - 100vw) / 2));
  transform: translateY(100px);
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
    margin-top: 0%;
                margin-bottom: 50px;
                margin-left: 150px;
                display: grid;
  grid-template-columns: repeat(3, 1fr); /* establece 3 columnas con ancho igual */
  grid-auto-rows: minmax(100px, 700px); /* establece una altura mínima de 100px */
  grid-gap: 100px; /* establece el espacio entre los elementos */
}
.cardContainer {
  width: 430px;
  height: 450px;
  background-color: rgb(255, 255, 255);
  display: flex;
  align-items: center;
  justify-content: center;
  position: relative;
  transition-duration: .5s;
  border-radius: 10px;
  margin-top: 55%;
}

.profileDiv {
  z-index: 2;
  width: 100%;
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  background-color: #34B912;
  transition-duration: .5s;
  color: white;
  font-family: Whitney, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica, Arial, sans-serif;
  font-weight: 500;
  font-size: 20px;
  border-radius: 10px;
}

.cardContainer:hover .profileDiv {
  transform: translateX(-25%) translateY(-20%);
  transition-duration: .5s;
}

.infoDiv {
  position: absolute;
  width: 100%;
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  background-color: aliceblue;
  z-index: 1;
  border-radius: 10px;
  background-color: rgba(255, 255, 255,0.3);
}

.nameDiv {
  width: 75%;
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: flex-end;
  background-color: aliceblue;
  font-family: Whitney, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica, Arial, sans-serif;
  gap: 2px;
  border-radius: 10px;
  background-color: rgba(255, 255, 255,0.3);
}

.name {
  margin: 0;
  padding: 0;
  font-size: 16px;
  font-weight: 500;
  color: black;
}

.role {
  margin: 0;
  padding: 0;
  font-size: 13px;
  font-weight: 400;
  color: rgb(48, 48, 48);
  margin-bottom: 5px;
}

.socialDiv {
  width: 25%;
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  color: rgb(14, 14, 14);
  gap: 25px;
  background-color: rgba(255, 255, 255,0.3);
  border-radius: 10px;
}

.infoDiv a {
  width: 50%;
}

.socials {
  width: 100%;
  fill: rgb(14, 14, 14);
}
.cardContainer1 {
  width: 430px;
  height: 450px;
  background-color: rgb(255, 255, 255);
  display: flex;
  align-items: center;
  justify-content: center;
  position: relative;
  transition-duration: .5s;
  border-radius: 10px;
  margin-top: 55%;
}

.profileDiv1 {
  z-index: 2;
  width: 100%;
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  background-color:#FF8243 ;
  transition-duration: .5s;
  color: white;
  font-family: Whitney, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica, Arial, sans-serif;
  font-weight: 500;
  font-size: 25px;
  border-radius: 10px;
}

.cardContainer1:hover .profileDiv1 {
  transform: translateX(-25%) translateY(-20%);
  transition-duration: .5s;
}

.infoDiv1 {
  position: absolute;
  width: 100%;
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  background-color: aliceblue;
  z-index: 1;
  border-radius: 10px;
  background-color: rgba(255, 255, 255,0.3);
}

.nameDiv1 {
  width: 75%;
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: flex-end;
  background-color: aliceblue;
  font-family: Whitney, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica, Arial, sans-serif;
  gap: 2px;
  border-radius: 10px;
  background-color: rgba(255, 255, 255,0.3);
  color: #FF8243 ;
    font-family: Whitney, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica, Arial, sans-serif;
  font-weight: 500;
  font-size: 25px;
}

.name1 {
  margin: 0;
  padding: 0;
  font-size: 16px;
  font-weight: 500;
  color: black;
}

.role1 {
  margin: 0;
  padding: 0;
  font-size: 13px;
  font-weight: 400;
  color: rgb(48, 48, 48);
  margin-bottom: 5px;
}

.socialDiv1 {
  width: 25%;
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  color: rgb(14, 14, 14);
  gap: 25px;
  background-color: rgba(255, 255, 255,0.3);
  border-radius: 10px;
}

.infoDiv1 a {
  width: 50%;
}

.socials1 {
  width: 100%;
  fill: rgb(14, 14, 14);
}

.bottar1{
    background-color: rgba(255, 255, 255,0.3);
    border: none;
    cursor: pointer;
}


        </style>
        <script src="sweetalert2.all.min.js"></script><!-- comment -->    </head>
    <body>
        <%
            HttpSession sesion = request.getSession();
            String usuario;
            String tipo;

            if (sesion.getAttribute("user") != null && sesion.getAttribute("tipo_usuario") != null) {
                usuario = sesion.getAttribute("user").toString();
                tipo = sesion.getAttribute("tipo_usuario").toString();
                
if (tipo.equals("4")){

        %>
    <header class="headersito" id="header">
        <a href="cierreSesion.jsp" class="logoin">
                <img src="imagenes/logo_nimo.png" alt="" class="logoni" draggable="false">
            </a>
            <ul class="nav">
                <li><a href="administrador.jsp"> Inicio</a></li>
                <li><a href="gestorVeterinarios.jsp">Veterinarios</a></li>
                <li><a href="gestorComentarios.jsp">Comentarios</a></li>
                <li><a href="gestorUsuarios.jsp">Usuarios</a></li>
                <li><a href="cierreSesion.jsp">Cerrar Sesión</a></li>
            </ul>
        </header>
<%
    }
else{

%>
    <header class="headersito" id="header">
        <a href="cierreSesion.jsp" class="logoin">
                <img src="imagenes/logo_nimo.png" alt="" class="logoni" draggable="false">
            </a>
            <ul class="nav">
                <li><a href="cierreSesion.jsp">Cerrar Sesión</a></li>
            </ul>
        </header>
<%
    }
%>
        
    <img src="imagenes/writeComment.png" class="imagensita">
  
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
                Statement sta4 = null;
                ResultSet rs4 = null;
                String tipi = "";

                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    cnx  = DriverManager.getConnection("jdbc:mysql://localhost:3306/NimoBase?autoReconnect=true&useSSL=false","root","n0m3l0");                               
                    sta = cnx.createStatement();
                    int num = 2;
                    rs = sta.executeQuery("select * from comentarios where tipo_coment='"+num+"';");
                    while (rs.next()) {
                    String idd = rs.getString(1);
                    int nidd = Integer.parseInt(idd);
                    sta2 = cnx.createStatement();
                    rs2 = sta2.executeQuery("select * from usu_coment where id_coment='"+nidd+"';");
                    while (rs2.next()) {
                    String user = rs2.getString(2);
                    sta3 = cnx.createStatement();
                    rs3 = sta3.executeQuery("select * from usuario where usuar='"+user+"';");
                    while (rs3.next()) {
                    

                        
                        %>
      
        <div class="cardContainer">
            <div class="profileDiv">
                <center>
                    Comentario:<br> <%=rs.getString(2)%><br><br><br>
                    Usuario:&nbsp; <%=rs3.getString(1)%><br><br> 
                    Nombre:&nbsp; <%=rs3.getString(8)%>&nbsp; <%=rs3.getString(6)%>&nbsp; <%=rs3.getString(7)%><br><br>     
                    E-mail:&nbsp; <%=rs3.getString(10)%> 
                </center>
            </div>
            <div class="infoDiv">
                <div class="nameDiv"></div>
                <div class="socialDiv">        
                                    
                    
                                    <a href="mailto:<%out.println(rs3.getString(10));%>?subject=Comentarios NIMO&body=Hola! Este es un correo mandado desde NIMO para brindar soporte a tu comentario">
                                        <img src="imagenes/Correocomen.png" alt="alt">
                                    </a>
                                    
                                        
                                    
                    
                </div>
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
        <%
                Connection con = null;
                Statement stat = null;
                ResultSet re = null;

                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/NimoBase?autoReconnect=true&useSSL=false","root","n0m3l0");                               
                    stat = con.createStatement();
                    int num = 1;
                    re = stat.executeQuery("select * from comentarios where tipo_coment='"+num+"';");
                    while (re.next()) {
                    
                    

                        
                        %>
      
        <div class="cardContainer1">
            <div class="profileDiv1">
                <center>
                    Comentario:<br><br> <%=re.getString(2)%><br><br><br>
                   
                </center>
            </div>
            <div class="infoDiv1">
                <div class="nameDiv1"><center>Comentario Enviado por Invitado</center></div>
                <div class="socialDiv1">        
                                    
                                        
                                    
                    
                </div>
            </div>
        </div>

  
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
            </section>
        
        <%
            } else {
                out.print("<script>location.replace('ini_sesion.jsp');</script>");
            }
        %>
    </body>
</html>