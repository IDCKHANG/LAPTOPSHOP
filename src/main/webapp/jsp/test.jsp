<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="<c:url value="/webjars/bootstrap/3.4.1/css/bootstrap.min.css"/>" 
      type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">

<html dir="ltr">
    <jsp:include page="../include/head-css-admin.jsp"/>
    <body>
        <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full" data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
            <jsp:include page="../include/header-admin.jsp"/>

            <div class="page-wrapper">
                <div class="page-breadcrumb">
                    <div class="row align-items-center">
                        <div class="col-5">
                            <h4 class="page-title">Dashboard</h4>
                            <div class="d-flex align-items-center">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Library</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                        <div class="col-7">
                            <div class="text-right upgrade-btn">
                                <a href="https://wrappixel.com/templates/xtremeadmin/" class="btn btn-danger text-white" target="_blank">Upgrade to Pro</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="container-fluid">
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
                    <div class="row">
                        <div class="col-xs-6 col-sm-6" 
                             style="padding-bottom: 10px;">
                            <button style="font-size: 15px" class="btn btn-primary" 
                                    onclick="location.href = '<c:url value="/addprd"/>'">Thêm sản phẩm</button>
                        </div>
                    </div>
                    <div class="row">
                        <!-- column -->
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <!-- title -->
                                    <div class="d-md-flex align-items-center">
                                        <div>
                                            <h4 class="card-title">Danh sách sản phẩm bán chạy</h4>
                                            <h5 class="card-subtitle">Overview of Top Selling Items</h5>
                                        </div>
                                        <div class="ml-auto">
                                            <div class="dl">
                                                <select class="custom-select">
                                                    <option value="0" selected>Monthly</option>
                                                    <option value="1">Daily</option>
                                                    <option value="2">Weekly</option>
                                                    <option value="3">Yearly</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- title -->
                                </div>
                                <div class="table-responsive">
                                    <table class="table v-middle">
                                        <thead>
                                            <tr class="bg-light">
                                                <th class="border-top-0">Tên Sản Phẩm</th>
                                                <th class="border-top-0">Thể Loại</th>
                                                <th class="border-top-0">Số lượng tồn kho</th>
                                                <th class="border-top-0">Giá</th>
                                                <th class="border-top-0">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:if test="${products!=null && fn:length(products)>0}">
                                                <c:forEach items="${products}" var="p">
                                                    <tr>
                                                        <td>
                                                            <label class="label label-success">${p.productName}</label>
                                                        </td>
                                                        <td><h5>${p.category.name}</h5></td>
                                                        <td>${p.quantityInStore}</td>
                                                        <td>
                                                            <h6 class="m-b-0"><fmt:formatNumber pattern="###,###" 
                                                                              value="${p.price}"/></h6>
                                                        </td>
                                                        <td>
                                                            <button class="btn btn-info" style="font-size: 14px"
                                                                    onclick="location.href = '<c:url value="/updateprd/${p.id}"/>'">
                                                                update
                                                            </button>
                                                            <button class="btn btn-danger" style="font-size: 14px"
                                                                    onclick="location.href = '<c:url value="/removeprd/${p.id}"/>'">
                                                                delete
                                                            </button>
                                                        </td>
                                                    </tr>
                                                </c:forEach>    
                                            </c:if> 
                                        </tbody>
                                    </table>
                                </div>
                                <div class="col-xs-12 col-sm-12">
                                    <ul class="pagination">
                                        <li class="page-item">
                                            <c:if test="${index>0}">
                                                <a class="page-link" href="<c:url value="/test/${index-1}"/>" aria-label="Previous">
                                                    <span aria-hidden="true">&laquo;</span>
                                                    <span class="sr-only">Previous</span>
                                                </a></c:if>
                                            </li>
                                            <li><a href="<c:url value="/test/1"/>">1</a></li>
                                        <li><a href="<c:url value="/test/2"/>">2</a></li>
                                        <li><a href="<c:url value="/test/3"/>">3</a></li>
                                        <li class="page-item">
                                            <a class="page-link" href="<c:url value="/test/${index+1}"/>" aria-label="Next">
                                                <span aria-hidden="true">&raquo;</span>
                                                <span class="sr-only">Next</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <jsp:include page="../include/footer-admin.jsp"/>

                </body>

                </html>