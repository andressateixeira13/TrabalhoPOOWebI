<%@page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h2>NOVO INVESTIMENTO</h2>
<div>
    <form method="POST" action="investimentos">
        <label for="nomeInvestimento">Nome</label>
        <input type="text" name="nomeInvestimento" id="nomeInvestimento"><br />
        <label for="valorInvestido">Valor Investido</label>
        <input type="text" name="valorInvestido" id="valorInvestido"><br />
        <label for="rendimento">Rendimento</label>
        <input type="text" name="rendimento" id="rendimento">
        <br />
        <br />
        <button type="submit">Criar Investimento</button>
    </form>
</div>
<a href="principal.jsp">Pagina inicial</a>
</body>
</html>
