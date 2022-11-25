<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.sql.*"%>
    
<%! String greeting="Welcome Francis TomCat"; 
    String tagline="하단페이지 : 확인";%>
<div class="container">
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">
                <%=greeting%>
			</h1>
		</div>
	</div>
    
    <div class="container">
        <div class="row" align="center">

    <%@ include file="db/db_conn.jsp"%>
            
	<%
		String sql = "select * from product"; 
		pstmt = conn.prepareStatement(sql); 
		rs = pstmt.executeQuery(); 
		while (rs.next()) { 
	%>
            <div class="col-md-4">
                <div class="card bg-dark text-white">
                    <img src="img/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">
                    <div class="card-img-overlay">
                        <h5 class="card-title">향수 이미지 샘플</h5>
                        <p class="card-text">출처 : 구글 검색</p>
                    </div>
                </div>
                <h3><%=rs.getString("p_name")%></h3>
		        <p><%=rs.getString("p_description")%>
		        <p><%=rs.getString("p_UnitPrice")%>$
		        <p><a href="product_detail.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
            </div>
    <%
			}
		if (rs != null)
			rs.close();
 		if (pstmt != null)
 			pstmt.close();
 		if (conn != null)
			conn.close();
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