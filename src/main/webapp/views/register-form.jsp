<%-- 
    Document   : Register
    Created on : Dec 11, 2019, 1:20:58 AM
    Author     : KHANG
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>SB Admin 2 - Login</title>

        <link href="<c:url value="/webjars/bootstrap/3.4.1/css/bootstrap.min.css"/>" 
              type="text/css" rel="stylesheet"/>

        <!-- Custom fonts for this template-->
        <link href="<c:url value="/resource/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet" type="text/css">

        <!-- Custom styles for this template-->
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng ký tài khoản</title>
    </head>

    <body>
        <div  class="col-xs-12 col-sm-12">
            <div class="login">
                <form action="${pageContext.request.contextPath}/registerform"  method="POST" modelAttribute="account"
                      class="user" >
                    <div class="imgcontainer">
                        <img src="resources/image/login.jpg" alt="Avatar" class="avatar">
                    </div>
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
                    <div class="container">
                        <input name="id" value="${account.id}" hidden/>

                        <label><b>Họ Tên</b></label>
                        <input type="text" placeholder="Enter Username" name="fullName" required/>

                        <label><b>Email:</b></label><br>
                        <input type="text" placeholder="Enter Email" name="email" required/>

                        <label><b>Ngày sinh:</b></label><br>
                        <input type="date"  name="birthDate" required/><br>

                        <label><b>Địa chỉ</b></label>
                        <input type="text" placeholder="Enter Address" name="address" required/>

                        <label><b>Password</b></label>
                        <input type="password" placeholder="Enter Password" name="password" required/>
                        <sec:authorize access="isAuthenticated()">
                            <select class="form-control" name="roleID" >
                                <c:forEach items="${roles}" var="r">
                                    <option value="${r.id}">${r.role}</option>
                                </c:forEach>
                            </select>
                        </sec:authorize>  

                        <button type="submit">Đăng ký</button>
                    </div>

                    <div class="container" style="background-color:#f1f1f1">
                        <button type="button" class="cancelbtn">Cancel</button>
                        <span class="psw">Login <a href="login.jsp">Đăng Nhập</a></span>
                    </div>
                </form>
            </div></div>
    </body>

</html>
