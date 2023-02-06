
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h1 class="w-100 d-flex justify-content-center">Выдача книги</h1>
<div class="w-100 d-flex justify-content-center">
    <div class="card" style="width: 25rem;">
      <div class="card-body">
        <h5 class="card-title w-100">Список книг</h5>
        <form action="createHistory" method="POST">
            <p class="card-text w-100">
                <select name="bookId" class="w-100">
                    <c:forEach var="book" items="${listBooks}">
                        <option value="${book.id}">${book.name}</option>
                    </c:forEach>
                </select>
            </p>
            <h5 class="card-title w-100">Список читателей</h5>
            <p class="card-text w-100">
                <select name="readerId"class="w-100">
                    <c:forEach var="reader" items="${listReaders}">
                        <option value="${reader.id}">${reader.firstname} ${reader.lastname}</option>
                    </c:forEach>
                </select>
            </p>
            <p class="card-text w-100">
                <input type="submit" value="Выдать книгу">
            </p>
        </form>
           
      </div>
    </div>
</div>
        
        
    