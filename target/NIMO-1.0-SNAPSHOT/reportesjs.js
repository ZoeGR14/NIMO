var btnAbrirModal = document.getElementsByClassName("asignar");
var btnCerrarModal = document.getElementsByClassName("cerrar");
var modal = document.getElementsByClassName("modal");

var index;
var index2;
for (var i = 0; i < btnAbrirModal.length; i++) {
    btnAbrirModal[i].addEventListener("click", function () {
        index = Array.prototype.indexOf.call(btnAbrirModal, this);
        console.log(index);
        modal[index].showModal();
        
    });
}
function cambiarOpcion(){
    var s1 = document.getElementById("trabajador"+index);
    var s2 = document.getElementById("estatus"+index);
    
    s2.innerHTML = "";
    
    if(s1.value.includes("geren")){
        var optionArray = ['En Mantenimiento|En Mantenimiento'];
    } else if(s1.value.includes("inge")){
        var optionArray = ['En Proceso|En Proceso'];
    } else if(s1.value === 'En Programacion'){
        var optionArray = ['ingMan1|ingMan1', 'ingMan2|ingMan2', 'ingMan3|ingMan3'];
    }
    
    for (var option in optionArray) {
        var pair = optionArray[option].split("|");
        var newOption = document.createElement("option");
        
        newOption.value = pair[0];
        newOption.innerHTML = pair[1];
        
        s2.options.add(newOption);
    }
}
for (var i = 0; i < btnCerrarModal.length; i++) {
    btnCerrarModal[i].addEventListener("click", function () {
        var index3 = Array.prototype.indexOf.call(btnCerrarModal, this);
        console.log(index3);
        modal[index3].close();
    });
}

var formulario = document.getElementsByClassName("formGerente");
for (var i = 0; i < formulario.length; i++) {
    formulario[i].addEventListener("submit", function (event) {
        event.preventDefault();
        index2 = Array.prototype.indexOf.call(formulario, this);
        var estatus = document.getElementsByClassName("checkEsta")[index].value;
        var asignado = document.getElementsByClassName("trabajador")[index].value;

        if (estatus === "En Mantenimiento") {
            if (asignado === "gerenMan1" || asignado === "gerenMan2" || asignado === "gerenMan3") {
                formulario[index2].submit();
            } else {
                alert("Gerente de mantenimiento no encontrado");
            }
        } else if (estatus === "En Proceso") {
            if (asignado === "ingeSop1" || asignado === "ingeSop2" || asignado === "ingeSop3") {
                formulario[index2].submit();
            } else {
                alert("Ingeniero de soporte no encontrado");
            }
        }
    });
}