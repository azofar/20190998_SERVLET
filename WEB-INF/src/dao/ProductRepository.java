package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {
    
    private ArrayList<Product> listOfProducts = new ArrayList<Product>();
    private static ProductRepository instance = new ProductRepository();
    
    public static ProductRepository getInstance(){
        return instance;
    }
    
    public ProductRepository() {
        Product perfume1 = new Product("P1234", "Light Blue", 59);
        perfume1.setDescription("Refreshing bergamot, Aromatic rosemary, American musk wood");
        perfume1.setCategory("perfume1");
        perfume1.setManufacturer("Dolce & Gabbana");
        perfume1.setUnitsInStock(1000);
        perfume1.setCondition("New");
        perfume1.setFilename("P1234.jpg");
        
        Product perfume2 = new Product("P1235", "Sauvage", 89);
        perfume2.setDescription("Reggio Calabria bergamot, Ambergris, Marine wood");
        perfume2.setCategory("perfume2");
        perfume2.setManufacturer("Dior");
        perfume2.setUnitsInStock(1000);
        perfume2.setCondition("Refurbished");
        perfume2.setFilename("P1235.jpg");
        
        Product perfume3 = new Product("P1236", "Citrus Verbena", 49);
        perfume3.setDescription("Grapefruit Extract, Citrus Verbena, Cedar wood");
        perfume3.setCategory("perfume3");
        perfume3.setManufacturer("Loccitane");
        perfume3.setUnitsInStock(1000);
        perfume3.setCondition("Old");
        perfume3.setFilename("P1236.jpg");
        
        Product perfume4 = new Product("P1237", "Bloom", 119);
        perfume4.setDescription("Orange Green, Honey Circle, Vanilla");
        perfume4.setCategory("perfume4");
        perfume4.setManufacturer("Gucci");
        perfume4.setUnitsInStock(1000);
        perfume4.setCondition("New");
        perfume4.setFilename("P1237.jpg");
        
        Product perfume5 = new Product("P1238", "Rain", 39);
        perfume5.setDescription("Rain, Hibiscus, Comquart");
        perfume5.setCategory("perfume5");
        perfume5.setManufacturer("Marc Jacobs");
        perfume5.setUnitsInStock(1000);
        perfume5.setCondition("Old");
        perfume5.setFilename("P1238.jpg");
        
        Product perfume6 = new Product("P1239", "Something", 29);
        perfume6.setDescription("Violet, Carnation, Sandal Wood");
        perfume6.setCategory("perfume6");
        perfume6.setManufacturer("Demeter");
        perfume6.setUnitsInStock(1000);
        perfume6.setCondition("Old");
        perfume6.setFilename("P1239.jpg");
        
        Product perfume7 = new Product("P1240", "Dirty", 109);
        perfume7.setDescription("Spearmint, Lavender Oil, Ochmose Extract");
        perfume7.setCategory("perfume7");
        perfume7.setManufacturer("Lush");
        perfume7.setUnitsInStock(1000);
        perfume7.setCondition("New");
        perfume7.setFilename("P1240.jpg");
        
        Product perfume8 = new Product("P1241", "Artisan", 49);
        perfume8.setDescription("Mayo Lana, Trio Ginger, Kepalis Accord");
        perfume8.setCategory("perfume8");
        perfume8.setManufacturer("John Varvatos");
        perfume8.setUnitsInStock(1000);
        perfume8.setCondition("New");
        perfume8.setFilename("P1241.jpg");
        
        Product perfume9 = new Product("P1242", "Avengers", 69);
        perfume9.setDescription("Pink Pepper, Pineapple, Orchmores");
        perfume9.setCategory("perfume9");
        perfume9.setManufacturer("Creed");
        perfume9.setUnitsInStock(1000);
        perfume9.setCondition("Old");
        perfume9.setFilename("P1242.jpg");

        listOfProducts.add(perfume1);
        listOfProducts.add(perfume2);
        listOfProducts.add(perfume3);
        listOfProducts.add(perfume4);
        listOfProducts.add(perfume5);
        listOfProducts.add(perfume6);
        listOfProducts.add(perfume7);
        listOfProducts.add(perfume8);
        listOfProducts.add(perfume9);
    }
    public ArrayList<Product> getAllProducts() {
        return listOfProducts;
    }
    public Product getProductById(String productId) {
        Product productById = null;
        
        for(int i = 0; i< listOfProducts.size(); i++) {
            Product product = listOfProducts.get(i);
            if(product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
                productById = product;
                break;
            }
        }
        return productById;
    }
    public void addProduct(Product product) {
        listOfProducts.add(product);
    }
}