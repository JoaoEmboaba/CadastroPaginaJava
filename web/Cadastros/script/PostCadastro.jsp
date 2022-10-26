 
<%@page import="Model.CadastroModel"%>
<%@page import="Controller.CadastroController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Entrar</title>
    <link rel="stylesheet" href="style.css">
    <link rel="shortcut icon" href="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/java/java-original.svg">
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
                <h1>Write once,<br />run anywhere</h1>
                <img src="animacao.svg" alt="Animacao aprendizagem" class="left-login-image">
            </div>
            <form id="form" method="POST">
                <div class="Direita-Login">
                    <div class="card-login">
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
                        <span  style="color:blanchedalmond; font-size:1rem">Não possui cadastro?</span>
                        <a id="cadastro" href="signUp.html" style="color:blanchedalmond;font-size: 1rem;">Cadastre-se</a>

            </form>
        </div>
    </div>
    </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/less"></script>

        <%
      try {
   
          CadastroModel objModel = new CadastroModel();
          CadastroController objController = new CadastroController();
          
          objModel.setNome(request.getParameter("nome"));
          objModel.setSenha(request.getParameter("senha"));
          objModel.setEmail(request.getParameter("email"));
          objController.inserirCadastro(objModel);
          
      } catch (Exception ex) {
          throw new RuntimeException("Erro ao enviar formulário", ex);
      }
   
   %>
</body>

</html>
