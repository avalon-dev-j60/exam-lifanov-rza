<%-- 
    Document   : error
    Created on : 03.07.2019, 0:36:49
    Author     : Lifanov Dmitrii
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

<fmt:setBundle basename="bikeshop.resources.errors"/>

<%@attribute name="exception"%>

<c:if test="${not empty exception}">
    <p class="bos error">
        <fmt:message key="${exception.message}"/>
    </p>
</c:if>