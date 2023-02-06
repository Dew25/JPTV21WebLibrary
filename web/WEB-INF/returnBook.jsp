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
        <title>Возврат книги</title>
    </head>
    <body>
        <h1>Возврат книги</h1>
        <form action="updateHistory" method="POST">
            <h3>Список читаемых книг</h3>
            <select name="historyId">
                <c:forEach var="history" items="${listHistories}">
                    <option value="${history.id}">${history.book.name}. 
                        <c:forEach var="author" items="${history.book.authors}">
                            ${author.firstname} ${author.lastname}. 
                        </c:forEach>
                    </option>
                </c:forEach>
            </select>
            <br>
            <input type="submit" value="Вернуть книгу">
        </form>
    </body>
</html>
