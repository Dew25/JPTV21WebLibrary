

<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <h1>Возврат книги</h1>
        <form action="updateHistory" method="POST">
            <h3>Список читаемых книг</h3>
            <select name="historyId">
                <c:forEach var="history" items="${listHistories}">
                    <option value="${history.id}">${history.book.name}. 
                        <c:forEach var="author" items="${history.book.authors}">
                            ${author.firstname} ${author.lastname}. 
                        </c:forEach>
                        Читает: ${history.reader.firstname} ${history.reader.lastname}
                    </option>
                </c:forEach>
            </select>
            <br>
            <input type="submit" value="Вернуть книгу">
        </form>
    
