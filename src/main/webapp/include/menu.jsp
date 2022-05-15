<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<div id="header">
    <nav class="navbar navbar-inverse navbar-static-top">
        <div class="container">
            <div class="navbar-collapse collapse" id="menu">
                <div><ul class="nav navbar-nav">
                        <li class="active"><a href="<c:url value="/index"/>">Home</a></li>
                        <li><a href="#">Pin sạc</a></li>
                        <li><a href="#">Thẻ nhớ</a></li>
                        <li><a href="#">Tai nghe</a></li>
                        <li><a href="#">USB/Ổ nhớ</a></li>
                        <li><a href="#">Chuột/Bàn phím</a></li>
                        <li><a href="#">Loa</a></li>                
                        <li><a href="#">Phụ kiện chính hãng</a></li>
                    </ul>
                </div>
                <div>
                    <ul class="nav navbar-nav navbar-right">

                        <li><sec:authorize access="!isAuthenticated()">
                                <a href="<c:url value="/login"/>">Login</a>
                            </sec:authorize>
                        </li>
                        <li><sec:authorize access="!isAuthenticated()">
                                <a href="<c:url value="/register"/>">Đăng ký</a>
                            </sec:authorize></li>
                        <sec:authorize access="isAuthenticated()">
                        <strong style="color: red"><sec:authentication property="principal.email"/></strong>
                            <sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_MANAGER')">
                                <li><a href="<c:url value="/test/1"/>">Manager Home</a></li>
                                </sec:authorize>
                                <sec:authorize access="hasRole('ROLE_ADMIN')">
                                <li><a href="<c:url value="/test/1"/>">Admin Home</a></li>
                                </sec:authorize>
                            <li><a href="<c:url value="/logout"/>">Logout</a></li>
                            </sec:authorize>
                    </ul></div>
            </div>
        </div>
    </nav>
</div>