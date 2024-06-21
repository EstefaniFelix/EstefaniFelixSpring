<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Remover Multiplayer</title>
        <link href="/css/bootstrap.min.css" rel="stylesheet" />
    </head>
    <body>
        <div class="container">
            <h1>Remover Multiplayer</h1>
            <p>Tem certeza que deseja remover a escolha Multiplayer ${Multiplayer.titulo} ?</p>
            <form action="/multi/delete" method="post">
                <input type="hidden" name="id" value="${multi.id}" />

                <br />
                <a href="/multi/list" class="btn btn-secondary">Voltar</a>
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>
        </div>
    </body>
</html>