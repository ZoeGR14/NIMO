<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Eliminar cuenta</title>
        <link rel="stylesheet" href="loginn.css">
        <style>@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Archivo+Black&display=swap');
            body{
                background-color: #4b277a;
            }
                        

            .bgcolor{
                background-color: #4b277a;
                transition: all .35s ease-in-out;
              }
              
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
                background-color: #4b277a;
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
                color: #fff;
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

            .home{
                position: relative;
                width: 100%;
                min-height: 100%;
                background-color: #4b277a;
                background-size: cover;
                align-items: center;
                justify-content: center;
                display: grid;
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
            }

            
            .home .bodsito{
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
            }
            
            .home .bodsito .conteniendo{
                position: relative;
                display: flex;
                justify-content: center;
                align-items: center;
                flex-wrap: wrap;
                padding: 60px 0;
                gap: 65px;
            }
            
            .conteniendo .cajac{
                position: relative;
                width: 400px;
                height: 450px;
                background: rgba(255,255,255,.5);
                border-radius: 10px;
                display: flex;
                justify-content: center;
                align-items: center;
                margin-left: 40px;
            }
            

            
            .conteniendo .cajac .contenido-cajac{
                position: relative;
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
                text-align: center;
                gap: 30px;
                padding: 0 20px;
                width: 100%;
                height: 100%;
                overflow: hidden;
                border-radius: 10px;
            }
            
            .conteniendo .cajac .contenido-cajac .icon-cajac{
                color: var(--clr);
                width: 80px;
                height: 80px;
                box-shadow: 0 0 0 4px #2e2e2e, 0 0 0 6px var(--clr);
                display: flex;
                justify-content: center;
                align-items: center;
                font-size: 2.5em;
                background: #2e2e2e;
                transition: 0.5s ease-in-out;
            }
            
            .conteniendo .cajac:hover .contenido-cajac .icon-cajac{
                background: var(--clr);
                color: #2e2e2e;
                box-shadow: 0 0 0 4px #2e2e2e, 0 0 0 400px var(--clr);
            }

            .conteniendo .cajac .contenido-cajac .text-cajac{
                font-size: 1.5em;
                color: #2e2e2e;
                font-weight: 500;
                transition: 0.5s ease-in-out;
            }
            
            .conteniendo .cajac .contenido-cajac .text-cajac p{
                color: #666;
                transition: 0.5s ease-in-out;
            }
            
            .conteniendo .cajac:hover .contenido-cajac .text-cajac p{
                color: #2e2e2e;
            }
            
            .conteniendo .cajac .contenido-cajac .text-cajac a{
                position: relative;
                background: var(--clr);
                color: #2e2e2e;
                padding: 8px 15px;
                display: inline-block;
                text-decoration: none;
                margin-top: 10px;
                transition: 0.5s ease-in-out;
                border-radius: 10px;
            }
            
            .conteniendo .cajac:hover .contenido-cajac .text-cajac a{
                background: #2e2e2e;
                color: var(--clr);
                border-radius: 10px;
            }
            
            .conteniendo .cajac .contenido-cajac .text-cajac button{
                position: relative;
                background: var(--clr);
                color: #2e2e2e;
                padding: 8px 15px;
                display: inline-block;
                text-decoration: none;
                margin-top: 10px;
                transition: 0.5s ease-in-out;
                border-radius: 10px;
                border:none;
                font-family: 'Poppins', sans-serif;
                font-size: 25px;
                font-weight: 500;
                cursor: pointer;
            }
            
            .conteniendo .cajac:hover .contenido-cajac .text-cajac button{
                background: #2e2e2e;
                color: var(--clr);
                border-radius: 10px;
                border: none;
                font-family: 'Poppins', sans-serif;
                font-weight: 500;
                font-size: 25px;
                cursor: pointer;
            }

            .boton-go{
                font-size: 16px;
                color: rgb(235, 146, 31);
                border: 1px solid rgb(235, 146, 31);
                color: #fff;
                border: #fff 1px solid;
                max-width: 200px;
                border-radius: 30px;
                display: inline-block;
                text-transform: capitalize;
                letter-spacing: 1.5;
                transition: .5s;
                font-weight: 500;
                cursor: pointer;
                padding: 6px 20px;
                max-width: 100px;
                background: transparent;
            }
            
            .bg_animate{
                width: 100%;
                height: 140%;
                position: absolute;
                overflow: hidden;background-color: #4b277a;
            }
            .burbuja{
                border-radius: 50%;
                background: #fff;
                opacity: .3;

                position: absolute;


                animation: burbujas 10s linear infinite ;
            }

            .burbuja:nth-child(1){
                width: 80px;
                height: 80px;
                left: 5%;
                animation-duration: 5s;
            }

            .burbuja:nth-child(2){
                width: 100px;
                height: 100px;
                left: 35%;
                animation-duration: 6s;
            }

            .burbuja:nth-child(3){
                width: 20px;
                height: 20px;
                left: 15%;
                animation-duration: 3.5s;
            }

            .burbuja:nth-child(4){
                width: 50px;
                height: 50px;
                left: 90%;
                animation-duration: 6s;
            }

            .burbuja:nth-child(5){
                width: 70px;
                height: 70px;
                left: 65%;
                animation-duration: 5s;
            }

            .burbuja:nth-child(6){
                width: 20px;
                height: 20px;
                left: 50%;
                animation-duration: 3.5s;
            }

            .burbuja:nth-child(7){
                width: 20px;
                height: 20px;
                left: 50%;
                animation-duration: 6s;
            }

            .burbuja:nth-child(8){
                width: 100;
                height: 100px;
                left: 52%;
                animation-duration: 7s;
            }

            .burbuja:nth-child(9){
                width: 65px;
                height: 65px;
                left: 51%;
                animation-duration: 5s;
            }

            .burbuja:nth-child(10){
                width: 40px;
                height: 40px;
                left: 35%;
                animation-duration: 3.5s;
            }

            .burbuja:nth-child(11){
                width: 15px;
                height: 15px;
                left: 83%;
                animation-duration: 7s;
            }

            .burbuja:nth-child(12){
                width: 80px;
                height: 80px;
                left: 95%;
                animation-duration: 3.5s;
            }

            .burbuja:nth-child(13){
                width: 65px;
                height: 65px;
                left: 1%;
                animation-duration: 4s;
            }

            @keyframes burbujas{
                0%{
                    bottom: 0;
                    opacity: 0;
                }
                30%{
                    transform: translateX(30px);
                }
                50%{
                    opacity: .4;
                }
                100%{
                    bottom: 100%;
                    opacity: 0;
                }
            }

            @keyframes movimiento{
                0%{
                    transform: translateY(0);
                }
                50%{
                    transform: translateY(30px);
                }
                100%{
                    transform: translateY(0);
                }
            }
        </style>
        <script src="sweetalert2.all.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB9wkNCBFjfknOvfJd2s1MCUM42Ia2QJdU&libraries=places"></script>
    </head>
    <body>
                <%
            HttpSession sesion = request.getSession();
            String usuario;
            String tipo;
            
            if(sesion.getAttribute("user")!=null && sesion.getAttribute("tipo_usuario")!=null){
                usuario = sesion.getAttribute("user").toString();
                tipo = sesion.getAttribute("tipo_usuario").toString();
            
        
                Connection conx= null;
                                                Statement sta =null;
                                                Statement sta2 =null;
                                                ResultSet res = null;
                                                ResultSet res2 = null;
                                                
                                                try{
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                        conx  = DriverManager.getConnection("jdbc:mysql://localhost:3306/NimoBase?autoReconnect=true&useSSL=false","root","n0m3l0");                               
                                                        sta = conx.createStatement();
                                                        sta2 = conx.createStatement();

                                                    }
                                                    catch(SQLException error){
                                                        out.print(error.toString());
                                                    }   
                                                    try{
                                                    String contra=request.getParameter("contraUsu");
                                                        res = sta.executeQuery("select*from usuario where usuar='"+usuario+"';");
                                                        if(res.next()){
                                                            if(res.getString("pass_us").equals(contra)){
                                                            try{
                                                            sta.executeUpdate("delete from usuario where usuar='"+usuario+"';");
                                                                res2 = sta2.executeQuery("select*from veterinario where usuar='"+usuario+"';");
                                                                if(res2.next()){
                                                                sta2.executeUpdate("delete from veterinario where usuar='"+usuario+"';");
                                                  }
                                                  out.println("<script>Swal.fire('Cuenta eliminada','Lamentamos que te vayas','success')</script>");
                                out.println("<script>function saludos(){location.href ='index.jsp';}</script>");
                                out.println("<script>setTimeout(saludos, 1500);</script>");
                                                  }
                                                  catch(SQLException error){
                                                        out.println("<script>Swal.fire({icon: 'error',title: 'Algo salió mal',text: 'Inténtelo de nuevo'});</script>");
                    out.println("<script>function saludos(){location.href ='config_usu.jsp';}</script>");
                    out.println("<script>setTimeout(saludos, 1500);</script>");
                                                    }
                    }
                    else{
                        out.println("<script>Swal.fire({icon: 'error',title: 'Su solicitud no ha podido ser procesada',text: 'Escriba correctamente su contraseña'});</script>");
                    out.println("<script>function saludos(){location.href ='config_usu.jsp';}</script>");
                    out.println("<script>setTimeout(saludos, 1500);</script>");
                    }
                                                        }

                                                        conx.close();
                                                        sta.close();
                                                        sta2.close();
                                                    }
                                                    catch(SQLException error){
                                                        out.println("<script>Swal.fire({icon: 'error',title: 'Ocurrió un error',text: 'Inténtelo de nuevo'});</script>");
                    out.println("<script>function saludos(){location.href ='config_usu.jsp';}</script>");
                    out.println("<script>setTimeout(saludos, 1500);</script>");
                                                    }
        }
        else{
            out.print("<script>location.replace('ini_sesion.jsp');</script>");
        }
    %>
    </body>
</html>