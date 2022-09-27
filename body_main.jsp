<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
    
<%! String greeting="Welcome Francis TomCat"; //string 타입으로 변수 선언문으로 초기화 하고 표현문으로
    String tagline="하단페이지 : 확인";%>
<div class="container">
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">
                <%=greeting%>
			</h1>
		</div>
	</div>
<%
	ArrayList<Product> listOfProducts = productDAO.getAllProducts();
%>
    <div class="container">
        <div class="row" align="center">
        <%
            for(int i = 0; i<listOfProducts.size(); i++) {
                Product product = listOfProducts.get(i);
                %>
            <div class="col-md-4">
                <div class="card bg-dark text-white">
                    <img src="img/product/<%=product.getProductId()%>.jpg" class="card-img" alt="...">
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
            </div>
        <%
            }
        %>
        </div>
        <hr>
    </div>
</div>
<div class="card bg-dark text-dark">
    <img src="img/perfume3.png" class="card-img" alt="...">
    <div class="card-img-overlay">
        <h5 class="card-title">향수 종류</h5>
        <p class="card-text">출처 : Cruu De D'or</p>
    </div>
</div>

<div class="list-group">
    <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
        Burberry
    </a>
    <a href="#" class="list-group-item list-group-item-action">
        Maison Margiela
    </a>
    <a href="#" class="list-group-item list-group-item-action">
        Dolce & Gabbana
    </a>
    <a href="#" class="list-group-item list-group-item-action">
        Lanvin
    </a>
</div>