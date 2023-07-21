<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>DETALHES DO COFRINHO</title>
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

        p {
            margin: 10px;
            padding: 5px;
            background-color: rgba(255, 108, 99, 0.3);
            border: 2px solid #ffffff;
            border-radius: 5px;
        }
    </style>
</head>
<body>
<h2>DETALHES DO COFRINHO</h2>
<div>
    <p>ID: "${cofrinho.id}"</p>
    <p>Nome: "${cofrinho.nome}"</p>
    <p>Valor Total Esperado: "${cofrinho.valorTotalEsperado}"</p>
    <p>Valor Atual: "${cofrinho.valorAtual}"</p>
</div>
</body>
</html>
