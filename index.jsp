<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="example.*" %> 
<%
    HelloWorld h = new HelloWorld();
%>
<html>
    <head>
            <link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <title> WELCOME </title>
    </head>
<body> <%-- JSP 주석처리 --%>
    <nav class ="navbar navbar-expand navbar-dark bg-dark">
    <div class ="container">
         <div class ="navbar-header">
             <a class ="navbar-brand" href ="./index.jsp"> HOME </a>
        </div>
        </div></nav>
    <%-- CLASS는 스타일 적용시에 사용 되는 이름, 중첩 가능 --%>
    메시지는 =  <%=h.hello() %> 입니다.
</body>	
</html>
