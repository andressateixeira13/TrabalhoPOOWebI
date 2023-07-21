<%@page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>NOVA MOVIMENTAÇÃO</title>
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

        input[type="text"],
        select {
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
<h2>NOVA MOVIMENTAÇÃO</h2>
<div>
    <form method="POST" action="movimentacao" onsubmit="return validarFormulario()">
        <label for="descricao">Descrição</label>
        <input type="text" name="descricao" id="descricao" required><br />
        <label for="valor">Valor</label>
        <input type="text" name="valor" id="valor" required><br />
        <label for="tipo">Tipo</label>
        <select name="tipo" id="tipo" required>
            <option value="entrada">Entrada</option>
            <option value="saida">Saída</option>
        </select>
        <br />
        <br />
        <button type="submit">Criar Movimentação</button>
    </form>
</div>
<a href="principal.jsp">Página inicial</a>

<!-- Script JavaScript para a validação do formulário -->
<script>
    function validarFormulario() {
        const descricao = document.getElementById("descricao").value;
        const valor = document.getElementById("valor").value;
        const tipo = document.getElementById("tipo").value;

        if (descricao.trim() === "") {
            alert("Preencha a descrição.");
            return false;
        }

        if (isNaN(parseFloat(valor)) || parseFloat(valor) <= 0) {
            alert("Informe um valor válido.");
            return false;
        }

        if (tipo !== "entrada" && tipo !== "saida") {
            alert("Selecione o tipo de movimentação.");
            return false;
        }

        return true;
    }
</script>
</body>
</html>
