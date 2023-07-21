<%@page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>PÁGINA PRINCIPAL</title>
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

        input[type="submit"] {
            padding: 10px 20px;
            background-color: #ff6c63;
            color: #ffffff;
            border: none;
            cursor: pointer;
        }

        /* Estilos para a aba de informações de entrada e saída recentes */
        .tab-container {
            display: inline-block;
            width: 300px;
            border: 1px solid #ffffff;
            border-radius: 5px;
            overflow: hidden;
            margin: 20px;
        }

        .tab-container h3 {
            background-color: #ff6c63;
            margin: 0;
            padding: 10px;
            cursor: pointer;
        }

        .tab-content {
            display: none;
            padding: 10px;
        }

        /* Estilos para os cofrinhos animados */
        .cofrinho-container {
            position: fixed;
            bottom: 30px;
            right: 30px;
        }

        .cofrinho {
            display: inline-block;
            width: 80px;
            height: 100px;
            background-color: #ff6c63;
            border: 2px solid #ffffff;
            border-radius: 10px;
            margin: 10px;
            text-align: center;
            line-height: 100px;
            cursor: pointer;
            transition: transform 0.3s;
        }

        .cofrinho:hover {
            transform: scale(1.1);
        }

        /* Estilos para o gráfico de gastos */
        .grafico-container {
            width: 400px;
            margin: 30px auto;
        }

    </style>
</head>
<body>
<h2>PÁGINA PRINCIPAL</h2>
<div>
    <p>Bem-vindo à página principal</p>
    <form action="cofrinhos">
        <input type="submit" value="Cofrinho">
    </form>
    <form action="investimentos">
        <input type="submit" value="Investimento">
    </form>
    <form action="movimentacoes">
        <input type="submit" value="Movimentações">
    </form>
</div>

<!-- Aba de informações de entrada e saída recentes -->
<div class="tab-container">
    <h3 onclick="toggleTab()">Entradas e Saídas Recentes</h3>
    <div class="tab-content" id="tab-content">
        <!-- Conteúdo da aba aqui (pode ser uma tabela ou lista) -->
        <p>Lista de entradas e saídas recentes...</p>
    </div>
</div>

<!-- Cofrinhos animados -->
<div class="cofrinho-container">
    <div class="cofrinho">Cofrinho 1</div>
    <div class="cofrinho">Cofrinho 2</div>
    <div class="cofrinho">Cofrinho 3</div>
    <!-- Adicione quantos cofrinhos desejar -->
</div>

<!-- Gráfico de gastos -->
<div class="grafico-container">
    <canvas id="meuGrafico"></canvas>
</div>

<!-- Script JavaScript para a aba de informações -->
<script>
    function toggleTab() {
        const tabContent = document.getElementById("tab-content");
        tabContent.style.display = tabContent.style.display === "block" ? "none" : "block";
    }
</script>

<!-- Script JavaScript para o gráfico de gastos -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    // Dados para o gráfico
    const data = {
        labels: ["Janeiro", "Fevereiro", "Março", "Abril", "Maio"],
        datasets: [{
            label: "Gastos",
            data: [50, 65, 80, 45, 70],
            backgroundColor: "rgba(75, 192, 192, 0.2)",
            borderColor: "rgba(75, 192, 192, 1)",
            borderWidth: 1
        }]
    };

    // Opções de configuração do gráfico
    const options = {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    };

    // Criação do gráfico
    const ctx = document.getElementById("meuGrafico").getContext("2d");
    const myChart = new Chart(ctx, {
        type: "bar", // Tipo do gráfico (bar, line, pie, etc.)
        data: data,
        options: options
    });
</script>
</body>
</html>
