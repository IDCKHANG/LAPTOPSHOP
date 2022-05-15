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
                    <h2>Member Form</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-12">
                    <form action="${pageContext.request.contextPath}/${action}"  enctype="multipart/form-data" 
                          method="post" modelAttribute="account" class="form-horizontal">
                        <c:if test="${action=='update-member'}">
                            <input name="id" value="${account.id}" hidden>
                        </c:if>
                        <div class="form-group">
                            <label class="control-label col-sm-2">Tên thành viên: 
                                <span class="ui-required">(*)</span></label>
                            <div class="col-sm-8">
                                <input name="fullName" required type="text" class="form-control"
                                       value="${account.fullName}"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2"> 
                                email <span class="ui-required">(*)</span></label>
                            <div class="col-sm-8">
                                <input name="email"  type="text"
                                       class="form-control"
                                       value="${account.email}" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2"> 
                                password <span class="ui-required">(*)</span></label>
                            <div class="col-sm-8">
                                <input name="password" 
                                       class="form-control"
                                       value="${account.password}"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2"> 
                                Địa chỉ: <span class="ui-required">(*)</span></label>
                            <div class="col-sm-8">
                                <input name="address" 
                                       class="form-control"
                                       value="${account.address}"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Chức vụ:
                                <span class="ui-required">(*)</span></label>
                            <div class="col-sm-8">

                                <c:forEach items="${account.accountRoles}" var="acc">
                                    <select class="form-control" name="roleID" >
                                        <c:forEach items="${roles}" var="r">
                                            <c:if test="${r.id==acc.id}">
                                                <option value="${r.id}" selected>${acc.role}</option>
                                            </c:if></c:forEach>
                                        <c:forEach items="${roles}" var="r">
                                            <c:if test="${r.id!=acc.id}">                                                
                                                <option value="${r.id}">${r.role}</option>
                                            </c:if>
                                        </c:forEach>
                                    </select>
                                </c:forEach>
                                
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Ngày sinh:
                                    <span class="ui-required">(*)</span></label>
                                <div class="col-sm-8">
                                    <input type="date"  name="birthDate" value="${account.birthDate}" required/>
                            </div>
                        </div>
                        <div class="form-group" style="text-align: center">
                            <c:if test="${action=='update-member'}">
                                <button class="btn btn-primary" type="submit">
                                    Update</button>
                                </c:if>
                                <c:if test="${action=='add-member'}">
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
