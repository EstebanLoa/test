

<%@page import="Model.Productos"%>
<%@page import="org.bson.Document"%>
<%@page import="ConnectionMongoDB.ConnectionMongoDB"%>
<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
              crossorigin="anonymous">  
        <link href="../CSS/estilos.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Refresh" content="3;URL=../index.jsp">

        <div id="title" align="text-center">Productos Agregados</div>
    </head>
    <body>
        <header>Productos Agregados Correctamente</header>
         
         
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
                    
            document.put("nombre", productos.getNombre());
            document.put("marca", productos.getMarca());
            document.put("cantidad", productos.getCantidad());
            document.put("precio", productos.getPrecio());
            document.put("total", productos.getTotal());
            document.put("ganancia", productos.getGanancia());
            
            connectionmongodb.save(document,"Products", connectionmongodb.database);
        %>
    </body>
</html>