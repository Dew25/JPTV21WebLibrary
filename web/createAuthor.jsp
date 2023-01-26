<%-- 
    Document   : createAuthor
    Created on : Jan 26, 2023, 11:14:09 AM
    Author     : Melnikov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Создание автора</title>
    </head>
    <body>
        <h1>Новый автор:</h1>
        <form method="POST" action="createAuthor">
            Имя: <input type="text" name="firstname" value=""><br>
            Фамилия: <input type="text" name="lastname" value=""><br>
            <input type="submit" value="Добавить">
        </form>
    </body>
</html>
