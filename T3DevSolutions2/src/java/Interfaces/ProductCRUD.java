
package Interfaces;

import Model.Productos;
import java.util.List;


public interface ProductCRUD {
    public List listProductos();
    public Productos listProduct(int id);
    public boolean addProduct(Productos products);
    public boolean updateProduct(Productos products);
    public boolean deleteProduct(int id);
    
   
}
