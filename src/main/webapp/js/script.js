function total() 
{ 
        const valorEntrada=200
        var captureCantidad=document.getElementById("cantidad").value;
        var captureCategoria=document.getElementById("categoria").value;
        var resumenValor = 0; 
            //validaciones
                 if (nombre.value===""||apellido.value===""||mail.value===""||cantidad.value===""||categoria.value<"0") 
                {
                alert ("Completar todos los campos");
                //nombre.classList.add("is-invalid"); 
                //document.getElementById("error").innerText="*completar datos requeridos";
                }
                
            //validación mail
                const emailValido = mail => 
                {
                   return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(mail);
                }
           
                if(!emailValido(mail.value))
                {
                   alert("Direccion de correo inválida");
                   //mail.classList.add("is-invalid");
                   //mail.focus();
                   return ;
                }

                //funcion para calcular
                    if (captureCategoria==0){ resumenValor=(valorEntrada*captureCantidad); }
                    if (captureCategoria==1){resumenValor=(valorEntrada*0.2*captureCantidad); }
                    if (captureCategoria==2){resumenValor=(valorEntrada*0.5*captureCantidad); }
                    if (captureCategoria==3){resumenValor=(valorEntrada*0.85*captureCantidad); }
                    document.getElementById("total_a_pagar").innerText=resumenValor; //llamo al id total a pagar    
    }
const btnClick=document.getElementById("btnResumen"); //llamo a id btn resumen
btnResumen.addEventListener("click",total);


//funcion borrar
function borrar() {

    document.getElementById("nombre").value="";
    document.getElementById("apellido").value="";
    document.getElementById("mail").value="";
    document.getElementById("cantidad").value="";
    document.getElementById("categoria").value="";
    document.getElementById("total_a_pagar").innerText=""
}

document.getElementById("btnBorrar").addEventListener("click",borrar);