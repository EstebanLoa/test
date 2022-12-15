

<%@page import="ModelDAO.ModelosDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Usuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
    <head>
         <title>Lista de Usuarios</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
              crossorigin="anonymous">  
        <link href="../CSS/estilos.css" rel="stylesheet" type="text/css"/>
        
    </head>
       <body>
        
       <%        
            ModelosDAO modelosDAO = new ModelosDAO();
            ArrayList <Usuarios> usuario;
            usuario = modelosDAO.getUsuarios();
           %>
            <div class="container">
            <div align="center" id="title">Lista de Usuarios - ISoftware.ec</div>
            <section id="DatosEnPantalla">
                <table class="table table-light">
                <thead>
                    <tr class="text-center">   
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Direccion</th>
                        <th>Cedula</th>                     
                    </tr>
                </thead>
                <tbody id=#MostrarUsuariosAgregados">
           <%
                      for(Usuarios usuarios : usuario){
                    %>
                
                    <tr class="text-center">
                        <td> <% out.print(usuarios.getId());%></td>
                        <td> <% out.print(usuarios.getNombre());%></td>
                        <td> <% out.print(usuarios.getApellido());%></td>
                        <td> <% out.print(usuarios.getDireccion());%></td>
                        <td> <% out.print(usuarios.getCedula());%></td>                      
                    <td class="text-center">
                            <a href="Jsps/updateProducts.jsp">
                                <button class="btn btn-primary">
                                    Editar
                                </button>
                            </a>
                        </td>
                        <td class="text-center">
                            <a href="Controller?accion=deleteProducts&id=<%= usuarios.getClass()%>">
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
