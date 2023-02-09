

<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <h1>Новая книга</h1>
        <form method="POST" action="createBook">
            Название книги: <input type="text" name="name" value=""><br>
            Год издания книги: <input type="text" name="publishedYear" value=""><br>
            Количество экземпляров книги: <input type="text" name="quantity" value=""><br>
            Список авторов:<br> 
            <select name="authors" multiple="true">
                <c:forEach var="author" items="${listAuthors}">
                    <option value="${author.id}">${author.firstname} ${author.lastname}</option>
                </c:forEach>
            </select><br>
            <input type="submit" value="Добавить">
        </form>
    
