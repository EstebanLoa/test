<%-- 
    Document   : index
    Created on : 16 nov. 2022, 12:47:20
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Team 3 DevSolutions</title>
        <meta charset="UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
              crossorigin="anonymous">
        <link href="CSS/estilos.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
       
       <div class="container">
       <div align="center" id="title">ISoftware.ec</div> 
        
        <div align="center" class="btn-group">
            
            <button type="submit" id="btn-index">
                <img src="images/addproduct.jpg" alt="" /><br><a href="Jsps/addProductsInterface.jsp">Agregar Productos</a>
            </button>
            <button type="submit" id="btn-index">     
                <img src="images/addproduct.jpg" alt="" /><br><a href="Jsps/addUsersInterface.jsp">Agregar Usuarios </a>
             </button> 
            <button type="submit" id="btn-index">     
                <img src="images/addproduct.jpg" alt="" /><br><a href="Jsps/FormularioProducts.jsp">Listar Productos  </a>
            </button> 
            <button type="submit" id="btn-index">     
                <img src="images/addproduct.jpg" alt="" /><br><a href="Jsps/FormularioUsers.jsp">Listar Usuarios</a>
            </button>    
        </div>   
       </div>
        </body>
</html>
