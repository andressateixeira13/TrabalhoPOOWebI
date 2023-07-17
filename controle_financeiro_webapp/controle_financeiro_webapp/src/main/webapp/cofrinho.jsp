<%@page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
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
            <c:forEach var="cofrinhos" items="${cofrinhos}">
                <tr>
                    <td>${cofrinhos.nomeCofrinho}</td>
                    <td>${cofrinhos.valorTotalEsperado}</td>
                    <td>${cofrinhos.valorAtual}</td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
</div>

<a href="novoCofrinho.jsp">Fazer cofrinho</a>
<a href="principal.jsp">Pagina inicial</a>
</body>
</html>
