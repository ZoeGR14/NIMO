let preveiwContainer = document.querySelector('.contacto');
let previewBox = preveiwContainer.querySelectorAll('.info');


document.querySelectorAll('.button').forEach(product =>{
  product.onclick = () =>{
    preveiwContainer.style.display = 'flex';
    let name = product.getAttribute('data-name');
    console.log(name);
    previewBox.forEach(preview =>{
      let target = preview.getAttribute('data-target');
        console.log(target);
      if(name === target){
        preview.classList.add('active');
      }
    });
  };
});

previewBox.forEach(close =>{
  close.querySelector('.fa-times').onclick = () =>{
    close.classList.remove('active');
    preveiwContainer.style.display = 'none';
  };
});