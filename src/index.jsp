<%@ page language="java" %>
<html>
<head>
    <title>Soma/media</title>
</head>
<body>
<h1>Calcular a soma ou a média de dois valores</h1>
<form method="post" action="resultado.jsp">
    <label for="valor1">1º Valor:</label>
    <input type="text" name="valor1" id="valor1" value="valor1"/><br/>

    <label for="valor2">2º Valor:</label>
    <input type="text" name="valor2" id="valor2" value="valor2"/><br/>

    <label for="operacao">Operação:</label>
    <select name="operacao" id="operacao">
        <option value="soma">Soma</option>
        <option value="media">Média</option>
    </select><br/>

    <input type="submit" value="Calcular" />
</form>
</body>
</html>
