package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {
    
    private ArrayList<Product> listOfProducts = new ArrayList<Product>();
    
    public ProductRepository() {
        Product perfume1 = new Product("P1234", "Light Blue", 59);
        perfume1.setDescription("Refreshing bergamot,\n Aromatic rosemary, American musk wood");
        perfume1.setCategory("perfume1");
        perfume1.setManufacturer("Dolce & Gabbana");
        perfume1.setUnitsInStock(1000);
        perfume1.setCondition("New");
        
        Product notebook = new Product("P1235", "Sauvage", 89);
        notebook.setDescription("Reggio Calabria bergamot, Ambergris, Marine wood");
        notebook.setCategory("Notebook");
        notebook.setManufacturer("LG");
        notebook.setUnitsInStock(1000);
        notebook.setCondition("Refurbished");
        
        Product tablet = new Product("P1236", "Galaxy Tab S", 900);
        tablet.setDescription("8-inch, Super display, Octa-Core");
        tablet.setCategory("Tablet");
        tablet.setManufacturer("Samsung");
        tablet.setUnitsInStock(1000);
        tablet.setCondition("Old");
        
        listOfProducts.add(perfume1);
        listOfProducts.add(notebook);
        listOfProducts.add(tablet);
    }
    public ArrayList<Product> getAllProducts() {
        return listOfProducts;
    }
}