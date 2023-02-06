<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
    