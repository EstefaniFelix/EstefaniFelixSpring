<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Adicionar Multiplayer</title>
        <link href="/css/bootstrap.min.css" rel="stylesheet" />
    </head>
    <body>
        <div class="container">
            <h1>Adicionar Multiplayer</h1>
            <form action="/multi/insert" method="post">
                <div>
                    <label class="form-label">Escolha:</label>
                    <input type="text" name="escolha" class="form-control" />
                </div>

 
                <br />
                <a href="/multi/list" class="btn btn-secondary">Voltar</a>
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>
        </div>
    </body>
</html>