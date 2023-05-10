const addBox = document.querySelector(".add-box"),
popupBox = document.querySelector(".popup-box"),
popupTitle = popupBox.querySelector("header p"),
closeIcon = popupBox.querySelector("header i"),
descTag = popupBox.querySelector("textarea"),
addBtn = popupBox.querySelector("button"),
form = document.getElementById("formulario");


addBox.addEventListener("click", () => {
    popupTitle.innerText = "Añade una nueva nota";
    addBtn.innerText = "Añadir nota";
    popupBox.classList.add("show");
    document.querySelector("body").style.overflow = "hidden";
});

closeIcon.addEventListener("click", () => {
    isUpdate = false;
    descTag.value = "";
    popupBox.classList.remove("show");
    document.querySelector("body").style.overflow = "auto";
});
function showMenu(elem) {
    elem.parentElement.classList.add("show");
    document.addEventListener("click", e => {
        if(e.target.tagName != "I" || e.target != elem) {
            elem.parentElement.classList.remove("show");
        }
    });
}

function updateNote(id, descripcion) {
    form.setAttribute("action", "Controler?accion=editarNota");
    let description = descripcion.replaceAll('<br>', '\r\n');
    addBox.click();
    descTag.value = description;
    popupTitle.innerText = "Edita la nota";
    addBtn.innerText = "Editar";
    addBtn.setAttribute("name", "id2");
    addBtn.value = id;
    
}