<%@page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h2>NOVA MOVIMENTAÇÃO</h2>
<div>
    <form method="POST" action="movimentacao">
        <label for="descricao">Descrição</label>
        <input type="text" name="descricao" id="descricao"><br />
        <label for="valor">Valor</label>
        <input type="text" name="valor" id="valor"><br />
        <label for="tipo">Tipo</label>
        <select name="tipo" id="tipo">
            <option value="entrada">Entrada</option>
            <option value="saida">Saída</option>
        </select>
        <br />
        <br />
        <button type="submit">Criar Movimentação</button>
    </form>
</div>
<a href="principal.jsp">Pagina inicial</a>
</body>
</html>
