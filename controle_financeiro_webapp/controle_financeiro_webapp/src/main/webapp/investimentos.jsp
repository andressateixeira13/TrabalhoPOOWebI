<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>INVESTIMENTOS</title>
    <style>
        /* Estilos padrão */
        body {
            background-color: #6c63ff;
            color: #ffffff;
            font-family: Arial, sans-serif;
            text-align: center;
        }

        h2 {
            margin-top: 40px;
        }

        div {
            margin-top: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            border: 2px solid #ffffff;
        }

        th, td {
            padding: 10px;
            border-bottom: 2px solid #ffffff;
        }

        th {
            background-color: #ff6c63;
        }

        tr:hover {
            background-color: rgba(255, 108, 99, 0.2);
            transition: background-color 0.3s;
        }
    </style>
</head>
<body>
<h2>INVESTIMENTOS</h2>
<div>
    <c:if test="${not empty investimentos}">
        <table>
            <tr>
                <th>Nome</th>
                <th>Valor Investido</th>
                <th>Rendimento</th>
            </tr>
            <c:forEach var="investimento" items="${investimentos}">
                <tr>
                    <td>${investimento.nomeInvestimento}</td>
                    <td>${investimento.valorInvestido}</td>
                    <td>${investimento.rendimento}</td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
</div>
<a href="novoInvestimento.jsp">Cadastrar investimento</a>
<a href="principal.jsp">Página inicial</a>
</body>
</html>
