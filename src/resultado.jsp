<%@ page language="java" %>
<html>
<head>
    <title>Resultado</title>
</head>
<body>
<h1>Resultado</h1>
<%-- Obter os valores enviados pelo formulário --%>
<% float valor1 = Float.parseFloat(request.getgetParameter("valor1")); %>
<% float valor2 = Float.parseFloat(request.getParameter("valor2")); %>
<% String operacao = request.getParameter("operacao"); %>

<%-- Realizar a operação selecionada --%>
<% float resultado = 0; %>
<% if (operacao.equals("soma")) { %>
<% resultado = valor1 + valor2; %>
<p>Operação: Soma</p>
<% } else if (operacao.equals("media")) { %>
<% resultado = (valor1 + valor2) / 2; %>
<p>Operação: Média</p>
<% } %>

<%-- Exibir o resultado --%>
<p>Valor 1: <%= valor1 %></p>
<p>Valor 2: <%= valor2 %></p>
<p>Resultado: <%= resultado %></p>

<a href="index.jsp">Voltar</a>
</body>
</html>
