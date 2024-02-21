<%@page import="java.util.List"%>
<%@page import="entidades.Contato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- CSS only -->
<ink href="https://cdn.jsldelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    </head>
    <body>
        <h1>Lista de contatos</h1>
        <hr />
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>Email</th>
                    <th>Fone</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Contato> lista = dao.DaoContato.consultar();
                    for (Contato ct : lista) {
                        out.write("<tr>");
                        out.write("<td>" + ct.getId() + "</td>");
                        out.write("<td>" + ct.getNome() + "</td>");
                        out.write("<td>" + ct.getEmail() + "</td>");
                        out.write("<td>" + ct.getFone() + "</td>");
                        out.write("</tr>");
                    }
                %>
            </tbody>
        </table>
    </body>
</html>
