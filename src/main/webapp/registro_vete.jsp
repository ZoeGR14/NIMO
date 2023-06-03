<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro - Veterinario</title>
        <link rel="stylesheet" href="loginn.css">
        <style>
            body{
                background-color: #4b277a;
            }
        </style>
        <script src="sweetalert2.all.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCeuPFSDFLHUJb3Txr5dtwpXRDL3_Ht9OQ&libraries=places"></script>

        <script>
            class localizacion{
                constructor(callback){
                    if (navigator.geolocation) {
                        navigator.geolocation.getCurrentPosition((position)=>{
                            this.latitude = position.coords.latitude;
                            this.longitude = position.coords.longitude;
                            callback();
                        });
                    }else{
                        alert("tu navegador no soporta geolocation");
                    }
                }
            }

            google.maps.event.addDomListener(window, "load", function(){
                const ubicacion = new localizacion(()=>{
                    
                const myLatLng = {lat: ubicacion.latitude,lng: ubicacion.longitude};
                
                    const options ={
                        center:myLatLng,
                        zoom: 18
                    };
                    var map = document.getElementById('map');

                    const mapa = new google.maps.Map(map, options);
                    
                    const marcador = new google.maps.Marker({
                        position: myLatLng,
                        map: mapa                    
                    });
                    
                    var informacion = new google.maps.InfoWindow();
                    
                    marcador.addListener('click', function(){
                        informacion.open(mapa, marcador);
                    });
                    
                    var autocomplete = document.getElementById('autocomplete');
                    
                    const search = new google.maps.places.Autocomplete(autocomplete);
                    
                    search.bindTo("bounds", mapa);
                    
                    search.addListener('place_changed', function(){
                        informacion.close();
                        marcador.setVisible(false);
                        
                        var place = search.getPlace();
                        
                        if (!place.geometry.viewport) {
                            window.alert("error al mostrar el lugar");
                            return;
                        }
                        if(place.geometry.viewport){
                            mapa.fitBounds(place.geometry.viewport);
                        }
                        else{
                            mapa.setCenter(place.geometry.location);
                            mapa.setZoom(18);
                        }
                        
                        marcador.setPosition(place.geometry.location);
                        marcador.setVisible(true);
                    });
                    
                });
                
            
            });
            

        </script>
    </head>
    <body>
        <nav>
        <link rel="stylesheet" href="menu.css">
            <input type="checkbox" id="check">
            <label for="check" class="checkbtn">
               <i class="menu-icon"> <img src="imagenes\menuicon.png"> </i>
            </label>
            <a href="index.jsp" class="enlace">
                <img src="imagenes/logo_nimo.png" alt="" class="logo">
            </a>
            <ul alt="" class="bot_acc">
                <li><a href="inicio_Sesion.jsp" class="inis">Inicio de Sesión</a></li>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <li><a href="registro.jsp" class="regis">Registro</a></li>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <li><a href="#" class="admins">¿Eres un administrador?</a></li>
            </ul>
        </nav>
        <br><br>

         <div class="login-card-container">
            <div class="login-card">
                <div class="login-card-logo">
                    <img src="imagenes/logo_nimo.png" alt="logo">
                </div>
                <div class="login-card-header">
                    <h1>Registro de Veterinario</h1>
                    <div>Por favor, ingresa los datos solicitados, para concluir tu registro</div>
                </div>
                <form action="registrando_vete.jsp" method="post" name="registros" class="login-card-form">
                    <%
                        Connection conec= null;
                        PreparedStatement pstat =null;
                        ResultSet results=null;
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                            conec  = DriverManager.getConnection("jdbc:mysql://localhost:3306/NIMOBase?autoReconnect=true&useSSL=false","root","n0m3l0");                               
                            pstat = conec.prepareStatement("select * from usuario where usuar=?");
                            String usu=request.getParameter("nusuar");
                            String contras=request.getParameter("contrasenia");
                            pstat.setString(1, usu);
                            results=pstat.executeQuery();
                            if (results.next()){
                    %>
                    <div class="form-item">
                        Usuario:<input type="text" placeholder="Nombre del Usuario" name="nombre_usu" readonly="readonly" value="<%=results.getString(1)%>">
                    </div>
                    <div class="form-item">
                        <input type="text" placeholder="Cédula Profesional" name="cedula" pattern="[0-9]{8}" maxlength="8" title="Ingrese una cédula profesional válida" required autofocus>
                    </div>
                    <div class="form-item">
                        <input type="text" id="autocomplete" name="direccion" required>
                    </div>
                    
                    <div class="form-item" id="map" style="width:300px; height: 300px;"></div>
                    
                    <button type="submit" name="registro" id="boton" value="Regístrate">Finalizar Registro</button>
                    <br><br>
                </form>
                                        <%
                    }
                    else{
                        out.println("<script>Swal.fire({icon: 'error',title: 'Algo salió mal',text: 'Inténtelo de nuevo'});</script>");
                        out.println("<script>function saludos(){location.href ='registro.jsp';}</script>");
                        out.println("<script>setTimeout(saludos, 1500);</script>");
                    }
                }
            catch(SQLException error){
                    out.println("<script>Swal({icon: 'error',title: 'Ocurrió un error',text: 'Inténtelo de nuevo'});</script>");
                    out.println("<script>function saludos(){location.href ='registro.jsp';}</script>");
                    out.println("<script>setTimeout(saludos, 1000);</script>");
                }
            %>
                <div class="login-card-footer">
                    <h5>¿Ya tienes una cuenta?&nbsp;&nbsp;<a href="inicio_Sesion.jsp">Ingresa</a></h5>
                </div>
            </div>
        </div>
        
    </body>
</html>
