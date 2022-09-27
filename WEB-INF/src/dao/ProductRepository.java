package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {
    
    private ArrayList<Product> listOfProducts = new ArrayList<Product>();
    
    public ProductRepository() {
        Product perfume1 = new Product("P1234", "Light Blue", 59);
        perfume1.setDescription("Refreshing bergamot, Aromatic rosemary, American musk wood");
        perfume1.setCategory("perfume1");
        perfume1.setManufacturer("Dolce & Gabbana");
        perfume1.setUnitsInStock(1000);
        perfume1.setCondition("New");
        
        Product perfume2 = new Product("P1235", "Sauvage", 89);
        perfume2.setDescription("Reggio Calabria bergamot, Ambergris, Marine wood");
        perfume2.setCategory("perfume2");
        perfume2.setManufacturer("Dior");
        perfume2.setUnitsInStock(1000);
        perfume2.setCondition("Refurbished");
        
        Product perfume3 = new Product("P1236", "Citrus Verbena", 49);
        perfume3.setDescription("Grapefruit, Verbena, Cedarwood");
        perfume3.setCategory("perfume3");
        perfume3.setManufacturer("Loccitane");
        perfume3.setUnitsInStock(1000);
        perfume3.setCondition("Old");
        
        listOfProducts.add(perfume1);
        listOfProducts.add(perfume2);
        listOfProducts.add(perfume3);
    }
    public ArrayList<Product> getAllProducts() {
        return listOfProducts;
    }
}