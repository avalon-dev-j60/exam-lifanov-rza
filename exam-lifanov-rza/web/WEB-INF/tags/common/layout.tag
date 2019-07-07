<%-- 
    Document   : layout
    Created on : 27.06.2019, 9:46:20
    Author     : Lifanov Dmitrii
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

<%@attribute name="title" required="true"%>

<!DOCTYPE html>
<html>
    <head>
        <title>
            ${title}
        </title>
            <link href="${pageContext.servletContext.contextPath}/css/bikeshop.css"
                  type="text/css"
                  rel="stylesheet">
    </head>
    <body>
        <header>
            <div class="equlize row">
            <div class="one third padded"></div>
            <div class="one third padded">
            
                <div class ="name">Bike Shop</div>
            
                <div id ="menu">
                    <ul>
                        <li><a href="${pageContext.servletContext.contextPath}/bikes">Велосипеды</a></li>
                        <li><a href="${pageContext.servletContext.contextPath}/accessories">Аксессуары</a></li>
                        <li><a href="${pageContext.servletContext.contextPath}/equipment">Экипировка</a></li>
                        <li><a href="${pageContext.servletContext.contextPath}/contacts">Контакты</a></li>
                    </ul>
                </div>
            </div>
            <div class="one third padded">
                <div id="references">
                    <ul>
                        <!--<li><a href="${pageContext.servletContext.contextPath}/registration">Регистрация</a></li>-->
                        
                        <c:choose>
                            <c:when test="${not empty sessionScope.auth}">
                                <li><a href="${pageContext.servletContext.contextPath}/logout">Выйти</a></li>
                                <li><a href="${pageContext.servletContext.contextPath}/my-profile">Мой профиль</a></li>
                            </c:when>
                            <c:otherwise>
                                <li><a href="${pageContext.servletContext.contextPath}/login">Войти</a></li>
                            </c:otherwise>
                        </c:choose>
                        <li><a href="${pageContext.servletContext.contextPath}/">Корзина (js)
                            <i class="icon-shopping-cart"></i></a></li>
                    </ul>
                </div>
            </div>
            </div>
        </header>
        <section>
            <hr></hr>
            <div class="row">
                <div class="one ninth padded"></div>
                <div class="seven ninth padded">
                    <jsp:doBody/>
                </div>
                <div class="one ninth padded"></div>
            </div>
        </section>
    </body>
</html>






            
            
            
            
            