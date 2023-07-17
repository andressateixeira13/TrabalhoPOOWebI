<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<html>
<body>
<h2>LOGAR</h2>
<div>
    <form method="POST" action="usuarios">
        <label for="nickname">Nickname</label>
        <input type="text" name="nickname" id="nickname"><br />
        <label for="senha">Senha</label>
        <input type="password" name="senha" id="senha">
        <br />
        <br />
        <button type="submit">Autenticar</button>
    </form>

    <c:if test="${not empty msgServidor}">
        <h2>Usuário ou senha incorretos</h2>
    </c:if>

    <a href="cadastro.jsp">Registrar</a>
</div>
</body>
</html>
