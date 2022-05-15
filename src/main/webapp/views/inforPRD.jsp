<%-- 
Document   : inforPRD
Created on : Jul 5, 2019, 6:37:02 PM
Author     : KHANG
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
                    <h2 style="text-align: center">Chi tiết sản phẩm</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-7">
                    <div class="width-imgage-laptop">
                        <c:if test="${infproduct!=null && infproduct.id > 0}">
                            <c:forEach items="${infproduct.images}" var="image">
                                <li style="    list-style-type: none;
                                    "><img class="img-prd" width="300" height="300" src="<c:url value="/resources/image/${image.name}"/>"></li>
                                </c:forEach>
                            </c:if>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="bot-free">
                        <h3 class="inf-price" style="color: #0055A8">${infproduct.productName}</h3>
                        <h3 class="inf-price">Giá: <fmt:formatNumber pattern="###,###" 
                                          value="${infproduct.price}"/> VNĐ</h3>
                        <h3 class="inf-formatleft">Khuyến Mãi</h3>
                        <div class="inf-formatflex">
                            <a href="#"><img class="free" src="<c:url value="/resources/image/tainghe.jpg"/>"></a>
                            <h4>Tai nghe chụp tai Kanen IP-2050</h4>
                        </div>
                        <div class="inf-formatflex">
                            <a href="#"><img class="free" src="<c:url value="/resources/image/chuot.jpg"/>"></a>
                            <h4>Chuột không dây</h4>
                        </div>
                        <div class="inf-formatflex">
                            <a href="#"><img class="free" src="<c:url value="/resources/image/balo.jpg"/>"></a>
                            <h4>Balo Laptop HP-Compaq</h4>
                        </div>
                        <h4 class="inf-random">Cơ hội trúng 60 xe máy vision trị giá đến 1.8 tỷ (áp dụng từ 01/04 đến 30/6)</h4>
                        <h4 class="inf-random">* Không áp dụng khi mua trả góp 0%</h4>
                    </div>
                    <div class="bt-muangay">
                        <form action="${pageContext.request.contextPath}/order" method="post">
                            <input name="id" value="${infproduct.id}" hidden />
                            <button type="submit" class="btn btn-info">Mua Ngay</button>
                        </form>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-5" style="padding: 50px 0 0 50px">
                        <div class="navbar-right bot-free">
                            <div class="box-inf1">
                                <a href="#">Kiểm tra có hàng tại nơi bạn ở không? </a>
                                <li><a href="#">Dây nguồn,Adapter sạc,Thùng máy,Sách hướng dẫn </a><br> </li>
                                <li>  <a href="#"> Bảo hành chính hãng 12 tháng. </a><br></li>
                                <li><a href="#"> 1 đổi 1 trong 1 tháng nếu lỗi. </a></li>   
                            </div>
                            <div class="box-inf1">
                                <li> <a href="#"> Xem HP 15 da0048TU N5000/4GB/500GB/Win10/(4ME63PA) cũ </a><br></li>
                                <p  class="inf-price" >Giá dưới:15.000.000₫</p><br>

                            </div>
                        </div>               
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col-sm-12" style="text-align: center">
                    <h2>Thông tin kỹ thuật</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped">
                            <tr>
                                <td class="inf-lable">CPU:</td>
                                <td>${infproduct.cputype}</td>
                            </tr>
                            <tr>
                                <td  class="inf-lable">RAM:</td>
                                <td>${infproduct.ram}</td>
                            </tr>
                            <tr>
                                <td  class="inf-lable">Ổ Cứng:</td>
                                <td>${infproduct.hardDrive}</td>
                            </tr>
                            <tr>
                                <td  class="inf-lable">Màn hình:</td>
                                <td>${infproduct.screensize}</td>
                            </tr>
                            <tr>
                                <td  class="inf-lable">Card màng hình:</td>
                                <td>${infproduct.graphicsCard}</td>
                            </tr>
                            <tr>
                                <td  class="inf-lable">Cổng kết nối:</td>
                                <td>${infproduct.opticaldrive}</td>
                            </tr>
                            <tr>
                                <td  class="inf-lable">Hệ điều hành:</td>
                                <td>${infproduct.operatingSystem}</td>
                            </tr>
                            <tr>
                                <td  class="inf-lable">Thiết kế:</td>
                                <td>${infproduct.touchScreen}</td>
                            </tr>
                            <tr>
                                <td  class="inf-lable">Kích thước:</td>
                                <td>${infproduct.size}</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>


            <div class="col-sm-12">
                <div class="col-sm-12">
                    <sec:authorize access="isAuthenticated()">
                        <div class="well col-sm-8">            
                            <h4>Viết Bình Luận...<span class="glyphicon glyphicon-pencil"></span></h4>
                            <form action="<c:url value="/add-comment"/>"  method="POST">
                                <div class="form-group">
                                    <textarea class="form-control" name="content" rows="3"></textarea>
                                </div>
                                <input type="hidden" name="productId" value="${infproduct.id}"/>
                                <input type="hidden" name="accountId" value="<sec:authentication property="principal.id"/>"/>
                                <button type="submit" class="btn btn-primary">Gửi</button>
                            </form>
                        </div>
                    </sec:authorize>    
                </div>
                
                <div class="col-sm-12">
                    <c:if test="${cmts!=null && fn:length(cmts)>0}">

                        <c:forEach items="${cmts}" var="cmt">
                            <div class="form-group">
                                <div class="col-sm-10" style="margin-bottom: 20px">
                                    <label class="control-label col-sm-4">
                                        <span style="background-color: #ebd6ff;font-size: 29px">${cmt.account.fullName.charAt(0)}</span>
                                        <span>${cmt.account.fullName}</span>
                                        <span style="font-size: 10px;font: medium">${cmt.dateComment}</span></label>
                                    <textarea disabled class="form-control" name="content">${cmt.content}</textarea>
                                </div>
                            </div>
                        </c:forEach>
                    </c:if>
                </div>
            </div>
        </div>

        <jsp:include page="../include/footer.jsp"/>
    </body>
</html>
