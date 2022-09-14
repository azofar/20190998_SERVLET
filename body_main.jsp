<%@ page contentType = "text/html;charset=utf-8" %>
    
<%! String greeting = "꾸팡.com에 오신 것을 환영합니다."; //string 타입으로 변수 선언문으로 초기화 하고 표현문으로
      String tagline = "하단페이지 : 확인";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>	
	<div class="container">
		<div class="text-center">
			<h3>
				<%=tagline%>
			</h3>
		</div>
		<hr>
	</div>	