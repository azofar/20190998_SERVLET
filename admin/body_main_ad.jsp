<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import= "java.util.Date"%> 
    
<%! String greeting="Welcome Francis TomCat"; 
    String tagline="하단페이지 : 확인";%>
<div class="container">
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-5">
                <%=greeting%>
			</h1>
		</div>
	</div>
<%
    ProductRepository dao = ProductRepository.getInstance();
	ArrayList<Product> listOfProducts = dao.getAllProducts();
%>
    <div class="container">
        <div class="row" align="center">
        <%
            for(int i = 0; i<listOfProducts.size(); i++) {
                Product product = listOfProducts.get(i);
                %>
            <div class="col-md-4">
                <div class="card bg-dark text-white">
                    <img src="../img/product/<%=product.getFilename()%>" class="card-img" alt="...">
                    <div class="card-img-overlay">
                        <h5 class="card-title">향수 이미지 샘플</h5>
                        <p class="card-text">출처 : 구글 검색</p>
                    </div>
                </div>
                <h3>
                    <%=product.getPname()%>
                </h3>
                <p>
                    <%=product.getDescription()%>
                </p>
                <p>
                    <%=product.getUnitPrice()%>$
                </p>
                <p>
                    <a href="product_detail_ad.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo; </a>
                </p>
            </div>
        <%
            }
        %>
        </div>
        <hr>
    </div>
</div>
