
package ModelDAO;

import ConnectionMongoDB.ConnectionMongoDB;
import Interfaces.ProductCRUD;
import Model.Productos;
import Model.Usuarios;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import org.bson.Document;


public class ModelosDAO implements ProductCRUD {

    public ArrayList <Productos> getProductos() throws ParseException, IOException {
       
       ConnectionMongoDB connectionmongodb = new ConnectionMongoDB();
       ArrayList<Productos> products = new ArrayList<>();
       MongoDatabase database = connectionmongodb.connection();
       MongoCollection collection = database.getCollection("Products");
        try (MongoCursor<Document> cursor = collection.find().iterator()) {
            
            while (cursor.hasNext()) {
                JsonObject jsonObject = new JsonParser().parse(cursor.next().toJson()).getAsJsonObject();
                Productos producUnit = new Productos();
                producUnit.setNombre(jsonObject.get("nombre").getAsString());
                producUnit.setMarca(jsonObject.get("marca").getAsString());
                producUnit.setCantidad(jsonObject.get("cantidad").getAsInt());
                producUnit.setPrecio(jsonObject.get("precio").getAsDouble());
                producUnit.setTotal(jsonObject.get("total").getAsDouble());
                producUnit.setGanancia(jsonObject.get("ganancia").getAsDouble());
                products.add(producUnit);
          }
           
       }
        return products;   
           
}
    
     public ArrayList <Usuarios> getUsuarios() throws ParseException, IOException {
       
       ConnectionMongoDB connectionmongodb = new ConnectionMongoDB();
       ArrayList<Usuarios> usuarios = new ArrayList<>();
       MongoDatabase database = connectionmongodb.connection();
       MongoCollection collection = database.getCollection("RegistroUsuarios");
       MongoCursor<Document> cursor = collection.find().iterator();     
        try {
            
            while (cursor.hasNext()) {
                JsonObject jsonObject = new JsonParser().parse(cursor.next().toJson()).getAsJsonObject();
                Usuarios users = new Usuarios();
                users.setId(jsonObject.get("id").getAsInt());
                users.setNombre(jsonObject.get("nombre").getAsString());
                users.setApellido(jsonObject.get("apellido").getAsString());
                users.setDireccion(jsonObject.get("direccion").getAsString());
                users.setCedula(jsonObject.get("cedula").getAsString());             
                usuarios.add(users);
          }
           
       } finally {
           cursor.close();
       }
        return usuarios;   
           
}
     
    
    public Productos listProduct(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public boolean addProduct(Productos productos) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    @Override
    public boolean updateProduct(Productos productos) {
      
        return false;   
    }

  
    @Override
    public boolean deleteProduct(int id) {
        return false;
        
    }
    
        public float calculoGanancias(float cantidad, float precio) {
        float total;
        total = (cantidad*precio);
        return total;
    }

    public List listProducts() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List listProductos() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}


