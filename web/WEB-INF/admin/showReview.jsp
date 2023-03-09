
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

        <h5>Рейтинг за ${period}</h5>
        <c:forEach var="entry" items="${mapBooksRange}">
            Книга ${entry.key.name} выдавалась ${entry.value} раз.
        </c:forEach>
       
    
