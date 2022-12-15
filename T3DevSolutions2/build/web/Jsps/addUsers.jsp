

<%@page import="Model.Usuarios"%>
<%@page import="org.bson.Document"%>
<%@page import="ConnectionMongoDB.ConnectionMongoDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
              crossorigin="anonymous">  
        <link href="../CSS/estilos.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Refresh" content="3;URL=../index.jsp"

        <div id="title" align="text-center">Usuarios Agregados</div>
    </head>
    <body>
        <header>Añadir Usuario</header>
        <% 
            ConnectionMongoDB connectionmongodb = new ConnectionMongoDB();
            ConnectionMongoDB mongoDBMetodos = new ConnectionMongoDB();
            mongoDBMetodos.ConnectionMongo();
            Document document = new Document();  
            
            int id;
            String nombre;
            String apellido;
            String direccion;
            String cedula;        
            
            id = (int)(Math. random()*1+1);
            nombre = request.getParameter("UsuarioNombre");
            apellido = request.getParameter("UsuarioApellido");
            direccion = request.getParameter("UsuarioDireccion");
            cedula = request.getParameter("UsuarioCedula");
                      
            Usuarios usuarios = new Usuarios ( id, nombre, apellido, direccion, cedula);
                      
            document.put("id", usuarios.getId());
            document.put("nombre", usuarios.getNombre());
            document.put("apellido", usuarios.getApellido());
            document.put("direccion", usuarios.getDireccion());
            document.put("cedula", usuarios.getCedula());
            
            connectionmongodb.save (document,"RegistroUsuarios", connectionmongodb.database);
        %>
    </body>
</html>
