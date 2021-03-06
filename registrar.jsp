<%-- 
    Document   : registrar
    Created on : 5/12/2018, 09:37:32 PM
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
        <title>Registrar</title>
    </head>
    <body>
        <div class="container p-5">
            <!-- TÍTULO -->
            <div class="row">
                <h3>Registrarse</h3>
            </div>
            <!-- FORMULARIO -->
            <div class="row">
                <div class="col-8 offset-2">
                        <form name="nuevoUsuario" method="post" action="NuevoUsuarioSer">
                            <div class="form-group">
                                <label for="nickname">Nickname  </label>
                                <input type="text" class="form-control" id="nickname" name="nickname" placeholder="Nickname" required>
                            </div>
                            <div class="form-group">
                                <label for="curp">Curp:  </label>
                                <input type="text" class="form-control" id="curp" name="curp" placeholder="Curp" required>
                            </div>
                            <div class="form-group">
                                <label for="nombre">Nombre:  </label>
                                <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre" required>
                            </div>
                            <div class="form-group">
                                <label for="telefono">Teléfono:  </label>
                                <input type="text" class="form-control" id="telefono" name="telefono" placeholder="Teléfono" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Email:  </label>
                                <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
                            </div>
                            <div class="form-group">
                                <label for="edad">Edad:  </label>
                                <input type="number" class="form-control" id="edad" name="edad" placeholder="Edad" required>
                            </div>
                            <div class="form-group">
                                <label for="direccion">Dirección:  </label>
                                <input type="text" class="form-control" id="direccion" name="direccion" placeholder="Dirección" required>
                            </div>
                            <div class="form-group">
                                <label for="codigoPostal">Código Postal:  </label>
                                <input type="number" class="form-control" id="codigoPostal" name="codigoPostal" placeholder="Código Postal" required>
                            </div>
                            <button type="submit" class="btn btn-primary btn-lg btn-block">Registrar</button>
                        </form>
                </div>
            </div>
                      
        </div>
    </body>
</html>
