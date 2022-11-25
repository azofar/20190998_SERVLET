<%@ page contentType = "text/html;charset=utf-8" %>

<nav class ="navbar navbar-expand navbar-white bg-white">
    <div class ="dropdown">
        <button class ="btn btn-secondary dropdown-toggle" type ="button" id ="dropdownMenuButton" data-toggle ="dropdown" aria-haspopup ="true" aria-expanded ="false">
            카테고리
        </button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="#">Perpume</a>
            <a class="dropdown-item" href="#">Eau De Perpume</a>
            <a class="dropdown-item" href="#">Eau De Toillete</a>
            <a class="dropdown-item" href="#">Eau De Cologne</a>
            <a class="dropdown-item" href="#">Eau Fraiche</a>
        </div>
    </div>
    
    <div>
        <img src="img\francistomcat.gif" class="img-fluid" alt="Francis TomCat">
    </div>
    
    <div class ="container">
        <div class ="navbar-header">
            <a class="navbar-brand" href="index.jsp">상품목록(기본 홈)</a>
            <a class="navbar-brand" href="./index.jsp">로그인</a>
            <a class="navbar-brand" href="./index.jsp">회원가입</a>
            <a class="navbar-brand" href="/BoardListAction.do?pageNum=1">게시판(고객센터)</a>
            <a class="navbar-brand" href="admin/index_ad.jsp">관리자모드</a>
        </div>
    </div>
</nav>