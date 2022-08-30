     
<%@page import="Model.CadastroModel"%>
<%@page import="Controller.CadastroController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="estilo.css">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 class="estilo">Cadastro concluido com sucesso!!</h1>

        <%
            try {
        
                CadastroModel objModel = new CadastroModel();
                CadastroController objController = new CadastroController();
                objModel.setNome(request.getParameter("nome"));
                objModel.setSenha(request.getParameter("senha"));
                objController.cadastrarAluno(objModel);
                
            } catch (Exception ex) {
                throw new RuntimeException("Erro ao enviar formulário", ex);
            }
            
        %>
    </body>
</html>
