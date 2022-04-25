<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@include file="WEB-INF/jspf/header.jspf" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <style>
            ul, li{
                margin: 0;
                padding: 0;
                list-style:none;
            }
        </style>

        <title>IvoApp - Loterias</title>
    </head>
    <body>
        </br>
    <center>
        <%if (session.getAttribute("username") != null) {%>

        <h2>Dica de Números:</h2>
        </br>
        <%
            ArrayList listaPagina = (ArrayList) request.getSession().getAttribute("arrayNaSessao");

            int[] num = new int[6];
            for (int i = 0; i < listaPagina.size(); i++) {
                num[i] = ((int) listaPagina.get(i));
            }
        %>
        <%for (int i = 0; i < num.length; i++) {%>
        <h5><li><b><%= num[i]%></b></li></h5>
                    <%}%>

        <%} else {%>
    </center>

    <div class="alert alert-danger d-flex align-items-center" role="alert">  
        <div> 
            Você não tem permissão para ver esta página!
            <br/>
            Volte para a página de login <a href="index.jsp">clicando aqui.</a>
        </div>
    </div>

    <%}%>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMh9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
