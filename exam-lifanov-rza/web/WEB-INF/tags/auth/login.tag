<%-- 
    Document   : login
    Created on : 29.06.2019, 23:14:31
    Author     : Lifanov Dmitrii
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@taglib prefix="common" tagdir="/WEB-INF/tags/common" %>

<fmt:setBundle basename="bikeshop.resources.labels"/>

<form action="${pageContext.servletContext.contextPath}/login"
      method="POST"
      class="centered"
      style="max-width: 3in">
    
    <common:error/>

    <div class="row gap-bottom">
        <label>
            <fmt:message key="form.login.label"/>
        </label>
        <input type="text"
               name="login"
               placeholder="Введите ваш логин..."
               >
    </div>
    <div class="row gap-bottom">
        <label>
            <fmt:message key="form.login.password"/>
        </label>
        <input type="password"
               name="password"
               placeholder="Введите ваш пароль..."
               >
    </div>
    <div class="one whole padded align-right">
        <a href="${pageContext.servletContext.contextPath}/registration">
            Регистрация
        </a>
            <button class="asphalt">
                Войти
            </button>
    </div>
        
         
</form>