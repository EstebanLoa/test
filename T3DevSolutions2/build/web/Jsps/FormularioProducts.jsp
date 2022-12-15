


<%@page import="ModelDAO.ModelosDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Productos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <title>Lista de Productos</title>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
              crossorigin="anonymous">   
     <link href="../CSS/estilos.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body>
           <%        
            ModelosDAO modelosDAO = new ModelosDAO();
            ArrayList<Productos> product;
            product = modelosDAO.getProductos();
           %>
        
            <div class="container">
            <div id="title" align="center" >Lista de Productos - ISoftware.ec</div>
            <section id = "DatosEnPantalla">
            <table class="table table-blue">
                <thead>
                    <tr>                 
                        <th >Nombre</th>
                        <th >Marca</th>
                        <th >Cantidad</th>
                        <th >Precio</th>
                        <th >Total</th>
                        <th >Ganancia</th>
                    </tr>
                </thead>
                    <%
                      for(Productos productos : product){
                    %>
                    <tr class="text-center">

                        <td ><% out.print(productos.getNombre());%></td>
                        <td ><% out.print(productos.getMarca());%></td>
                        <td ><% out.print(productos.getCantidad());%></td>
                        <td ><% out.print(productos.getPrecio());%></td>
                        <td ><% out.print(productos.getTotal());%> </td>
                        <td ><% out.print(productos.getGanancia());%> </td>
                        <td class="text-center">
                            <a href="Controller?accion=updateProducts$id=<%=product.getClass()%>"
                                <button class="btn btn-primary">
                                    Editar
                                </button>
                            </a>
                        </td>
                        <td class="text-center">
                            <a href="Controller?accion=removeProducts&id=<%= product.getClass()%>">
                                <button class="btn btn-warning">
                                    Eliminar
                                </button>
                            </a>
                        </td>
                    </tr>
                    <%
                        }
                    %> 
                </tbody>
                
            </table> 
            </section>
                 <div>
             <button class="btn btn-dark">     
                        <a href="../index.jsp">Regresar</a>
             </button> 
                 </div>
    </div>
    </body>
   
</html>




