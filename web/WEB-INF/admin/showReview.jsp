
<%@page contentType="text/html" pageEncoding="UTF-8"%>


        <h5>Рейтинг за ${period}</h5>
        <c:forEach var="entry" items="${mapBooksRange}">
            <p class=""> Книга ${entry.key.name} выдавалась ${entry.value} раз(a).</p>
        </c:forEach>
       
    
