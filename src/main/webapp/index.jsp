<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>Title page</title>
    <link rel="stylesheet" href="../../resources/fonts/fonts.css?v=252">
    <link rel="stylesheet" type="text/css" href="../../resources/css/style.css?v=353">

</head>
<body>
<div id="container">
    <header>
        <nav class="head">
            <h1 class="title">Система управления студентами и их успеваемостью</h1>
            <div class="login">
                <c:choose>
                    <c:when test="${isLogin eq true}">
                        <div><p>Привет, ${login}!</p></div>
                        <div><a href="/logout">Logout</a></div>
                    </c:when>
                    <c:otherwise>
                        <div><a href="/login">Logout</a></div>
                    </c:otherwise>
                </c:choose>




            </div>
        </nav>
    </header>
    <main>
        <section class="menu_title">
            <a href="/students">Студенты</a>
            <a href="/discipline">Дисциплины</a>
            <a href="/terms">Семестры</a>
        </section>
    </main>

</div>
</body>
</html>