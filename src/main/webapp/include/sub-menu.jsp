<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="nav">
    <div class="ic-home">
        <a href="<c:url value="/index"/>"><img class="icon-home" src="<c:url value="/resources/image/icon-home.jpg"/>"></a>
    </div>
    <ul class="menu">
        <li><img src="<c:url value="/resources/image/soctrai.png"/>">&nbsp;&nbsp;&nbsp;&nbsp;<a href="<c:url value="/filter/macbook"/>">Macbook</a></li>
        <li><img src="<c:url value="/resources/image/soctrai.png"/>">&nbsp;&nbsp;&nbsp;&nbsp;<a href="<c:url value="/filter/hp"/>">HP</a></li>
        <li><img src="<c:url value="/resources/image/soctrai.png"/>">&nbsp;&nbsp;&nbsp;&nbsp;<a href="<c:url value="/filter/dell"/>">DELL</a></li>
        <li><img src="<c:url value="/resources/image/soctrai.png"/>">&nbsp;&nbsp;&nbsp;&nbsp;<a href="<c:url value="/filter/asus"/>">ASUS</a></li>
        <li><img src="<c:url value="/resources/image/soctrai.png"/>">&nbsp;&nbsp;&nbsp;&nbsp;<a href="<c:url value="/filter/lenovo"/>">Lenovo</a></li>
        <li><img src="<c:url value="/resources/image/soctrai.png"/>">&nbsp;&nbsp;&nbsp;&nbsp;<a href="<c:url value="/filter/acer"/>">Acer</a></li>
    </ul>
    <div class="row">
        <a href="<c:url value="/cart"/>"><img class="icon-cart" src="<c:url value="/resources/image/icon-cart.jpg"/>"></a>
    </div>
</div>
    <div class="col-xs-12 col-sm-12" style="text-align: right; padding-bottom:20px;">
        <form action="${pageContext.request.contextPath}/search" method="post"
              class="form-inline">
            <div class="form-group">
                <input name="searchText" class="form-control"
                       type="text"/>
                <input type="submit" class="btn btn-info"
                       value="search"/>
            </div>
        </form>
    </div>