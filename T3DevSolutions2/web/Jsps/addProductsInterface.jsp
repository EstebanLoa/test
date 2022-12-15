<%-- 
    Document   : addProductsInterface
    Created on : 16 nov. 2022, 14:21:33
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Team3 DevSolutions</title>
        <meta charset="UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
              crossorigin="anonymous">  
        <link href="../CSS/estilos.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
      <body class="container">
         
       <div align="center" id="title" > Agregar Productos al sistema ISoftware.ec</div><br>
        <form id="form" action="../Jsps/addProducts.jsp">
           
            <div class="col-5">
                <label >Nombre:</label>
                <div class="position-relative" >
                    <input type="text" class="form-control"   name="ProductoNombre">
                </div>               
            </div>
            <div class="col-5">
                <label >Marca:</label>
                <div class="position-relative" >
                    <input type="text" class="form-control "  name="ProductoMarca">
                </div>         
            </div>
            <div class="col-5">
                <label>Cantidad:</label>
                <div class="position-relative" >
                    <input type="text" class="form-control" name="ProductoCantidad">
                </div>                
            </div>
                 <div class="col-5">
                <label>Precio:</label>
                <div class="position-relative" >
                    <input type="text" class="form-control"  name="ProductoPrecio">
                </div>           
            </div>    
            <div class="form-row align-items-center">               
                <div class="position-relative">             
                <br>
              <button type="submit" class="btn btn-primary" id="GuardarProductos">Guardar</button>
              <button type="reset" class="btn btn-secondary" id="DescartarProductos">Descartar</button>
        </form>
            </div>
                
                 </div>
    
    </body>
</html>