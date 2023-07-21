<%@page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CADASTRO DE USUÁRIO</title>
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
    </style>
</head>
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
