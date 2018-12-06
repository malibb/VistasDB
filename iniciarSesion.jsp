<%-- 
    Document   : iniciarSesion
    Created on : 6/12/2018, 12:37:12 AM
    Author     : Alfredo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Iniciar Sesión</title>
    </head>
    <body>
        <div class="container p-5">
            <div class="row my-4">
                <div class="col-12">
                    <h1>Iniciar Sesión</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-8 offset-2">
                    <form name="iniciarSesion" method="post" action="IniciarSesion">
                        <div class="form-group">
                                <label for="nickname">Nickname:</label>
                                <input type="text" class="form-control" id="nickname" name="nickname"placeholder="Nickname">
                        </div>
                        <div class="row">
                            <div class="col-4 offset-4">
                                <button type="submit" class="btn btn-primary btn-lg btn-block">Iniciar sesión</button>  
                            </div>
                        </div>    
                    </form>
                </div>
            </div>

        </div>
    </body>
</html>
