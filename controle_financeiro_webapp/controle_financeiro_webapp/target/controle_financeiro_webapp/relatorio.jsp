<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body>
<h2>RELATÓRIO</h2>
<div>
    <c:if test="${not empty movimentacoes}">
        <table>
            <tr>
                <th>Descrição</th>
                <th>Valor</th>
                <th>Tipo</th>
            </tr>
            <c:forEach var="movimentacao" items="${movimentacoes}">
                <tr>
                    <td>${movimentacao.descricao}</td>
                    <td>${movimentacao.valor}</td>
                    <td>${movimentacao.tipo}</td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
</div>
<a href="principal.jsp">Pagina inicial</a>
</body>
</html>
