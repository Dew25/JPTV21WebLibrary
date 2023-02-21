
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h3 class="w-100 mt-5 d-flex justify-content-center">Список книг</h3>

<div class="w-100 d-flex justify-content-center p-5">
    <div class="card " style="width: 35rem">
        <ol>
            <c:forEach var="book" items="${listBooks}">
                <li>
                    <a href="book?id=${book.id}">
                        ${book.name}. 
                        <c:forEach var="author" items="${book.authors}">
                            ${author.firstname} ${author.lastname}. 
                        </c:forEach>
                    </a>
                </li>
            </c:forEach>
        </ol>
    </div>
</div>
        
    