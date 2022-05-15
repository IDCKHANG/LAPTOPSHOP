
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="../include/header-css.jsp"/>
        <title>Laptop Shop</title>
    </head>
    <body>
        <jsp:include page="../include/menu.jsp"/>
        <div class="container">
            <jsp:include page="../include/sub-menu.jsp"/>
            <c:if test="${message!=null && message!=''}">
                <div class="row">
                    <div class="col-xs-12 col-sm-12">
                        <c:if test="${status == 'fail'}">
                            <div class="alert alert-danger">
                                ${message}
                            </div>
                        </c:if>
                        <c:if test="${status == 'ok'}">
                            <div class="alert alert-success">
                                ${message}
                            </div>
                        </c:if>
                    </div>
                </div>
            </c:if>
            <a href="<c:url value="/test"/>">test </a>
            <div class="row">
                <c:if test="${products!=null && fn:length(products)>0}">
                    <c:forEach items="${products}" var="p">
                        <div class="col-sm-4">
                            <div class="border-line">
                                <div class="height-prd">
                                    <c:if test="${p.images!=null}">
                                        <div class="img-center">
                                            <img class="img-prd" src="<c:url value="/resources/image/${p.images[0].name}"/>">
                                        </div>
                                    </c:if>
                                    <c:if test="${p.images==null || fn:length(p.images)<=0}">
                                        <div class="img-center">
                                            <img class="img-prd" src="<c:url value="/resources/image/home-6.jpg"/>">
                                        </div>
                                    </c:if>
                                    <div  class="infor">
                                        <a href="<c:url value="/product/${p.id}"/>">${p.productName}</a>
                                        <div class="price">
                                            <STRONG><fmt:formatNumber pattern="###,###" 
                                                              value="${p.price}"/> đ</STRONG>
                                        </div>
                                        <div class="phieutang">
                                            <img  class="img-phieutang" src="<c:url value="/resources/image/phieumua.jpg"/>">
                                            <p>Phiếu tặng mua hàng giá 500.000đ</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="height-infor">
                                    <span>Màn hình: ${p.screensize} inch</span><br>
                                    <span>CPU: ${p.cputype}</span><br>
                                    <span>RAM: ${p.ram}</span><br>
                                    <span>Đồ họa: ${p.graphicsCard}</span><br>
                                    <span>HĐH: ${p.operatingSystem}</span><br>
                                    <span>Nặng: ${p.weight},Pin ${p.pintype}</span><br>
                                </div>
                                <div class="button-mua">
                                    <form action="${pageContext.request.contextPath}/order" method="post">
                                        <input name="id" value="${p.id}" hidden />
                                        <button type="submit" class="btn btn-info">Mua Ngay</button>
                                    </form>
                                    <div id="block-NH2NA_VDfL" class="pdp-block" style="display: inline-block;">
                                        <div id="module_product_wishlist_1" class="pdp-block module">
                                            <div class="pdp-mod-wishlist"><span>
                                                    <span class="lazada wishlist-icon 
                                                          lazada-ic-MyWishlist lazada-icon undefined" 
                                                          data-spm-anchor-id=
                                                          "a2o4n.pdp.0.i0.1fbfe417J5LoU7">
                                                    </span></span></div></div></div>
                                </div>
                            </div>	
                        </div>
                    </c:forEach>
                </c:if>
            </div>
        </div>
    </body>
    <jsp:include page="include/footer.jsp"/>
</html>
