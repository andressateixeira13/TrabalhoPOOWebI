<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
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
