const defaultFile = "imagenes/nuevaMasc.jpeg";

const file = document.getElementById('imagen');
const img = document.getElementById("foto");

file.addEventListener("change", e => {
    if (e.target.files[0]) {
        const reader = new FileReader();
        reader.onload = function (e) {
            img.src = e.target.result;
        };
        reader.readAsDataURL(e.target.files[0]);
    } else {
        img.src = defaultFile;
    }
});

const btn = document.getElementById("boton");
const form = document.getElementById("contenidoNuevaMasc");

form.addEventListener("submit", function (e) {
    e.preventDefault();

    var img = document.getElementById("imagen").value,
            sexo = document.getElementsByName("radioSexo"),
            raza = document.getElementsByName("radioRaza"),
            alergias = document.getElementsByName("radioAlergias");

    var radios = [sexo, raza, alergias];
    let allSelected = 0;

    for (var i = 0; i < radios.length; i++) {
        if (radios[i][0].checked === true || radios[i][1].checked === true) {
            allSelected++;
        }
    }

    if (allSelected === 3 && img !== "") {
        Swal.fire({
            title: "Mascota añadida",
            text: "Su mascota ha sido añadida correctamente",
            icon: "success",
            confirmButtonText: "Vale",
            timer: 2000,
            timerProgressBar: true
        }).then((result) => {
            form.submit();
        });
    } else {
        Swal.fire({
            title: "¡Atención!",
            text: "Termine por completo el formulario, por favor",
            icon: "warning",
            confirmButtonText: 'Vale'
        });
    }

});

var fechaActual = new Date();

var formatoFecha = fechaActual.toISOString().split("T")[0];

document.getElementById("nacim").max = formatoFecha;