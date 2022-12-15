<%-- 
    Document   : updateProducts
    Created on : 17 nov. 2022, 10:12:35
    Author     : USUARIO
--%>

<%@page import="Model.Productos"%>
<%@page import="org.bson.Document"%>
<%@page import="ConnectionMongoDB.ConnectionMongoDB"%>
<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../CSS/estilos.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Refresh" content="3;URL=../index.jsp">

        <div id="title" align="text-center">Productos Eliminados</div>
    </head>
    <body>
        <header>Productos Eliminados Correctamente</header>
        <% 
            DecimalFormat df = new DecimalFormat();
            ConnectionMongoDB connectionmongodb = new ConnectionMongoDB();
            ConnectionMongoDB mongoDBMetodos = new ConnectionMongoDB();
            mongoDBMetodos.ConnectionMongo();
            Document document = new Document();                     
   
            String nombre;
            String marca;
            int cantidad;
            double precio;  
            double total;
            double ganancia;
            
            
            nombre = request.getParameter("ProductoNombre");
            marca = request.getParameter("ProductoMarca");
            cantidad = Integer.parseInt(request.getParameter("ProductoCantidad")) ;
            precio = Double.parseDouble(request.getParameter("ProductoPrecio"));
            total = (Math.round(cantidad*precio*100d)/100);
            ganancia = (Math.round((total*0.12) * 100d )/100 );         
            
                      
            Productos productos = new Productos (nombre,marca, cantidad ,precio,total,ganancia);
                    
            document.remove("nombre", productos.getNombre());
            document.remove("marca", productos.getMarca());
            document.remove("cantidad", productos.getCantidad());
            document.remove("precio", productos.getPrecio());
            document.remove("total", productos.getTotal());
            document.remove("ganancia", productos.getGanancia());
            
            connectionmongodb.save(document,"Products", connectionmongodb.database);
        %>
    </body>
</html>

