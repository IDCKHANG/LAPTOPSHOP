<%-- 
    Document   : personalInf
    Created on : Jul 30, 2019, 4:03:52 PM
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
        <style>
            .ui-required{
                color: red;
            }
        </style>
    </head>
    <body>
        <jsp:include page="../include/menu.jsp"/>
        <div class="container">
            <jsp:include page="../include/sub-menu.jsp"/>
            <div class="row">
                <div class="col-xs-12 col-sm-12" style="text-align: center">
                    <h2>Thông tin liên lạc</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-12">
                    <form action="${pageContext.request.contextPath}/pay" 
                          method="post" modelAttribute="shipping" class="form-horizontal">

                        <div class="form-group">
                            <label class="control-label col-sm-2"> Họ tên: 
                                <span class="ui-required">(*)</span></label>
                            <div class="col-sm-8">
                                <input name="customerName" required type="text" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2">Email: 
                                <span class="ui-required">(*)</span></label>
                            <div class="col-sm-8">
                                <input name="email" required type="email" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2"> 
                                BirthDate </label>
                            <div class="col-sm-8">
                                <input name="birthDate"  class="form-control" type="date"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2"> Địa chỉ: 
                                <span class="ui-required">(*)</span></label>
                            <div class="col-sm-8">
                                <input name="address" required type="text" class="form-control" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2">CMND: 
                                <span class="ui-required">(*)</span></label>
                            <div class="col-sm-8">
                                <input name="idCard" required type="text" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group" style="text-align: center">
                            <button class="btn btn-success" type="submit">Xác Nhận</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div style="margin-top: 190px">
            <jsp:include page="../include/footer.jsp"/>
        </div>
    </body>
</html>
