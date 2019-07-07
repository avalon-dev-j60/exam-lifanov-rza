<%-- 
    Document   : index
    Created on : 27.06.2019, 9:38:02
    Author     : Lifanov Dmitrii
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    request.getRequestDispatcher("/bikes").forward(request, response);
%>
