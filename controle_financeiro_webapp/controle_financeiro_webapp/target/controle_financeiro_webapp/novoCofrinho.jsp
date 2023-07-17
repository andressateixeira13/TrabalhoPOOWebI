<%@page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h2>NOVO COFRINHO</h2>
<div>
    <form method="POST" action="cofrinhos">

        <label for="nomeCofrinho">Nome</label>
        <input type="text" name="nomeCofrinho" id="nomeCofrinho"><br />
        <label for="valorTotalEsperado">Valor Total Esperado</label>
        <input type="text" name="valorTotalEsperado" id="valorTotalEsperado"><br />
        <label for="valorAtual">Valor Atual</label>
        <input type="text" name="valorAtual" id="valorAtual">
        <br />
        <br />
        <button type="submit">Criar Cofrinho</button>
    </form>

</div>
<a href="principal.jsp">Pagina inicial</a>
</body>
</html>
