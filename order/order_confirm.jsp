<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.net.URLDecoder"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<%
	request.setCharacterEncoding("UTF-8");
	String cartId = session.getId();

	String shipping_cartId = "";
	String shipping_name = "";
	String shipping_shippingDate = "";
	String shipping_country = "";
	String shipping_zipCode = "";
	String shipping_addressName = "";

	Cookie[] cookies = request.getCookies();

	if(cookies != null) {
        for(int i = 0; i<cookies.length; i++) {
            Cookie thisCookie = cookies[i];
            String n = thisCookie.getName();
            if(n.equals("Shipping_cartId"))
                shipping_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
            if(n.equals("Shipping_name"))
                shipping_name = URLDecoder.decode((thisCookie.getValue()), "utf-8");
            if(n.equals("Shipping_shippingDate"))
                shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
            if(n.equals("Shipping_country"))
                shipping_country = URLDecoder.decode((thisCookie.getValue()), "utf-8");
            if(n.equals("Shipping_zipCode"))
                shipping_zipCode = URLDecoder.decode((thisCookie.getValue()), "utf-8");
            if(n.equals("Shipping_addressName"))
                shipping_addressName = URLDecoder.decode((thisCookie.getValue()), "utf-8");
        }
    }
%>

<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    	<title>?????? ??????</title>
    </head>
    
    <body>
        <jsp:include page="../top_menu.jsp" />
        <div class="jumbotron">
            <div class="container">
                <h1 class="display-3">
                    ?????? ??????
                </h1>
            </div>
        </div>
        
        <div class="container col-8 alert alert-info">
            <div class="text-center">
                <h1>
                    ?????????
                </h1>
            </div>
            <div class="row justify-content-between">
                <div class="col-4" align="left">
                    <strong>?????? ??????</strong> <br> ?????? : <% out.println(shipping_name); %> <br>
                    ???????????? : <% out.println(shipping_zipCode); %> <br>
                    ?????? : <%out.println(shipping_addressName);%>(<%out.println(shipping_country);%>)<br>
                </div>
                <div class="col-4" align="right">
                    <p>
                        <em>????????? :<% out.println(shipping_shippingDate);%></em>
                </div>
            </div>
            <div>
                <table class="table table-hover">
                    <tr>
                        <th class="text-center">??????</th>
                        <th class="text-center">#</th>
                        <th class="text-center">??????</th>
                        <th class="text-center">??????</th>
                    </tr>
                    <%
                    	int sum = 0;
                    	ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
                    	if(cartList == null)
                            cartList = new ArrayList<Product>();
                    	for(int i = 0; i< cartList.size(); i++) {
                            Product product = cartList.get(i);
                            int total = product.getUnitPrice() * product.getQuantity();
                            sum = sum + total;
                	%>
                    <tr>
                        <td class="text-center"><em><%=product.getPname()%> </em></td>
                        <td class="text-center"><%=product.getQuantity()%> </td>
                        <td class="text-center"><%=product.getUnitPrice()%>$</td>
                        <td class="text-center"><%=total%>$</td>
                    </tr>
                    <%
                        }
                    %>
                    <tr>
                        <td></td>
                        <td></td>
                        <td class="text-right">	<strong>??????: </strong></td>
                        <td class="text-center text-danger"><strong><%=sum%> $ </strong></td>
                    </tr>
                </table>
                
                	<a href="order_info.jsp?cartId=<%=shipping_cartId%>"class="btn btn-secondary" role="button"> ?????? </a>
                	<a href="order_end.jsp" class="btn btn-success" role="button"> ?????? ?????? </a>
                	<a href="order_cancelled.jsp" class="btn btn-secondary" role="button"> ?????? </a>
            </div>
        </div>
    </body>
</html>