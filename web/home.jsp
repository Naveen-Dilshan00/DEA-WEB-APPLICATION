<%-- 
    Document   : home
    Created on : 06-Apr-2024, 14:59:24
    Author     : Naveen Dilshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored ="false"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User : home</title>
    </head>
    <body>
        <c:if test="${not empty userobj}">
            <h1>Hello ${userobj.name}</h1>
        </c:if>
    </body>
</html>
