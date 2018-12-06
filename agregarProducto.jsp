<%-- 
    Document   : agregarProducto
    Created on : 6/12/2018, 02:09:44 AM
    Author     : Alfredo
--%>

<%@page import="sources.Usuario"%>
<% 

    Usuario usuario = (Usuario)session.getAttribute("usuariologgedo");
    
    if(!usuario.isIsValid()){
        response.sendRedirect("iniciarSesion.jsp");
    }else{
        HttpSession session1 = request.getSession(true);
        session1.setAttribute("usuariologgeado", usuario);
    }

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Producto</title>
    </head>
    <body>
        <div class="container p-5">
            <!-- TÍTULO -->
            <div class="row">
                <h3>Agregar Producto</h3>
            </div>
            <!-- FORMULARIO -->
            <div class="row">
                <div class="col-8 offset-2">
                        <form name="registrarProducto" method="post" action="nuevoProducto">
                            <div class="form-group">
                                <label for="nombre">Nombre:  </label>
                                <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre">
                            </div>
                            <div class="form-group">
                                <label for="descripcion">Descripción:  </label>
                                <input type="text" class="form-control" id="descripcion" name="descripcion" placeholder="Descripción">
                            </div>
                            <div class="form-group">
                                <label for="tipo">Tipo:  </label>
                                <input type="text" class="form-control" id="tipo" name="tipo" placeholder="Tipo">
                            </div>
                            <div class="form-group">
                                <label for="precio">Precio:  </label>
                                <input type="number" step="0.01" class="form-control" id="precio" name="precio" placeholder="Precio">
                            </div>
                            <div class="form-group">
                                <label for="marca">Marca:  </label>
                                <input type="text" class="form-control" id="marca" name="marca" placeholder="Marca">
                            </div>
                            <div class="form-group">
                                <label for="existencias">Existencias:  </label>
                                <input type="number" class="form-control" id="existencias" name="existencias" placeholder="Existencias">
                            </div>
                            <button type="submit" class="btn btn-primary btn-lg btn-block">Registrar</button>
                        </form>
                </div>
            </div>
                      
        </div>
    </body>
</html>

