<%@page import="java.sql.SQLException"%>
<%@ page import="data.biblioteca.Banco" %>
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

        if (login != null && senha != null && !login.isEmpty() && !senha.isEmpty() && b.getLogin(login, senha)) {
            String nome = b.getUsuario(login);
    %>
    <h1>Bem-vindo :) </h1>
    <h2>Menu</h2>
    <ul>
        <li><a href="cadastrarLivro.jsp">Cadastrar Livro</a></li>
        <li><a href="consultarLivro.jsp">Consultar Livro</a></li>
        <li><a href="atualizarLivro.jsp">Atualizar Livro</a></li>
        <li><a href="deletarLivro.jsp">Deletar Livro</a></li>
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
