<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>RELATÓRIO</title>
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

        table {
            width: 100%;
            border-collapse: collapse;
            border: 2px solid #ffffff;
            margin-bottom: 20px;
        }

        th, td {
            padding: 10px;
            border-bottom: 2px solid #ffffff;
        }

        th {
            background-color: #ff6c63;
        }

        canvas {
            max-width: 80%;
            margin: 0 auto;
        }

        a {
            display: block;
            margin-top: 20px;
        }
    </style>
    <!-- Adicione o script do Chart.js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
<h2>RELATÓRIO</h2>
<div>
    <c:if test="${not empty movimentacoes}">
        <table>
            <tr>
                <th>Descrição</th>
                <th>Valor</th>
                <th>Tipo</th>
            </tr>
            <c:forEach var="movimentacao" items="${movimentacoes}">
                <tr>
                    <td>${movimentacao.descricao}</td>
                    <td>${movimentacao.valor}</td>
                    <td>${movimentacao.tipo}</td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    <canvas id="graficoMovimentacoes"></canvas>
</div>
<a href="principal.jsp">Página inicial</a>

<!-- Script JavaScript para criar o gráfico -->
<script>
    document.addEventListener("DOMContentLoaded", function () {
        const movimentacoes = ${movimentacoes};
        const descricoes = movimentacoes.map(movimentacao => movimentacao.descricao);
        const valores = movimentacoes.map(movimentacao => movimentacao.valor);

        const ctx = document.getElementById("graficoMovimentacoes").getContext("2d");
        new Chart(ctx, {
            type: "bar",
            data: {
                labels: descricoes,
                datasets: [{
                    label: "Valor",
                    data: valores,
                    backgroundColor: "#ff6c63",
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    });
</script>
</body>
</html>
