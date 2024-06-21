<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Editar escolha de Multiplayer </title>
        <link href="/css/bootstrap.min.css" rel="stylesheet" />
    </head>
    <body>
        <div class="container">
            <h2>Editar escolha de Multiplayer</h2>
            <form action="/multi/update" method="post">
                <input type="hidden" name="id" value="${multi.id}" />
                <div>
                    <label class="form-label">Título:</label>
                    <input type="text" name="escolha" class="form-control" value="${multi.escolha}" />
                </div>
                <div>
                    <label class="form-label">Gênero:</label>
                    <select name="genero" class="form-select">
                        <c:forEach var="item" items="${generos}">
                            <option ${item.id == Multi.genero.id ? "selected" : ""} value="${item.id}">${item.esolha}</option>
                        </c:forEach>
                    </select>
                </div>
 
                <br />
                <a href="/multi/list" class="btn btn-secondary">Voltar</a>
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>
        </div>
    </body>
</html>