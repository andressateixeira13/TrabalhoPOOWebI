<%@page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h2>CADASTRO DE USUÁRIO</h2>
<div>
    <form method="POST" action="usuarios">
        <label for="nomeUsuario">Nome</label>
        <input type="text" name="nomeUsuario" id="nomeUsuario"><br />
        <label for="nickname">Nickname</label>
        <input type="text" name="nickname" id="nickname"><br />
        <label for="email">Email</label>
        <input type="text" name="email" id="email"><br />
        <label for="senhaUsuario">Senha</label>
        <input type="password" name="senhaUsuario" id="senhaUsuario">
        <br />
        <br />
        <button type="submit">Cadastrar</button>
    </form>
</div>
</body>
</html>
