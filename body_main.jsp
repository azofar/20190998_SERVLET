<%@ page contentType = "text/html;charset=utf-8" %>
    
<%! String greeting = "굿팡.com에 오신 것을 환영합니다."; //string 타입으로 변수 선언문으로 초기화 하고 표현문으로
    String tagline = "하단페이지 : 확인";%>
<div class="jumbotron">
	<div class="container">
		<h1 class="display-3">
			<%=greeting%>
		</h1>
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