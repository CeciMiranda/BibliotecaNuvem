<%--
  Created by IntelliJ IDEA.
  User: cecim
  Date: 31/10/2024
  Time: 22:02
  To change this template use File | Settings | File Templates.
--%>
<%@page import="data.Banco"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Atualizar Livro</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .form-group {
            margin-bottom: 15px;
        }
        .form-control {
            font-size: 0.9rem;
        }
    </style>
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="card shadow-sm p-4">
        <h2 class="text-center mb-4">Atualizar Livro</h2>

        <%
            String tituloAntigo = request.getParameter("tituloAntigo");
            String tituloNovo = request.getParameter("tituloNovo");
            String autor = request.getParameter("autor");
            String edicao = request.getParameter("edicao");
            String editora = request.getParameter("editora");
            String ano = request.getParameter("ano");
            String codigo = request.getParameter("codigo");
            String exemplares = request.getParameter("exemplares");

            if (tituloAntigo == null) {
        %>

        <form action="atualizarLivro.jsp" method="POST">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="tituloAntigo">Título Antigo</label>
                    <input type="text" class="form-control" id="tituloAntigo" name="tituloAntigo">
                </div>
                <div class="form-group col-md-6">
                    <label for="tituloNovo">Título Novo</label>
                    <input type="text" class="form-control" id="tituloNovo" name="tituloNovo">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="autor">Autor</label>
                    <input type="text" class="form-control" id="autor" name="autor">
                </div>
                <div class="form-group col-md-6">
                    <label for="edicao">Edição</label>
                    <input type="text" class="form-control" id="edicao" name="edicao">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="editora">Editora</label>
                    <input type="text" class="form-control" id="editora" name="editora">
                </div>
                <div class="form-group col-md-6">
                    <label for="ano">Ano</label>
                    <input type="text" class="form-control" id="ano" name="ano">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="codigo">Código</label>
                    <input type="text" class="form-control" id="codigo" name="codigo">
                </div>
                <div class="form-group col-md-6">
                    <label for="exemplares">Exemplares</label>
                    <input type="text" class="form-control" id="exemplares" name="exemplares">
                </div>
            </div>
            <button type="submit" class="btn btn-primary btn-block">Atualizar</button>
        </form>

        <%
        } else {
            Banco b = new Banco();
            b.atualizarLivro(tituloAntigo, tituloNovo, autor, edicao, editora, ano, codigo, exemplares);
        %>

        <div class="alert alert-success text-center mt-4" role="alert">
            Livro atualizado com sucesso!
        </div>

        <%
            }
        %>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
