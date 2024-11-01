<%--
  Created by IntelliJ IDEA.
  User: cecim
  Date: 29/10/2024
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>

<%@page import="java.sql.SQLException"%>
<%@ page import="data.Banco" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Menu Principal</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
<div class="container">
    <%
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        Banco b = new Banco();

        String senhaBanco = b.getSenha(login);
        if (senha.equals(senhaBanco)){
    %>
    <h1>Bem-vindo</h1>
    <h2>Menu Biblioteca 📚 </h2>
    <ul style="list-style-type: none; padding: 0;">
        <li><a href="cadastrarLivro.jsp" style="display: inline-block; width: 200px; padding: 10px 0; margin: 5px; background-color: #4CAF50; color: white; text-align: center; text-decoration: none; border-radius: 5px;"> Cadastrar Livro</a></li>
        <li><a href="consultarLivro.jsp" style="display: inline-block; width: 200px; padding: 10px 0; margin: 5px; background-color: #2196F3; color: white; text-align: center; text-decoration: none; border-radius: 5px;"> Consultar Livro</a></li>
        <li><a href="atualizarLivro.jsp" style="display: inline-block; width: 200px; padding: 10px 0; margin: 5px; background-color: #FFC107; color: white; text-align: center; text-decoration: none; border-radius: 5px;"> Editar Livro</a></li>
        <li><a href="deletarLivro.jsp" style="display: inline-block; width: 200px; padding: 10px 0; margin: 5px; background-color: #F44336; color: white; text-align: center; text-decoration: none; border-radius: 5px;"> Deletar Livro</a></li>
    </ul>

    <%
    } else {
    %>
    <h1>Usuário ou senha incorretos</h1>
    <p><a href="index.jsp">Clique aqui para tentar novamente</a></p>
    <%
        }
    %>
</div>

</body>
</html>
