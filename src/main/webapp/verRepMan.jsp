<%-- 
    Document   : reportess
    Created on : 2/04/2023, 12:26:43 PM
    Author     : jwqui
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Ingeniero de Mantenimiento</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="ingtablas.css" rel="stylesheet">
    </head>
    <body>
        <c:choose>
            <c:when test="${not empty sessionScope.ingeM}">
                <link rel="stylesheet" href="headerStyle.css">
                <header class="headersito" id="header">
                    <a href="cierreSesion.jsp" class="logoin">
                        <img src="imagenes/logo_nimo.png" alt="" class="logoni" draggable="false">
                    </a>
                    <ul class="nav">

                        <a href="cierreSesion.jsp" class="">Cerrar Sesión</a>
                    </ul>
                </header><br><br><br>
                <h2 class="tituloo">¡Bienvenido, Ingeniero de Mantenimiento!</h2>
                <div class="container">
                    <input type="search" class="myInput" id="myInput" onkeyup="myFunction()" placeholder="Busca por reporte" title="Escribe un estatus">
                    <c:if test="${sessionScope.gerenteS eq 'gerenSop1'}">
                        <button class="visualizar" onclick="window.location.href = 'reportes.jsp'" style="display: inline">Volver a Gerente de Soporte</button>
                    </c:if>
                    <c:if test="${sessionScope.volver eq 'si'}">
                        <button class="visualizar" onclick="window.location.href = 'reportesMantenimiento.jsp?volver=no'">Volver a Gerente de Mantenimiento</button>
                    </c:if>
<!--                    <br><form action="ControlerJ" method="post">
                        <button  class="visualizar" name="accion" value="verTablaM">Actualizar la tabla de contenido</button>    
                    </form>
                    <br>-->
                    <center>
                        <table class="tablaa" id="a">
                            <tr>
                                <th>ID del Usuario</th>
                                <th>ID del Reporte</th>
                                <th>Descripción</th>
                                <th>Estatus</th>
                                <th>Fecha</th>
                                <th>Solución</th>
                                <th>Visualizar reporte</th>

                            </tr>
                            <c:forEach var="listaM" items="${listaM}">
                                <tr class="listado">
                                    <td>${listaM.getCliente()}</td>
                                    <td>${listaM.getId_reporte()}</td>
                                    <td>${listaM.getDescripcion()}</td>
                                    <td>${listaM.getEstatus()}</td>
                                    <td>${listaM.getFecha_hora()}</td>
                                    <td>${listaM.getSolucion()}</td>


                                    <td>
                                        <c:choose>
                                            <c:when test="${empty listaM.getSolucion()}">
                                            <form action="ControlerJ?accion=verReporteM" method="post"><button class="botoncito" name="reporteM" value="${listaM.getId_reporte()}">Solucionar</button></form>
                                            </c:when>
                                            <c:otherwise>
                                                <form action="ControlerJ?accion=cerrarReporteM" method="post"><button class="botoncito" name="reporteM" value="${listaM.getId_reporte()}">Finalizar programación</button></form>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>



                                </tr>    

                            </c:forEach>
                        </table>
                    </center>
                </div>
                <script>
                    function myFunction() {
                        var input, filter, table, tr, td, i, txtValue;
                        input = document.getElementById("myInput");
                        filter = input.value.toUpperCase();
                        table = document.getElementById("a");
                        tr = table.getElementsByTagName("tr");
                        for (i = 0; i < tr.length; i++) {
                            td = tr[i].getElementsByTagName("td")[2];
                            if (td) {
                                txtValue = td.textContent || td.innerText;
                                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                                    tr[i].style.display = "";
                                } else {
                                    tr[i].style.display = "none";
                                }
                            }
                        }
                    }
                </script>
            </c:when>
            <c:otherwise>
                <script>location.replace('inicioSPersonal.html');</script>
            </c:otherwise>
        </c:choose>
    </body>

</html>