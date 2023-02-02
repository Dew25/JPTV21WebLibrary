<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JPTV21WebLibrary</title>
    </head>
    <body>
        <h1>Добро пожаловать в нашу библиотеку</h1>
        <p>${info}</p>
        <h2>Выберите задачу:</h2>
        <ol>
            <li><a href="listBooks">Список книг</a></li>
            <li><a href="newBook">Добавить новую книгу</a></li>
            <li><a href="newAuthor">Добавить нового автора</a></li>
            <li><a href="listAuthors">Список авторов</a></li>
            <li><a href="newReader">Добавить нового читателя</a></li>
            <li><a href="listReaders">Список читателей</a></li>
            <li><a href="takeOnBook">Выдать книгу читателю</a></li>
        </ol>
    </body>
</html>
