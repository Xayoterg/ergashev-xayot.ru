<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>Students List</title>
    <link rel="stylesheet" href="../../resources/fonts/fonts.css?v=232">
    <link rel="stylesheet" type="text/css" href="../../resources/css/style.css?v=232">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
</head>
<body>
<div id="container">
    <header>
        <nav class="head">
            <h1 class="title">Система управления студентами и их успеваемостью</h1>
            <div class="login">


                <div><p>Привет, admin!</p></div>
                <div><a href="/logout">Logout</a></div>



            </div>
        </nav>
    </header>
    <main>
        <section class="content">
            <div class="side_menu">
                <div><a href="/home">На главную</a></div>
                <div><a href="/disciplines">Назад</a></div>
            </div>
            <div class="main">
                <h2>Для того чтобы модифицировать дисциплину введите новое значение поля и нажмите кнопку
                    "Применить":</h2>
                <div class="form_cm">
                    <form action="/discipline-modify" method="post">
                        <input type="hidden" name="id" value="1">
                        <div class="line3">
                            <div>Название</div>
                            <label>
                                <input type="text" name="discipline" value="Высшая математика">
                            </label>
                        </div>
                        <input class="button_cm_discipline" type="submit" value="Применить">
                    </form>
                </div>

            </div>
        </section>
    </main>

</div>

</body></html>

