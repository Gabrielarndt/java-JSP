<%@page import="entidades.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cadastro</h1>
        <hr/>
        <form action="cadastro.jsp"method = "POST">
            <input type ="text" placeholder="informe nome" name="nome" />
            <input type ="number" placeholder="informe idade" name="idade" />
            <button>ok</button>
        </fom>

        <%
            Pessoa p = new Pessoa();
            p.nome = request.getParameter("nome");
            if(request.getParameter("idade") != null)
                p.idade = Integer.parseInt(request.getParameter("idade"));
        %>
        <p>Nome: <span> 
                <%
                    String resultado = p.verificaidade();
                    out.write(p.nome + " voce é " + resultado + " de idade.");
                %>
            </span>
        </p>


</body>
</html>