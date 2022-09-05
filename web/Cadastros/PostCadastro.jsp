 
<%@page import="Model.CadastroModel"%>
<%@page import="Controller.CadastroController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>PrimeiroContato</title>
    <link rel="shortcut icon" href="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/java/java-original.svg">
    <link rel="stylesheet/less" type="text/css" href="style.less" />
</head>

<body>
    
    <div class="BordaSuperior">
        <header class="cabecalho">
            <img class="cabecalho-imagem"
                src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/java/java-original.svg" width="100" height="100"
                alt="imagem java" />
            <nav class="cabecalho-menu">
                <a class="cabecalho-menu-item" href="Cadastro.html">Inicio</a>
                <a class="cabecalho-menu-item">Sobre</a>
                <a class="cabecalho-menu-item" href="SAQ.html">SAQ</a>
                <a class="cabecalho-menu-item">Redes</a>
            </nav>
        </header>
        <hr class="Linha">
        <main class="margem">
            <h1 class="texto-vermelho" id="primeiro-titulo">
                Linguagem de programação -
                <span>
                    Java
                </span>
            </h1>
            <nav>
                <h2 class="titulo-aula texto-azul" id="Segundo-titulo">
                    Navegação principal
                </h2>
                <img src="image-removebg-preview.png" alt="imagem duke" id="DUKE" style="float:right">
                <ul>
                    <li>
                        <a href="Inicio.html">Início</a>
                    </li>
                    <li>
                        <a href="Sobre.html">Sobre a linguagem</a>
                    </li>
                    <li>
                        <a href="conceitos.html">Conceitos importantes</a>
                    </li>
                    <li>
                        <a href="Ferraments.html">Ferramentas e recursos</a>
                    </li>
                </ul>
                <h2 class="titulo-aula texto-azul" id="Terceiro-titulo">
                    Comandos básicos
                </h2>
                <ol>
                    <li><a href="OlaMundo.html">Olá mundo</a></li>
                    <li><a href="Scanner.html">Scanner</a></li>
                    <li><a href="operadores.html">Concatenação e operadores</a></li>
                    <li><a href="condicionais.html">comandos condicionais</a></li>
                    <li><a href="lacos">laçoes de repetição</a></li>
                </ol>
            </nav>
            <h2 class="titulo-aula texto-azul" id="Quarto-titulo">Exercicios resolvidos</h2>
            <nav>
            <ul>
                <li><a href="https://youtu.be/xvB17pX-QLw" target="_blank">TwoSun</a></li>
                <li><a href="https://youtu.be/1sMCcUJup2E" target="_blank">FirstLetterToApperTwice</a></li>
            </ul>
            </nav>
        </main>
        <footer id="rodape">
            <br /><a href="https://github.com/JoaoVitor83" target="_blank">GitHub</a><br />
            <br />&Copf; 2022 - João Vitor Machado
        </footer>
        <script src="https://cdn.jsdelivr.net/npm/less" ></script>
        
        <%
      try {
   
          CadastroModel objModel = new CadastroModel();
          CadastroController objController = new CadastroController();
          
          objModel.setNome(request.getParameter("nome"));
          objModel.setSenha(request.getParameter("senha"));
          objController.inserirCadastro(objModel);
          
      } catch (Exception ex) {
          throw new RuntimeException("Erro ao enviar formulário", ex);
      }
   
   %>
</body>

</html>
