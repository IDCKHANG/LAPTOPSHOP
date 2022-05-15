<%-- 
    Document   : cart
    Created on : Jul 14, 2019, 9:29:42 PM
    Author     : KHANG
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Laptop</title>
        <jsp:include page="../include/header-css.jsp"/>
    </head>
    <body>
        <jsp:include page="../include/menu.jsp"/>
        <div class="container">
            <jsp:include page="../include/sub-menu.jsp"/>
            <div class="row">
                <div class="col-sm-12" style="margin-bottom: 20px">
                    <h2 style="text-align: center">Giỏ hàng</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <h3>Order Date: <fmt:formatDate pattern = "dd-MM-yyyy" 
                                    value = "${order.orderDate}" /></h3>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <table class="table table-bordered">
                        <tr>
                            <th>Hình Ảnh</th>
                            <th>Tên sản phẩm</th>
                            <th>Giá</th>
                            <th>Số lượng</th>
                            <th>Action</th>
                        </tr>
                        <c:forEach items="${order.getOrderdetails()}" var="c">
                            <tr>
                                <td>
                                    <img class="img-cart" src="<c:url value="/resources/image/${c.product.images[0].name}"/>">
                                </td>
                                <td>
                                    ${c.product.productName}
                                </td>
                                <td><fmt:formatNumber pattern="###,###" value="${c.product.price}"/>VND</td>
                                <td>
                                    <form action="${pageContext.request.contextPath}/quantity/${c.product.id}"
                                          method="post"  class="form-inline">

                                        <div class="form-group">
                                            <input name="quantity" required type="number" min="1" max="${c.product.quantityInStore}" class="form-control"
                                                   value="${c.quantity}">
                                        </div>
                                        
                                        <button class="btn btn-primary" type="submit">Update</button>
                                        <div>
                                            <h6>Số lượng tồn kho:${c.product.quantityInStore}</h6>
                                        </div>
                                    </form>
                                </td>
                                <td>
                                    <button class="btn btn-warning" onclick="location.href = '<c:url value="/remove/${c.product.id}"/>'"/>Remove</button>
                                </td>

                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12" style="text-align: right">
                    <h3>Total Price:<fmt:formatNumber pattern="###,###" value="${order.totalPrice}"/> VNĐ
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12" style="text-align: center" >

                    <button type="submit" class="btn btn-success" 
                            onclick="location.href = '<c:url value="/check-out"/>'">Mua Hàng</button>

                </div>
            </div>
        </div>
        <div style="margin-top: 140px">
            <jsp:include page="../include/footer.jsp"/>
        </div>
    </body>
</html>
