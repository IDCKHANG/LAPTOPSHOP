<%-- 
    Document   : header-admin
    Created on : Dec 6, 2019, 2:31:09 AM
    Author     : KHANG
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="<c:url value="/webjars/bootstrap/3.4.1/css/bootstrap.min.css"/>" 
      type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="<c:url value="/resource/assets/images/favicon.png"/>">
          <title>Admin</title>
    <link href="<c:url value="/resources/assets/libs/chartist/dist/chartist.min.css"/>" rel="stylesheet">
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>

    <link href="/resources/assets/libs/chartist/dist/chartist.min.css" rel="stylesheet">
    <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
</head>>
<aside class="left-sidebar" data-sidebarbg="skin6">
    <div class="scroll-sidebar">
        <nav class="sidebar-nav">
            <ul id="sidebarnav">
                <li>
                    <div class="user-profile d-flex no-block dropdown m-t-20">
                        <div class="user-content hide-menu m-l-10">
                            <a href="javascript:void(0)" class="" id="Userdd" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <h5 class="m-b-0 user-name font-medium">Xin chào! <i class="fa fa-angle-down"></i></h5>
                                <sec:authorize access="isAuthenticated()"><span class="op-5 user-email">
                                        <strong style="color: red"><sec:authentication property="principal.email"/></strong>
                                    </span></sec:authorize>
                            </a>

                        </div>
                    </div>
                </li>
                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="index.html" aria-expanded="true"><i class="mdi mdi-view-dashboard"></i><span class="hide-menu">Bảng điều khiển</span></a></li>
                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="<c:url value="/test/1"/>" aria-expanded="true"><i class="mdi mdi-account-network"></i><span class="hide-menu">Sản Phẩm</span></a></li>
                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="<c:url value="/quyen"/>" aria-expanded="true"><i class="mdi mdi-border-all"></i><span class="hide-menu">Thành Viên</span></a></li>
                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="<c:url value="/thanhvien/1"/>" aria-expanded="true"><i class="mdi mdi-face"></i><span class="hide-menu">Thống Kê</span></a></li>
                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="<c:url value="/customers/1"/>" aria-expanded="true"><i class="mdi mdi-file"></i><span class="hide-menu">Khách hàng</span></a></li>
                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="<c:url value="/productmng"/>" aria-expanded="true"><i class="mdi mdi-alert-outline"></i><span class="hide-menu">404</span></a></li>
                <li class="text-center p-40 upgrade-btn">
                    <a href="https://wrappixel.com/templates/xtremeadmin/" class="btn btn-block btn-danger text-white" target="_blank">Upgrade to Pro</a>
                </li>
            </ul>

        </nav>
    </div>
</aside>
