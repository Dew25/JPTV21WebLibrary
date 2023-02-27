
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <h1>Список авторов</h1>
        <ol>
            <c:forEach var="author" items="${listAuthors}">
                <li>
                    ${author.firstname} ${author.lastname}<br>
                    <ol>
                        <c:forEach var="book" items="${author.books}">
                            <li> <a href="book?id=${book.id}">${book.name}. ${book.publishedYear}</a></li>
                        </c:forEach>
                    </ol>
                </li>
            </c:forEach>
        </ol>
   