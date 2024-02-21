<%@page import="entidades.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./estilos/estilos.css"/>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            String nome= "jose da silva";
        %>
        <p> Bem vindo <% out.write(nome); %></p>
        <p>Dados da classe pessoa</p>
        <hr/>
        <%
            Pessoa p = new Pessoa();
            p.nome = "Didi Mocó";
            out.write("<p class= 'red'>" + p.ola()+"</p>");
        %>
    </body>
</html>

