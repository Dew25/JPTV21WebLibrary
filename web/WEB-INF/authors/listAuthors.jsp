
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <h1>Список авторов</h1>
        <ol>
            <c:forEach var="author" items="${listAuthors}">
                <li>
                    ${author.firstname} ${author.lastname}
                </li>
            </c:forEach>
        </ol>
   