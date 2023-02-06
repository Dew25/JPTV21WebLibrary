<%-- 
    Document   : listBooks
    Created on : Jan 23, 2023, 10:01:07 AM
    Author     : Melnikov
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Список книг</title>
    </head>
    <body>
        <h1>Список книг</h1>
        <ol>
            <c:forEach var="book" items="${listBooks}">
                <li>${book.name}. 
                    <c:forEach var="author" items="${book.authors}">
                        ${author.firstname} ${author.lastname}. 
                    </c:forEach>
                </li>
                
            </c:forEach>
        </ol>
    </body>
</html>
