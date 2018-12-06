<%@page import="java.util.List"%>
<%@page import="sources.ContieneV2"%>
<%@page import="sources.Carrito"%>
<%@page import="sources.Producto"%>
<%@page import="sources.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    Usuario usuario = (Usuario)session.getAttribute("usuariologgeado");
    
    Carrito carrito = new Carrito();
    
    carrito.open();
    String carritoID = carrito.selectIDCarrito(usuario.getNickname());
    System.out.println("El id del carrito es: "+carritoID);
    
    
    if(!usuario.isIsValid()){
        response.sendRedirect("iniciarSesion.jsp");
    }else{
        HttpSession session1 = request.getSession(true);
        session1.setAttribute("usuariologgeado", usuario);
    }
    
    ContieneV2 contienev2 = new ContieneV2();
    contienev2.open();
    List<ContieneV2> contenidosCarrito = contienev2.selectCarrito(Integer.parseInt(carritoID));
    
    System.out.println("Ahora estás en la pagina principal como: "+usuario.getNickname());

%>

<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrito</title>
    </head>
    </head>
    <body>
         <div class="container p-5">
            <div class="row">
                <div class="col-10 offset-1">
                    <h1>Carrito</h1>
        
                      <table class="table">
                          <thead>
                          <tr>
                              <th>Nombre</th>
                              <th>Cantidad</th>
                              <th>Vendedor</th>
                              <th></th>
                          </tr>
                          </thead>
                          <tbody>
                                <% 
                                if(contenidosCarrito != null){
                                    for(ContieneV2 contenido : contenidosCarrito){
                                
                            %>
                          <tr>
                              
                              <form name="productos" method="post" action="EliminarCarrito">
                                  <input type="hidden" name="idProducto" value="<%=contenido.getIdProducto()%>">
                                  <input type="hidden" name="idCarrito" value="<%=carritoID%>">
                                  <th> <%= contenido.getNombreProducto()%> </th>
                                  <th> <%= contenido.getCantidad() %> </th>
                                  <th> <%= contenido.getNickname() %> </th>
                                  <th> <input class="btn btn-danger mr-5" type="submit" value="Eliminar producto"> </th>    
                                  
                              </form>
                              
                          </tr>
                          <% 
                        }
                    }
                    contienev2.close();

                %>
                          </tbody>

                          
                      </table> 
                </div>       
          </div>
        </div>
    </body>
</html>