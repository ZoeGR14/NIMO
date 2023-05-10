<%-- 
    Document   : reportes
    Created on : 2/04/2023, 12:11:59 AM
    Author     : Zoe GR
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

%>

<!DOCTYPE html>
<html>
    <head>
        <title>Reportes Gerente Mantenimiento</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="gerentes.css" rel="stylesheet">
    </head>
    <body>
        <c:choose>
            <c:when test="${not empty sessionScope.gerenteM}">
                <link rel="stylesheet" href="headerStyle.css">
                <header class="headersito" id="header">
                    <a href="cierreSesion.jsp" class="logoin">
                        <img src="imagenes/logo_nimo.png" alt="" class="logoni" draggable="false">
                    </a>
                    <ul class="nav">

                        <a href="cierreSesion.jsp" class="">Cerrar Sesión</a>
                    </ul>
                </header><br><br><br>
                <h1 class="usuario">Bienvenido Gerente de Mantenimiento</h1>
                <hr>
                <div id="contenedorReporte">
                    <c:if test="${sessionScope.gerenteS eq 'gerenSop1'}">
                        <button onclick="window.location.href = 'reportes.jsp'">Volver</button>
                        <button onclick="window.location.href = 'inicioSPersonal_2.jsp?volver=si'">Ingeniero de Mantenimiento</button>
                    </c:if>
                    <c:if test="${param.volver eq 'no'}">
                        <c:set var="volver" value="no" scope="session"/>
                    </c:if>
                    <form action="ControlerZz" method="post">
                        <button name="accion" value="Ver Tabla">Actualizar tabla</button>
                    </form>
                    <table border="0">
                        <thead>
                            <tr>
                                <th>ID USUARIO</th>
                                <th>ID REPORTE</th>
                                <th>DESCRIPCIÓN</th>
                                <th>ESTATUS</th>
                                <th>FECHA</th>
                                <th>SOLUCION</th>
                                <th>ENCARGADO</th>
                                <th>ACCIONES</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista2}">
                                <tr>
                                    <td>${dato.getCliente()}</td>
                                    <td>${dato.getId()}</td>
                                    <td>${dato.getDescripcion()}</td>
                                    <td>${dato.getEstatus()}</td>
                                    <td>${dato.getFecha()}</td>
                                    <td>${dato.getSolucion()}</td>
                                    <td>${dato.getAsignado()}</td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${dato.getEstatus() eq 'En Mantenimiento'}">
                                                <button class='asignar' value="${dato.getId()}">Asignar</button>
                                            </c:when>
                                            <c:when test="${dato.getEstatus() eq 'Programacion Finalizada'}">
                                                <form action="ControlerZz?accion=Gerente" method="post">
                                                    <button class='asignar12' name="directo" value="${dato.getId()}">Devolver a Gerente de Soporte</button>
                                                </form>
                                                <input type="hidden" class ="asignar">
                                            </c:when>
                                            <c:otherwise>
                                                <button class='asignar' value="${dato.getId()}" disabled>Asignar</button>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <c:forEach var="datito" items="${lista2}">
                    <dialog class="modal">
                        <button class='cerrar'>×</button>
                        <center>
                            <h2>Asignación</h2>
                        </center>
                        <div class='contenedorModal'>
                            <p>ID Reporte: ${datito.getId()}</p>
                            <p>Descripción: ${datito.getDescripcion()}</p>
                            <p>Estatus Actual: ${datito.getEstatus()}</p>
                            <center>
                                <form class='formGerente' name="formGerente" method="post" action='ControlerZz?accion=Aceptar'>
                                    <div class='asignacion'>
                                        <span>¿A quién desea asignar este reporte?</span>
                                        <select name="asignar" class="trabajador" required>
                                            <option value="ingMan1">ingMan1</option>
                                            <option  value="ingMan2">ingMan2</option>
                                            <option  value="ingMan3">ingMan3</option>
                                        </select>
                                        <input type="hidden" value="${datito.getId()}" name="aceptar">
                                    </div>
                                    <div class='estatus'>
                                        <span>Estatus al que se cambiará</span>

                                        <select name='estatus' class="checkEsta">
                                            <option disabled>-Selecciona Estatus-</option>
                                            <c:choose>
                                                <c:when test="${datito.getEstatus() eq 'En Mantenimiento'}">
                                                    <option value='En Programacion'>En Programación</option>
                                                </c:when>
                                                <c:when test="${datito.getEstatus() eq 'Programacion Finalzada'}">
                                                    <option value='Mantenimiento Finalizado'>Mantenimiento Finalizado</option>
                                                </c:when>
                                            </c:choose>
                                        </select>

                                    </div>
                                    <button name='aceptado' value='${datito.getId()}' class="aceptar">Aceptar</button>
                                </form>
                            </center>
                        </div>
                    </dialog>
                </c:forEach>
            </body>
            <script>
                var btnAbrirModal = document.getElementsByClassName("asignar");
                var btnCerrarModal = document.getElementsByClassName("cerrar");
                var modal = document.getElementsByClassName("modal");
                var index;
                for (var i = 0; i < btnAbrirModal.length; i++) {
                    btnAbrirModal[i].addEventListener("click", function () {
                        index = Array.prototype.indexOf.call(btnAbrirModal, this);
                        console.log(index);
                        modal[index].showModal();
                    });
                }
                for (var i = 0; i < btnCerrarModal.length; i++) {
                    btnCerrarModal[i].addEventListener("click", function () {
                        var index2 = Array.prototype.indexOf.call(btnCerrarModal, this);
                        modal[index2].close();
                    });
                }

                var formulario = document.getElementsByClassName("formGerente");
                for (var i = 0; i < formulario.length; i++) {
                    formulario[i].addEventListener("submit", function (event) {
                        event.preventDefault();
                        var estatus = document.getElementsByClassName("checkEsta")[index].value;
                        var asignado = document.getElementsByClassName("trabajador")[index].value;

                        if (estatus === "En Programacion") {
                            if (asignado === "ingMan1" || asignado === "ingMan2" || asignado === "ingMan3") {
                                formulario[index].submit();
                            } else {
                                alert("Ingeniero de mantenimiento no encontrado");
                            }
                        }
                    });
                }
            </script>
        </c:when>
        <c:otherwise>
            <script>location.replace('inicioSPersonal.html');</script>
        </c:otherwise>
    </c:choose>
</html>

