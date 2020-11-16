<%-- 
    Document   : login
    Created on : Sep 23, 2020, 3:19:57 PM
    Author     : Lenovo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login</title>
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/set2.css" />
    </head>
    <body>
        <c:if test="${sessionScope.USER != null}">
            <c:redirect url="default.jsp"/>
        </c:if>
        <div class="container">
            <form action="MainController" method="post">
                <section class="content">
                    <h1>Login</h2>
                        <div>
                            <span class="input input--fumi">
                                <input class="input__field input__field--fumi" type="text" id="input-24" name="txtEmail" 
                                       pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" 
                                       title="Email must be formated as xx@xx.xx"  
                                       required=""  />
                                <label class="input__label input__label--fumi" for="input-24">
                                    <i class="fa fa-fw fa-email icon icon--fumi"></i>
                                    <span class="input__label-content input__label-content--fumi">Email</span>
                                </label>
                            </span>
                        </div>
                        <div>
                            <span class="input input--fumi">
                                <input class="input__field input__field--fumi" type="password" name="txtPassword" required id="input-25" minlength="8" maxlength="16"/>
                                <label class="input__label input__label--fumi" for="input-25">
                                    <i class="fa fa-fw fa-password icon icon--fumi"></i>
                                    <span class="input__label-content input__label-content--fumi">Password</span>
                                </label>
                            </span>
                        </div>
                        <div>
                            <button type="submit" name="btnAction" value ="Login">Login</button>
                        </div>
                </section>

            </form>
            <div>
                <p><a href = "register.jsp">Register now?</a></p>
            </div>
        </div>
    </body>
</html>
