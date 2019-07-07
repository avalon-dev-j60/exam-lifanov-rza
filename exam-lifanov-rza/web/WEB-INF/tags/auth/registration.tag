<%-- 
    Document   : registration
    Created on : 30.06.2019, 0:01:23
    Author     : Lifanov Dmitrii
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@taglib prefix="common" tagdir="/WEB-INF/tags/common" %>

<form action="${pageContext.servletContext.contextPath}/registration"
      method="post"
      class="centered"
      style="max-width: 6in">

    <common:error/>
    
    <div class="row gap-bottom">
        <label>Логин</label>
        <input type="text"
               name="login"
               placeholder="Введите ваш логин...">
    </div>
    <div class="row gap-bottom">
        <label>Пароль</label>
        <input type="password"
               name="password"
               placeholder="Введите ваш пароль">
    </div>
    <div class="row gap-bottom">
        <label>Подтвердите пароль</label>
        <input type="password"
               name="confirmation"
               placeholder="Введите пароль ещё раз...">
    </div>
    <div class="one whole padded align-right">
        <button class="asphalt">
            Зарегистрироваться
        </button>
         

</form>