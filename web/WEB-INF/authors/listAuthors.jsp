
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <h1>Список авторов</h1>
        <ol>
            <c:forEach var="author" items="${listAuthors}">
                <li>
                    ${author.firstname} ${author.lastname}<br>
                    <ul>
                        <c:forEach var="book" items="${author.books}">
                            <li>${book.name}. ${book.publishedYear}</li>
                        </c:forEach>
                    </ul>
                </li>
            </c:forEach>
        </ol>
   