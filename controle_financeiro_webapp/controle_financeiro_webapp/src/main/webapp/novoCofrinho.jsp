<%@page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>NOVO COFRINHO</title>
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

        form {
            margin: 10px;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"] {
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
<h2>NOVO COFRINHO</h2>
<div>
    <form method="POST" action="cofrinhos" onsubmit="return validarFormulario()">
        <label for="nomeCofrinho">Nome</label>
        <input type="text" name="nomeCofrinho" id="nomeCofrinho" required><br />
        <label for="valorTotalEsperado">Valor Total Esperado</label>
        <input type="text" name="valorTotalEsperado" id="valorTotalEsperado" required><br />
        <label for="valorAtual">Valor Atual</label>
        <input type="text" name="valorAtual" id="valorAtual" required>
        <br />
        <br />
        <button type="submit">Criar Cofrinho</button>
    </form>
</div>
<a href="principal.jsp">Página inicial</a>

<!-- Script JavaScript para a validação do formulário -->
<script>
    function validarFormulario() {
        const nomeCofrinho = document.getElementById("nomeCofrinho").value;
        const valorTotalEsperado = document.getElementById("valorTotalEsperado").value;
        const valorAtual = document.getElementById("valorAtual").value;

        if (nomeCofrinho.trim() === "") {
            alert("Preencha o nome do cofrinho.");
            return false;
        }

        if (isNaN(parseFloat(valorTotalEsperado)) || parseFloat(valorTotalEsperado) <= 0) {
            alert("Informe um valor total esperado válido.");
            return false;
        }

        if (isNaN(parseFloat(valorAtual)) || parseFloat(valorAtual) < 0) {
            alert("Informe um valor atual válido.");
            return false;
        }

        return true;
    }
</script>
</body>
</html>
