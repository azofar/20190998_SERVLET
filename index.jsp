<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="java.util.Date"%>

<%@ page import="example.*" %> 
<%
    HelloWorld h = new HelloWorld();
%>
<html>
    <head>
            <link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <title> 반갑습니다. 개인 쇼핑몰 사이트입니다. </title>
    </head>
<body> <%-- JSP 주석처리 --%>
  	<%@ include file="top_menu.jsp" %>
	<%@ include file="body_main.jsp" %>	
    <%@ include file="footer.jsp" %>
</body>
</html>