const form = document.getElementById("form");
const campos = document.querySelectorAll(".required");
const spans = document.querySelectorAll(".span-required");
const msgsErros = document.querySelectorAll(".error-message");
const emailRegex =
  /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
const nome = document.getElementById("nome");
const senha = document.getElementById("senha");
const confsenha = document.getElementById("confsenha");
const ermessage = document.getElementById("confSenha");

function aviso() {
  var alerta = "Cadastro concluido com sucesso";
  alert(alerta);
}

form.addEventListener("submit", (e) => {
  e.preventDefault();

  checkInputs();
});

function sucesso() {
  var alerta = "Cadastro concluido com sucesso!";
  window.alert(alerta);
}

function checkInputs() {
  const nomeValue = nome.value.trim();
  const senhaValue = senha.value.trim();

  if (nomeValue == "") {
    campos[0].style.border = "1px solid #e63636";
    msgsErros[0].style.display = "block";
  } else {
    sucesso();
  }
  if (senhaValue == "") {
    campos[1].style.border = "1px solid #e63636";
    msgsErros[1].style.display = "block";
  } else {
    sucesso();
  }
}

function errorValidation(input, message) {
  const formControl = input.parentElement;

  formControl.className = "error-message";
}

function setError(index) {
  campos[index].style.border = "1px solid #e63636";
  spans[index].style.display = "block";
}

function removeError(index) {
  campos[index].style.border = "";
  spans[index].style.display = "none";
  msgsErros[0].style.display = "none";
  msgsErros[1].style.display = "none";
}

function nameValidate() {
  if (campos[0].value.length < 4) {
    setError(0);
  } else {
    removeError(0);
  }
}

function passValidate() {
  if (campos[1].value.length < 6) {
    setError(1);
  } else {
    removeError(1);
  }
}

function erro2() {
  ermessage.style.display = "block";
  campos.style.border = "1px solid #e63636";
}

function igual(){
    ermessage.style.display = "none";
    campos.style.border = "";
}

function confirmarSenha(){
    if(confsenha!==senha){
        erro2();
    }else{
        igual();
    }
}
