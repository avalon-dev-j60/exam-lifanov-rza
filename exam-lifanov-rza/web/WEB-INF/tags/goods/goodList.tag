<%-- 
    Document   : bikes
    Created on : 28.06.2019, 11:39:36
    Author     : Dmitrii Lifanov
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag import="java.util.List"%>
<%@tag import="bikeshop.models.Goods"%>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@taglib prefix="common" tagdir="/WEB-INF/tags/common" %>

<%@attribute name="goods"
             required="true"
             type="List<Goods>"%>
<%--<%@attribute name="name"%>--%>
<%--<%@attribute name="amount"%>
<%@attribute name="cost"%>
<%@attribute name="category"%>
<%@attribute name="image"%>--%>

<c:choose>
    <c:when test="${not empty goods and !goods.isEmpty()}">
        <c:forEach items="${goods}" var="item">
            
                <div class="one third three-up-small-tablet two-up-mobile padded">
                    <div class="box">
                        <h4 data-compression="7" 
                            data-max="20" 
                            class="responsive align-center zero" 
                            style="font-size: 18px;">
                            <span class="responsiveText-wrapper">${item.name}</span>
                        </h4>
                        <img src=${item.imagePath}>
                        <p class="truncate">${item.description}</p>
                        <p>${item.cost} руб.</p>
                    </div>
                </div>
            <!--</div>-->
<!--            <h3>
                <a href="${pageContext.servletContext.contextPath}/bikes?id=/${item.id}">
                    ${item.name}
                </a>
            </h3>-->

            
        </c:forEach>
    </c:when>
        <c:otherwise>
            <p> There is not goods yet...</p>
        </c:otherwise>
</c:choose>


<div class="row">
            <div class="one third three-up-small-tablet two-up-mobile padded">
              <div class="box">
                <h4 data-compression="7" data-max="20" class="responsive align-center zero" style="font-size: 18px;"><span class="responsiveText-wrapper">Product 1</span></h4><img src="http://via.placeholder.com/300x300/2ecc71/ffffff/&amp;text=Product+1">
                <p class="truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <p>$8.00 USD<i class="icon-shopping-cart pull-right large"></i></p>
              </div>
            </div>
            <div class="one third three-up-small-tablet two-up-mobile padded">
              <div class="box">
                <h4 data-compression="7" data-max="20" class="responsive align-center zero" style="font-size: 18px;"><span class="responsiveText-wrapper">Product 2</span></h4><img src="http://via.placeholder.com/300x300/3498db/ffffff/&amp;text=Product+2">
                <p class="truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <p>$8.00 USD<i class="icon-shopping-cart pull-right large"></i></p>
              </div>
            </div>
            <div class="one third three-up-small-tablet two-up-mobile padded">
              <div class="box">
                <h4 data-compression="7" data-max="20" class="responsive align-center zero" style="font-size: 18px;"><span class="responsiveText-wrapper">Product 3</span></h4><img src="http://via.placeholder.com/300x300/9b59b6/ffffff/&amp;text=Product+3">
                <p class="truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <p>$8.00 USD<i class="icon-shopping-cart pull-right large"></i></p>
              </div>
            </div>
            <div class="one third three-up-small-tablet two-up-mobile padded">
              <div class="box">
                <h4 data-compression="7" data-max="20" class="responsive align-center zero" style="font-size: 18px;"><span class="responsiveText-wrapper">Product 4</span></h4><img src="http://via.placeholder.com/300x300/f1c40f/ffffff/&amp;text=Product+4">
                <p class="truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <p>$8.00 USD<i class="icon-shopping-cart pull-right large"></i></p>
              </div>
            </div>
            <div class="one third three-up-small-tablet two-up-mobile padded">
              <div class="box">
                <h4 data-compression="7" data-max="20" class="responsive align-center zero" style="font-size: 18px;"><span class="responsiveText-wrapper">Product 5</span></h4><img src="http://via.placeholder.com/300x300/e67e22/ffffff/&amp;text=Product+5">
                <p class="truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <p>$8.00 USD<i class="icon-shopping-cart pull-right large"></i></p>
              </div>
            </div>
            <div class="one third three-up-small-tablet two-up-mobile padded">
              <div class="box">
                <h4 data-compression="7" data-max="20" class="responsive align-center zero" style="font-size: 18px;"><span class="responsiveText-wrapper">Product 6</span></h4><img src="http://via.placeholder.com/300x300/e74c3c/ffffff/&amp;text=Product+6">
                <p class="truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <p>$8.00 USD<i class="icon-shopping-cart pull-right large"></i></p>
              </div>
            </div>
            <div class="one third three-up-small-tablet two-up-mobile padded">
              <div class="box">
                <h4 data-compression="7" data-max="20" class="responsive align-center zero" style="font-size: 18px;"><span class="responsiveText-wrapper">Product 7</span></h4><img src="http://via.placeholder.com/300x300/f02475/ffffff/&amp;text=Product+7">
                <p class="truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <p>$8.00 USD<i class="icon-shopping-cart pull-right large"></i></p>
              </div>
            </div>
            <div class="one third three-up-small-tablet two-up-mobile padded">
              <div class="box">
                <h4 data-compression="7" data-max="20" class="responsive align-center zero" style="font-size: 18px;"><span class="responsiveText-wrapper">Product 8</span></h4><img src="http://via.placeholder.com/300x300/1abc9c/ffffff/&amp;text=Product+8">
                <p class="truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <p>$8.00 USD<i class="icon-shopping-cart pull-right large"></i></p>
              </div>
            </div>
            <div class="one third three-up-small-tablet two-up-mobile padded">
              <div class="box">
                <h4 data-compression="7" data-max="20" class="responsive align-center zero" style="font-size: 18px;"><span class="responsiveText-wrapper">Product 9</span></h4><img src="http://via.placeholder.com/300x300/34495e/ffffff/&amp;text=Product+9">
                <p class="truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <p>$8.00 USD<i class="icon-shopping-cart pull-right large"></i></p>
              </div>
            </div>
            <div class="one third three-up-small-tablet two-up-mobile padded">
              <div class="box">
                <h4 data-compression="7" data-max="20" class="responsive align-center zero" style="font-size: 18px;"><span class="responsiveText-wrapper">Product 10</span></h4><img src="http://via.placeholder.com/300x300/2ecc71/ffffff/&amp;text=Product+10">
                <p class="truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <p>$8.00 USD<i class="icon-shopping-cart pull-right large"></i></p>
              </div>
            </div>
            <div class="one third three-up-small-tablet two-up-mobile padded">
              <div class="box">
                <h4 data-compression="7" data-max="20" class="responsive align-center zero" style="font-size: 18px;"><span class="responsiveText-wrapper">Product 11</span></h4><img src="http://via.placeholder.com/300x300/3498db/ffffff/&amp;text=Product+11">
                <p class="truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <p>$8.00 USD<i class="icon-shopping-cart pull-right large"></i></p>
              </div>
            </div>
            <div class="one third three-up-small-tablet two-up-mobile padded">
              <div class="box">
                <h4 data-compression="7" data-max="20" class="responsive align-center zero" style="font-size: 18px;"><span class="responsiveText-wrapper">Product 12</span></h4><img src="http://via.placeholder.com/300x300/f1c40f/ffffff/&amp;text=Product+12">
                <p class="truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <p>$8.00 USD<i class="icon-shopping-cart pull-right large"></i></p>
              </div>
            </div>
          </div>