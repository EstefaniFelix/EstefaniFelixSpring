<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Multiplayer/title>
        <link href="/css/bootstrap.min.css" rel="stylesheet" />
    </head>
    <body>
        <div class="container">
            <h1>Multiplayer</h1>
            <a href="/multi/insert" class="btn btn-primary">Multiplayer</a>
            <table class="table">
                <tr>
                    <th>Id</th>
                    <th>escolha</th>
                    <th>&nbsp;</th>
                </tr>
                <c:forEach var="item" items="${multi}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.escolha}</td>
                        <td>
                            <a href="/multi/update?id=${item.id}" class="btn btn-secondary">Editar</a>
                            <a href="/multi/delete?id=${item.id}" class="btn btn-danger">Excluir</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>