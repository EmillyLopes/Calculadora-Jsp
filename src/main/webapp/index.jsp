<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Calculadora</title>
</head>
<body>
<h1>Calcular a soma ou a média de dois valores</h1>
<% if (request.getParameter("valor1") != null && request.getParameter("valor2") != null) {
    float valor1 = Float.parseFloat(request.getParameter("valor1"));
    float valor2 = Float.parseFloat(request.getParameter("valor2"));
    String operacao = request.getParameter("operacao");
    float resultado = 0;

    if (operacao.equals("soma")) {
        resultado = valor1 + valor2;
%>
<p>Operação: Soma</p>
<%
} else if (operacao.equals("media")) {
    resultado = (valor1 + valor2) / 2;
%>
<p>Operação: Média</p>
<%
    }

%>
<p>1º Valor: <%= valor1 %></p>
<p>2º Valor: <%= valor2 %></p>
<p>Resultado: <%= resultado %></p>
<a href="index.jsp">Voltar</a>
<%
} else { %>
<form method="post" action="">
    <label for="valor1">1º Valor:</label>
    <input type="number" name="valor1" id="valor1" /><br/>

    <label for="valor2">2º Valor:</label>
    <input type="number" name="valor2" id="valor2" /><br/><br/>

    <label>Operação:</label><br/>
    <input type="radio" name="operacao" value="soma" checked /> Soma<br/>
    <input type="radio" name="operacao" value="media" /> Média<br/>
    <br/><br/>
    <input type="submit" value="Calcular" />
</form>
<% } %>
</body>
</html>
