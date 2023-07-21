<%@page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>NOVO INVESTIMENTO</title>
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
<h2>NOVO INVESTIMENTO</h2>
<div>
    <form method="POST" action="investimentos" onsubmit="return validarFormulario()">
        <label for="nomeInvestimento">Nome</label>
        <input type="text" name="nomeInvestimento" id="nomeInvestimento" required><br />
        <label for="valorInvestido">Valor Investido</label>
        <input type="text" name="valorInvestido" id="valorInvestido" required><br />
        <label for="rendimento">Rendimento</label>
        <input type="text" name="rendimento" id="rendimento" required>
        <br />
        <br />
        <button type="submit">Criar Investimento</button>
    </form>
</div>
<a href="principal.jsp">Página inicial</a>

<!-- Script JavaScript para a validação do formulário -->
<script>
    function validarFormulario() {
        const nomeInvestimento = document.getElementById("nomeInvestimento").value;
        const valorInvestido = document.getElementById("valorInvestido").value;
        const rendimento = document.getElementById("rendimento").value;

        if (nomeInvestimento.trim() === "") {
            alert("Preencha o nome do investimento.");
            return false;
        }

        if (isNaN(parseFloat(valorInvestido)) || parseFloat(valorInvestido) <= 0) {
            alert("Informe um valor investido válido.");
            return false;
        }

        if (isNaN(parseFloat(rendimento)) || parseFloat(rendimento) < 0) {
            alert("Informe um valor de rendimento válido.");
            return false;
        }

        return true;
    }
</script>
</body>
</html>
