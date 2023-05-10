<%-- 
    Document   : reportes
    Created on : 2/04/2023, 12:11:59 AM
    Author     : Zoe GR
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Reportes Gerente de Soporte</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="gerentes.css" rel="stylesheet">
    </head>
    <body>
        <c:choose>
            <c:when test="${not empty sessionScope.gerenteS}">
                <link rel="stylesheet" href="headerStyle.css">
                <header class="headersito" id="header">
                    <a href="cierreSesion.jsp" class="logoin">
                        <img src="imagenes/logo_nimo.png" alt="" class="logoni" draggable="false">
                    </a>
                    <c:if test="${sessionScope.gerenteS eq 'gerenSop1'}">
                        <ul class="nav">
                            <a href="/NIMO/ControlerZzZ" class="">Gerente de Mantenimiento</a>
                        </ul>
                        <ul class="nav">
                            <a href="/NIMO/ControlerJ?tipo=superUsuarioM" class="">Ingeniero de Mantenimiento</a>
                        </ul>
                        <ul class="nav">
                            <a href="/NIMO/ControlerJ?tipo=superUsuario" class="">Ingeniero de Soporte</a>
                        </ul>
                        <ul class="nav">
                            <a href="listado.jsp" class="">Editor</a>
                        </ul>
                    </c:if>
                    <ul class="nav">
                        <a href="cierreSesion.jsp" class="">Cerrar Sesión</a>
                    </ul>
                </header><br><br><br>
                <h1 class="usuario">Bienvenido Gerente de Soporte</h1>
                <hr>
                <div id="contenedorReporte">
                    <form action="ControlerZ" method="post">
                        <button name="accion"  id = "verTabla" value="Ver Tabla">Actualizar tabla</button>
                        <button name="accion" value="Levantar Reporte">Dar de alta un reporte</button>
                    </form>
                    <br>
                    <table border="0">
                        <thead>
                            <tr>
                                <th>ID USUARIO</th>
                                <th>ID REPORTE</th>
                                <th id="desc">DESCRIPCIÓN</th>
                                <th>ESTATUS</th>
                                <th>FECHA</th>
                                <th>SOLUCION</th>
                                <th>ENCARGADO</th>
                                <th id="acciones">ACCIONES</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                                <tr>
                                    <td>${dato.getCliente()}</td>
                                    <td>${dato.getId()}</td>
                                    <td>${dato.getDescripcion()}</td>
                                    <td>${dato.getEstatus()}</td>
                                    <td>${dato.getFecha()}</td>
                                    <td>${dato.getSolucion()}</td>
                                    <td>${dato.getAsignado()}</td>
                                    <td>
                            <center>
                                <c:choose>
                                    <c:when test="${dato.getEstatus() eq 'Abierto' or dato.getEstatus() eq 'Mantenimiento Finalizado'}">
                                        <button class='asignar' value="${dato.getId()}">Asignar</button>
                                    </c:when>
                                    <c:otherwise>
                                        <button class='asignar' disabled value="${dato.getId()}">Asignar</button>
                                    </c:otherwise>
                                </c:choose>
                            </center>
                            </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <!--PopUp Asignar Externo-->
                <c:set var="si" value="${0}"/>
                <c:forEach var="datito" items="${lista}">
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
                                <form class='formGerente' name="formGerente" method="post" action='ControlerZ?accion=Aceptar'>
                                    <div class='asignacion'>
                                        <span>¿A quién desea asignar este reporte?</span>
                                        <select id="trabajador${si}" name="asignar" class="trabajador" required onchange="cambiarOpcion()">
                                            <c:choose>
                                                <c:when test="${datito.getEstatus() eq 'Abierto'}">
                                                    <option value="gerenMan1">gerenMan1</option>
                                                    <option value="gerenMan2">gerenMan2</option>
                                                    <option value="gerenMan3">gerenMan3</option>
                                                    <option value="ingeSop1">ingeSop1</option>
                                                    <option value="ingeSop2">ingeSop2</option>
                                                    <option value="ingeSop3">ingeSop3</option>
                                                </c:when>
                                                <c:when test="${datito.getEstatus() eq 'Mantenimiento Finalizado'}">
                                                    <option value="ingeSop1">ingeSop1</option>
                                                    <option value="ingeSop2">ingeSop2</option>
                                                    <option value="ingeSop3">ingeSop3</option>
                                                </c:when>
                                            </c:choose>
                                        </select>
                                        <input type="hidden" value="${datito.getId()}" name="aceptar">
                                    </div>
                                    <div class='estatus'>
                                        <span>Estatus al que se cambiará</span>

                                        <select id="estatus${si}" name='estatus' class="checkEsta">
                                            <c:choose>
                                                <c:when test="${datito.getEstatus() eq 'Abierto'}">
                                                    <option value="En Mantenimiento">En Mantenimiento</option>
                                                </c:when>
                                                <c:when test="${datito.getEstatus() eq 'Mantenimiento Finalizado'}">
                                                    <option value="En Proceso">En Proceso</option>
                                                </c:when>
                                            </c:choose>
                                        </select>

                                    </div>
                                    <button name='aceptado' value='${datito.getId()}' class="aceptar">Aceptar</button>
                                </form>
                            </center>
                        </div>
                    </dialog>
                    <c:set var="si" value="${si+1}"/>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <script>location.replace('inicioSPersonal.html');</script>
            </c:otherwise>
        </c:choose>
    </body>
    <script src="reportesjs.js"></script>
</html>

