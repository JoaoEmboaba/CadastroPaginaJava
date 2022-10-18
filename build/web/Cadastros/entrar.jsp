<%@page import="Model.CadastroModel"%>
<%@page import="Controller.CadastroController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Entrar</title>
    <link rel="stylesheet" href="style.css">
    <link rel="shortcut icon" href="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/java/java-original.svg">
    <style>
        .floating {
            animation-name: floating;
            animation-duration: 15s;
            animation-iteration-count: infinite;
            animation-timing-function: ease-in-out;
            margin-left: 30px;
            margin-top: 5px;
        }

        #floating{

            animation-name: floating;
            animation-duration: 15s;
            animation-iteration-count: infinite;
            animation-timing-function: ease-in-out;
            margin-left: 30px;
            margin-top: 5px;
        }

        @keyframes floating {
            0% {
                transform: translate(0, 0px);
            }

            50% {
                transform: translate(0, 15px);
            }

            100% {
                transform: translate(0, -0px);
            } 
        }

    </style>
</head>

<body>
    <div class="BordaSuperior">
        <header class="cabecalho">
            <img class="cabecalho-imagem"
                src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/java/java-original.svg" width="100" height="100"
                alt="imagem java" />
            <nav class="cabecalho-menu">
                <a class="cabecalho-menu-item" href="landingPage.html">Inicio</a>
                <a class="cabecalho-menu-item">Sobre</a>
                <a class="cabecalho-menu-item" href="FAQ.html">FAQ</a>
                <a class="cabecalho-menu-item">Redes</a>
            </nav>
        </header>
        <div class="main-login">
            <div class="Esquerda-login">
                <h1 class="floating">Write once,<br />run anywhere</h1>
                <img src="animacao.svg" alt="Animacao aprendizagem" class="left-login-image">
            </div>
            <form id="form" method="POST">
                <div class="Direita-Login">
                    <div class="card-login" id="floating">
                        <h1>Entrar</h1>

                        <div class="textField">
                            <label for="usuario">Usuario</label>
                            <input class="required" id="nome" type="text" name="nome"
                                placeholder="Informe o seu nome de usuário" oninput="nameValidate()">
                            <span class="span-required">Nome deve ter no mínimo 4 caracteres</span>
                            <span class="error-message" id="spanN">O campo de nome não pode estar vazio</span>
                            <span class="sucess"></span>
                        </div>

                        <div class="textField">
                            <label for="usuario">Senha</label>
                            <input class="required" id="senha" type="password" name="senha"
                                placeholder="Informe a sua senha" oninput="passValidate()">
                            <span class="span-required">Digite uma senha com no minímo 6 caracteres</span>
                            <span class="error-message">O campo de senha não pode estar vazio</span>
                        </div>

                        <button onclick="checkInputs()" class="botao-login" type="submit">Login</button>
                        <span style="color:blanchedalmond; font-size:1rem">Não possui cadastro?</span>
                        <a id="cadastro" href="signUp.html"
                            style="color:blanchedalmond;font-size: 1rem;">Cadastre-se</a>

            </form>
        </div>
    </div>
    </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/less"></script>

    <%

    CadastroModel objModel = new CadastroModel();
    CadastroController objController = new CadastroController();
    ArrayList<CadastroModel> lista = objController.pesquisarCadastro();

    try{


        for(int i = 0; i < lista.size(); i ++){

            System.out.println("\n");
            System.out.println("id: "+ lista.get(i).getId());
            System.out.println("nome: "+ lista.get(i).getNome());
            System.out.println("Senha: "+ lista.get(i).getSenha());
            System.out.println("\n");

        }

    }catch{

    }

</body>