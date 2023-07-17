<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<html>
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
<a href="principal.jsp">Pagina inicial</a>
</body>
</html>
