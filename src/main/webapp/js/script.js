'use strict';

const fomulario =document.querySelectorAll('.doacao-form')
const campos=document.querySelectorAll(".required")
const spans=document.querySelectorAll(".span-requeride")
const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;




function setError(index){
    campos[index].style.border='2px solid #e63636';
    spans[index].style.display='block';
}
function removeError(index){
    campos[index].style.border='';
    spans[index].style.display='';
}

function namevalide() {

    if (campos[0].value.length< 3){
        console.log("Nome tem que ter mais de três caracteres ");
        setError(0);
    } 
    else{
        removeError(0);
        console.log("Validando nome");
    }
}

function emailvalide(){

    if(!emailRegex.test(campos[1].value))
    {
        setError(1)
    }
    else{
        removeError(1)
    }
}

function valorvalide() {
    if (campos[2].value < 10) {  // Verifica se o valor é menor que 10
        setError(2); // Exibe o erro no campo do índice 2 (valor)
    } else {
        removeError(2); // Remove o erro no campo do índice 2 (valor)
    }
}
