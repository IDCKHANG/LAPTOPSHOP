<!DOCTYPE html>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>  
<html lang="en">
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

    </head>

    <body>
        <div  class="col-xs-12 col-sm-12">
            <div class="login">
                  <form action="<c:url value="j_spring_security_check"/>" method="POST" 
                                              class="user">
                    <div class="imgcontainer">
                        <img src="resources/image/login.jpg" alt="Avatar" class="avatar">
                    </div>

                    <div class="container">
                        <label><b>Email:</b></label>
                        <input type="text" placeholder="Enter Username" name="email" required>

                        <label><b>Password</b></label>
                        <input type="password" placeholder="Enter Password" name="password" required>

                        <button type="submit">Login</button>
                    </div>

                    <div class="container" style="background-color:#f1f1f1">
                        <button type="button" class="cancelbtn">Cancel</button>
                        <span class="psw">Forgot <a href="#">password?</a></span>
                    </div>
                </form>
            </div></div>
    </body>
