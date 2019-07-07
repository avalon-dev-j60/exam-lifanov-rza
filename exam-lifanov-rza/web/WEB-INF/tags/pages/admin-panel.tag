<%-- 
    Document   : admin-panel
    Created on : 05.07.2019, 12:56:38
    Author     : Lifanov Dmitrii
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@taglib prefix="common" tagdir="/WEB-INF/tags/common"%>
<%@taglib prefix="pages" tagdir="/WEB-INF/tags/pages"%>

<form action="${pageContext.servletContext.contextPath}/admin-panel" 
      method="post" 
      class="centered"
      style="max-width: 6in">

    <common:error/>

    <label>Наименование</label>
    <input type="text"
           name="name"
           placeholder="Введите название товара..."><br>
    <label>Категория</label>
    <select name="type">
        <option value="mount" selected>Горный</option>
        <option value="highway">Шоссейный</option>
        <option value="women">Женский</option>
        <option value="child">Детский</option>
    </select>  <br>
    <label>Цена</label>
    <input type="number"
           name="cost"
           placeholder="Введите цену товара..."><br>
    <label>Количество</label>
    <input type="number"
           name="amount"
           placeholder="Введите количество товара..."><br>
    <label>Описание</label>
    <input name="description" 
           type="text"
           placeholder="Введите описание товара..."><br>
            <label>Фото</label>
    <input type="file"
           name="imagePath"><br> 
    <input type="submit"><br>
</form>
