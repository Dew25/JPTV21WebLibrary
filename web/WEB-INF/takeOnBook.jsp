<%-- 
    Document   : takeOnBook
    Created on : Feb 2, 2023, 9:44:07 AM
    Author     : Melnikov
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Выдача книги</title>
    </head>
    <body>
        <h1>Выдача книги</h1>
        <form action="createHistory" method="POST">
            <p>
                Список книг<br>
                <select name="bookId">
                    <c:forEach var="book" items="${listBooks}">
                        <option value="${book.id}">${book.name}</option>
                    </c:forEach>
                </select><br>
            </p><p>
                Список читателей:<br>
                <select name="readerId">
                    <c:forEach var="reader" items="${listReaders}">
                        <option value="${reader.id}">${reader.firstname} ${reader.lastname}</option>
                    </c:forEach>
                </select><br>
            </p>
            <p>
                <input type="submit" value="Выдать книгу">
            </p>
        </form>
    </body>
</html>
