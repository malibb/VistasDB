<%-- 
    Document   : paginaPrincipal
    Created on : 6/12/2018, 01:20:17 AM
    Author     : Alfredo
--%>

<%@page import="java.util.List"%>
<%@page import="sources.Producto"%>
<%@page import="sources.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    Usuario usuario = (Usuario)session.getAttribute("usuariologgeado");
    
    if(!usuario.isIsValid()){
        response.sendRedirect("iniciarSesion.jsp");
    }else{
        HttpSession session1 = request.getSession(true);
        session1.setAttribute("usuariologgeado", usuario);
    }
    
    Producto producto = new Producto();
    producto.open();
    List<Producto> productos = producto.selectProductosOtros(usuario.getNickname());
    
    System.out.println("Ahora estás en la pagina principal como: "+usuario.getNickname());

%>
<html>
    <head>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Principal</title>
    </head>
    <body>
        <div class="container p-5">
            <div class="row mb-5">
                    <a class="btn btn-primary mr-5" href="agregarProducto.jsp" role="button">Agregar Producto</a>
                    <a class="btn btn-primary ml-5" href="carrito.js´p" role="button">Consultar Carrito</a>
            </div>
            <div class="row">
                <div class="col-6 offset3">
                    <table class="table">
                        <thead>
                            <tr>
                            <th>Nombre</th>
                            <th>Precio</th>
                            <th>Vendedor</th>
                            <th>Acción</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% 
                                if(productos != null){
                                    for(Producto product : productos){
                            %>
                            <tr>
                                <td><%=product.getNombre()%></td>
                                <td><%=product.getPrecio()%> </td>
                                <td><%=product.getNickname()%></td>
                                <td>
                                    <form name="producto" action="agregarCarrito" method="post">
                                        <input type="text" name="idProducto" value="<%=producto.getIdProducto()%>" hidden="true"/>
                                        <input type="submit" class="btn btn-primary btn-lg btn-block" name="agregar" value="Agregar al carrito">
                                    </form>
                                </td>
                            </tr>
                            <% 
                                    }
                                }
                                producto.close();

                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        
                    
        
</html>
