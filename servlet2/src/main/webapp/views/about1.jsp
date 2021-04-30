<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>About</title>
    <link rel="stylesheet" href="../css/main.css">
    <jsp:useBean id="nouteAbout" class="noute.About" scope="application"/>


</head>
<body>
    <h1>
        Общая информация о производителе
    </h1>
    <label>Наименование компании</label>
    <c:out value="${nouteAbout.mapAbout['name']}"/>
    <hr>
    <label>Страна</label>
    <c:out value="${nouteAbout.mapAbout['country']}"/>
    <hr>
    <label>Логотип</label>
         <img src="<c:out value="${nouteAbout.mapAbout['logo']}"/>">
    <hr>

    <label>Количество Сотрудников</label>
    <c:out value="${nouteAbout.mapAbout['numPeople']}"/>
    <hr>
    <label>Краткая информация</label>
    <c:out value="${nouteAbout.mapAbout['text']}"/>

    <hr>
    <a href="../index.jsp">Главная</a>
</body>
</html>
