<%-- 
    Document   : addUsersInterface
    Created on : 16 nov. 2022, 14:22:36
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
          <div id = "fondo">
        <div id="title" align="center"> Agregar Usuarios al sistema ISoftware.ec</div><br>
        <div>           
            
        <div class="">
        <form id="form" action="../Jsps/addUsers.jsp">
            <div class="col-5">
                <label for="UsuarioNombre">Nombre:</label>
                <div class="position-relative" >
                    <input type="text" class="form-control"  name="UsuarioNombre">
                </div>               
            </div>
            <div class="col-5">
                <label for="UsuarioApellido">Apellido:</label>
                <div class="position-relative" >
                    <input type="text" class="form-control " name="UsuarioApellido">
                </div>         
            </div>
            <div class="col-5">
                <label for="UsuarioDireccion">Direccion:</label>
                <div class="position-relative" >
                    <input type="text" class="form-control" name="UsuarioDireccion">
                </div>                
            </div>
                 <div class="col-5">
                <label for="UsuarioCedula">Cedula:</label>
                <div class="position-relative" >
                    <input type="text" class="form-control" name="UsuarioCedula">
                </div>           
            </div>
            <div class="form-row align-items-center">               
                <div class="position-relative">             
                <br>
              <button type="submit" class="btn btn-primary" id="GuardarUsuarios">Guardar</button>
              <button type="reset" class="btn btn-secondary" id="DescartarUsuarios">Descartar</button>
        </form>
            </div>
                <br>
                 </div>
        </div>
            </div>
    </body>
</html>