<%@page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <title>COFRINHOS</title>
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
<h2>COFRINHOS</h2>
<div>
    <c:if test="${not empty cofrinhos}">
        <table>
            <tr>
                <th>Nome</th>
                <th>Valor Total Esperado</th>
                <th>Valor Atual</th>
            </tr>
            <c:forEach var="cofrinho" items="${cofrinhos}">
                <tr>
                    <td>${cofrinho.nomeCofrinho}</td>
                    <td>${cofrinho.valorTotalEsperado}</td>
                    <td>${cofrinho.valorAtual}</td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
</div>

<a href="novoCofrinho.jsp">Fazer cofrinho</a>
<a href="principal.jsp">Página inicial</a>
</body>
</html>
