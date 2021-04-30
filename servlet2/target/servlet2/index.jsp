<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <title>Servlet 2</title>

    <link rel="stylesheet" href="css/normalize.css">

    <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">


</head>
<body >


<section class="network" style="margin-top: 100px">
    <div class="container">
        <div class="row r0">
            <div class="col-4" style="margin: auto">
                <h1>
                    Главная страница
                </h1>
            </div>
        </div>
        <div class="row r1">
            <div class="col">
                <a href="views/about1.jsp">
                    <p class="num1">
                        Общая информация
                    </p>
                </a>
            </div>
            <div class="col">
                <a href="views/history.jsp">
                    <p class="num1">
                        История развития
                    </p>
                </a>
            </div>
            <div class="col">
                <a href="views/news.jsp">
                    <p class="num1">
                        Новости
                    </p>
                </a>
            </div>
            <div class="col">
                <a href="views/models.jsp">
                    <p class="num1">
                        Модели ноутбуков
                    </p>
                </a>
            </div>
        </div>
    </div>
    <hr>
</section>



</body>
</html>
