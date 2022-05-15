<%-- 
    Document   : book-form
    Created on : May 22, 2019, 7:41:28 PM
    Author     : AnhLe
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Form</title>
        <link href="<c:url value="/webjars/bootstrap/3.4.1/css/bootstrap.min.css"/>" 
              type="text/css" rel="stylesheet" />
        <style>
            .ui-required{
                color: red;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12" style="text-align: center">
                    <h2>Product Form</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-12">
                    <form action="${pageContext.request.contextPath}/${action}"  enctype="multipart/form-data" 
                          method="post" modelAttribute="product" class="form-horizontal">
                        <c:if test="${action=='update-product'}">
                            <input name="id" value="${product.id}" hidden>
                        </c:if>
                        <div class="form-group">
                            <label class="control-label col-sm-2">Ảnh sản phẩm: 
                                <span class="ui-required">(*)</span></label>
                            <div class="col-sm-8">
                                <div class="img-center">
                                    <img class="img-prd" src="<c:url value="/resources/image/${product.images[0].name}"/>">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2">Tên sản phẩm: 
                                <span class="ui-required">(*)</span></label>
                            <div class="col-sm-8">
                                <input name="productName" required type="text" class="form-control"
                                       value="${product.productName}"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2"> 
                                Giá <span class="ui-required">(*)</span></label>
                            <div class="col-sm-8">
                                <input name="price"  type="text"
                                       class="form-control"
                                       value="${product.price}" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2"> 
                                Số lượng <span class="ui-required">(*)</span></label>
                            <div class="col-sm-8">
                                <input name="quantityInStore" 
                                       class="form-control"
                                       value="${product.quantityInStore}"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Category
                                <span class="ui-required">(*)</span></label>
                            <div class="col-sm-8">
                                <select class="form-control" name="category.id" >
                                    <c:forEach items="${categories}" var="c">
                                        <c:if test="${c.id==product.category.id}">
                                            <option value="${c.id}" selected>${c.name}</option>
                                        </c:if>
                                        <c:if test="${c.id!=productName.category.id}">
                                            <option value="${c.id}">${c.name}</option>
                                        </c:if>    
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                            <div class="form-group">
                            <label class="control-label col-sm-2">Màng hình: 
                                <span class="ui-required">(*)</span></label>
                            <div class="col-sm-8">
                                <input name="screensize" required type="text" class="form-control"
                                       value="${product.screensize}"/>
                            </div>
                        </div>
                            <div class="form-group">
                            <label class="control-label col-sm-2">CPU: 
                                <span class="ui-required">(*)</span></label>
                            <div class="col-sm-8">
                                <input name="cputype" required type="text" class="form-control"
                                       value="${product.cputype}"/>
                            </div>
                        </div>
                            <div class="form-group">
                            <label class="control-label col-sm-2">RAM: 
                                <span class="ui-required">(*)</span></label>
                            <div class="col-sm-8">
                                <input name="ram" required type="text" class="form-control"
                                       value="${product.ram}"/>
                            </div>
                        </div>
                            <div class="form-group">
                            <label class="control-label col-sm-2">PIN: 
                                <span class="ui-required">(*)</span></label>
                            <div class="col-sm-8">
                                <input name="pintype" required type="text" class="form-control"
                                       value="${product.pintype}"/>
                            </div>
                        </div>
                            <div class="form-group">
                            <label class="control-label col-sm-2">Card đồ họa: 
                                <span class="ui-required">(*)</span></label>
                            <div class="col-sm-8">
                                <input name="graphicsCard" required type="text" class="form-control"
                                       value="${product.graphicsCard}"/>
                            </div>
                        </div>
                            <div class="form-group">
                            <label class="control-label col-sm-2">Hệ điều hành: 
                                <span class="ui-required">(*)</span></label>
                            <div class="col-sm-8">
                                <input name="operatingSystem" required type="text" class="form-control"
                                       value="${product.operatingSystem}"/>
                            </div>
                        </div>
                            <div class="form-group">
                            <label class="control-label col-sm-2">Ổ cứng: 
                                <span class="ui-required">(*)</span></label>
                            <div class="col-sm-8">
                                <input name="hardDrive" required type="text" class="form-control"
                                       value="${product.hardDrive}"/>
                            </div>
                        </div>
                            <div class="form-group">
                            <label class="control-label col-sm-2">Nặng: 
                                <span class="ui-required">(*)</span></label>
                            <div class="col-sm-8">
                                <input name="weight" required type="text" class="form-control"
                                       value="${product.weight}"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2"> 
                                Mô tả: </label>
                            <div class="col-sm-8">
                                <textarea name="description" class="form-control"/>
                                ${product.description}
                                </textarea>
                            </div>
                        </div>
                        File ảnh upload1: <input type="file" name="file"><br /> 
                        File ảnh upload2: <input type="file" name="file"><br /> 
                        <div class="form-group" style="text-align: center">
                            <c:if test="${action=='update-product'}">
                                <button class="btn btn-primary" type="submit">
                                    Update</button>
                                </c:if>
                                <c:if test="${action=='add-product'}">
                                <button class="btn btn-success" type="submit">
                                    Add</button>
                                </c:if>

                        </div>
                    </form>             
                </div>
            </div>
        </div>
    </body>
</html>
