package dto;
import java.io.Serializable; //객체직렬화

public class Product implements Serializable{ //자바에서 인터페이스 구현
    
    private static final long serialVersionUID = -4274700572038677000L;
        
    private String productId; //상품 아이디
    private String pname; //상품명
    private Integer unitPrice; //상품가격
    private String description; //상품설명
    private String manufacturer; //제조사
    private String category; //분류
    private long unitsInStock; //재고
    private String condition; //상태
    
    
    public Product() {
        super(); //부모 생성자 호출
    }
    public Product(String productId, String pname, Integer unitPrice) {
        this.productId = productId;
        this.pname = pname;
        this.unitPrice = unitPrice;
    }
    public String getProductId() {
        return productId;
    }
    public String getPname() {
        return pname;
    }
    public void setPname(String pname) {
        this.pname = pname;
    }
    public void setProductId(String productId) {
        this.productId = productId;
    }
    public Integer getUnitPrice() {
        return unitPrice;
    }
    public void setUnitPrice(Integer unitPrice) {
        this.unitPrice = unitPrice;
    }
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public String getManufacturer() {
        return manufacturer;
    }
    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }
    public String getCategory() {
        return category;
    }
    public void setCategory(String category) {
        this.category = category;
    }
    public long getUnitsInStock() {
        return unitsInStock;
    }
    public void setUnitsInStock(long unitsInStock) {
        this.unitsInStock = unitsInStock;
    }
    public String getCondition() {
        return condition;
    }
    public void setCondition(String condition) {
        this.condition = condition;
    }
}