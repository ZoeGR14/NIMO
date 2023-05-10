<%-- 
    Document   : visualizarReporte
    Created on : 2/04/2023, 12:29:19 PM
    Author     : jwqui
--%>
<%@page import="Modelo.SoporteDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="ingreportes.css" rel="stylesheet">
        <title>Reportes IS</title>
    </head>

    <body>
        <c:choose>
            <c:when test="${not empty sessionScope.ingeS}">

                <form method="post" action="ControlerJ">
                    <p class="titulito">Reporte<br></p>
                    <p class="descripcion">Descipción del reporte:</p>
                    <c:forEach var="datito" items="${lista2}">
                        <div class="desc">
                            <p class="descripcion">${datito.getDescripcion()}</p>
                        </div>
                    </form>
                    <form method="post" action="ControlerJ?accion=resolver">
                        <center>
                            <!--<div contenteditable placeholder="Empieza a escribir aquí..." name="solucion" class="contenidoDes"></div>-->

                            <textarea placeholder="Empieza a escribir aquí..." class="contenidoDes" name="solucion">${datito.getSolucion()}</textarea>
                        </center>
                        <center>
                            <button  class="botoncito" name="id_reporte" value="${datito.getId_reporte()}">Enviar solución</button>
                        </center>

                    </form>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <script>location.replace('inicioSPersonal.html');</script>
            </c:otherwise>
        </c:choose>
    </body>
    <script>
        // Obtén el elemento del textarea
        var textArea = document.getElementById("miTextArea");

        // Agrega un evento 'input' al textarea
        textArea.addEventListener("input", function () {
            // Ajusta el tamaño del textarea
            this.style.height = "auto";
            this.style.height = this.scrollHeight + "px";
        });
    </script>
</html>