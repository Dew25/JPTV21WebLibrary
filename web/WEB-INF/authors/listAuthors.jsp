
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <h1>Список авторов</h1>
        <ol>
            <c:forEach var="author" items="${listAuthors}">
                <li>
                    ${author.firstname} ${author.lastname}
                </li>
            </c:forEach>
        </ol>
   