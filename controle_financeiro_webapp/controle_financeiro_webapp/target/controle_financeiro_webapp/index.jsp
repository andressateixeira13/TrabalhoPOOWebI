<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<html>
<head>
    <title>LOGAR</title>
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

        form {
            margin-top: 30px;
        }

        input {
            padding: 8px;
            margin: 5px;
        }

        button {
            padding: 10px 20px;
            background-color: #ff6c63;
            color: #ffffff;
            border: none;
            cursor: pointer;
        }

        a {
            color: #ffffff;
            text-decoration: none;
        }

        /* Estilos para o botão de alternância de temas */
        .theme-toggle {
            position: fixed;
            bottom: 20px;
            left: 20px;
        }

        /* Estilos para o modo escuro */
        body.dark-mode {
            background-color: #1a1919;
            color: #ffffff;
        }

        body.dark-mode button {
            background-color: #ff6c63;
        }

        body.dark-mode #theme-toggle-btn {
            background-color: #6c63ff;
        }
    </style>
</head>
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

<!-- Script JavaScript para o tema claro/escuro -->
<script>
    document.addEventListener("DOMContentLoaded", function () {
        const themeToggleBtn = document.createElement("button");
        themeToggleBtn.id = "theme-toggle-btn";
        themeToggleBtn.innerText = "Modo Claro";
        document.querySelector("body").appendChild(themeToggleBtn);

        themeToggleBtn.addEventListener("click", function () {
            document.body.classList.toggle("dark-mode");
            const currentMode = document.body.classList.contains("dark-mode")
                ? "Modo Escuro"
                : "Modo Claro";
            themeToggleBtn.innerText = currentMode;
        });
    });
</script>
</body>
</html>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<html>
<head>
    <title>LOGAR</title>
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

        form {
            margin-top: 30px;
        }

        input {
            padding: 8px;
            margin: 5px;
        }

        button {
            padding: 10px 20px;
            background-color: #ff6c63;
            color: #ffffff;
            border: none;
            cursor: pointer;
        }

        a {
            color: #ffffff;
            text-decoration: none;
        }

        /* Estilos para o botão de alternância de temas */
        .theme-toggle {
            position: fixed;
            bottom: 20px;
            left: 20px;
        }

        /* Estilos para o modo escuro */
        body.dark-mode {
            background-color: #1a1919;
            color: #ffffff;
        }

        body.dark-mode button {
            background-color: #ff6c63;
        }

        body.dark-mode #theme-toggle-btn {
            background-color: #6c63ff;
        }
    </style>
</head>
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

<!-- Script JavaScript para o tema claro/escuro -->
<script>
    document.addEventListener("DOMContentLoaded", function () {
        const themeToggleBtn = document.createElement("button");
        themeToggleBtn.id = "theme-toggle-btn";
        themeToggleBtn.innerText = "Modo Claro";
        document.querySelector("body").appendChild(themeToggleBtn);

        themeToggleBtn.addEventListener("click", function () {
            document.body.classList.toggle("dark-mode");
            const currentMode = document.body.classList.contains("dark-mode")
                ? "Modo Escuro"
                : "Modo Claro";
            themeToggleBtn.innerText = currentMode;
        });
    });
</script>
</body>
</html>
