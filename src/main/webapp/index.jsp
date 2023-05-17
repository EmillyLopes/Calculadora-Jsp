<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    float n1 = 0;
    float n2 = 0;
    float resultado = 0;

    if(request.getMethod() == "POST"){
        String operacao = request.getParameter("operacao");
        n1 = Float.parseFloat(request.getParameter("n1"));
        n2 = Float.parseFloat(request.getParameter("n2"));
        if (operacao.equals("soma")
                ||request.getParameter("somar") != null) {
            resultado = n1 + n2;
        } else if (operacao.equals("media")
                ||request.getParameter("media") != null) {
            resultado = (n1 + n2) / 2;
        }

    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Calculadora</title>
</head>
<body>
    <h1>Calcular a soma ou a média de dois valores</h1>
    <form method="post" action="resultado.jsp">
            1º Valor:
            <input type="number" required name="n1" value="n1"/><br/>

            2º Valor:
            <input type="number" required name="n2" value="n2"/><br/>
            <br/>
            <input type="radio" name="operacao" value="soma" checked>Soma<br/>
            <input type="radio" name="operacao" value="media" >Média<br/>

            <input type="submit" value="calcular" name="calcular"/>
            <br/><br/>
        </form>
    </body>
</html>