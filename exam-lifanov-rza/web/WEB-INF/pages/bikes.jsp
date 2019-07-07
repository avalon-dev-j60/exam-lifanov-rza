<%-- 
    Document   : bikes
    Created on : 27.06.2019, 20:47:40
    Author     : Lifanov Dmitrii
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="common" tagdir="/WEB-INF/tags/common"%>
<%@taglib prefix="good" tagdir="/WEB-INF/tags/goods"%>
<%@taglib prefix="pages" tagdir="/WEB-INF/tags/pages"%>

<common:layout title="Bikes">
    
    <div class="one fifth padded">
        <pages:bikes_menu_category/>
    </div>
    
    <div class="three fifth padded">
        <good:goodList goods="${goods}"/>
        <%--<good:goodList/>--%>
    </div>
    
    <div class="one fifth padded"></div>
    
</common:layout>
