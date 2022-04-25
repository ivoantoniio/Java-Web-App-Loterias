<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=5">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <center> <title>IvoAPP - Página Inicial!</title>
    </head>
    <body>
        <h1>Bem-vindo ao Loterias APP !!!</h1>
        </br>
        <%if (session.getAttribute("username") == null) {%>

            <h4>Faça o login para ter acesso</h4>
            <h5>as nossas funciolidades!</h5>
            <br/>
            <form>
                <h5>
                    Usuário:
                    <input type="text" name="username"/>
                    <button type="submit" name="logon" class="btn btn-primary">Login</button>
                </h5>                 
            </form>
        <%}else{%> 
            <h4>Está com dúvida em qual</h4>
            <h5>número apostar na <b>Loteria?</b></h5>
            </br>
            <h5><a href="loteria.jsp"><b>Clique aqui</b></a></h5>
        <%}%>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</center>

</html>
