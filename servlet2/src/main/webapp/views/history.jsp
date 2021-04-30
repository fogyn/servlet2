<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 27.04.2021
  Time: 0:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>History</title>
    <link rel="stylesheet" href="../css/main.css">
    <jsp:useBean id="nouteHistory" class="noute.History" scope="application"/>
</head>
<body>
    <div class="h-text">
        <h1 style="display: flex; justify-content: center;  margin-bottom: 10px; font-weight: bold;">
            История развития производителя
        </h1>

        <p align="justify" style="margin: auto; width: 800px;" >
            <div style="float: right">
                <img src="<c:out value="${nouteHistory.linkimg[0]}"/>" alt="lenovo" align="left" vspace="50" hspace="10" class="h-img1">
            </div>
            <div style="float: left">
                <img src="<c:out value="${nouteHistory.linkimg[1]}"/>" alt="lenovo" align="right" vspace="50" hspace="10" class="h-img2" height="50%" width="50%">
            </div>


            <c:out value="${nouteHistory.historytext}"/>
            <a href = "https://en.wikipedia.org/wiki/Liu_Chuanzhi">Основатель</a>
            <a href="https://www.lenovo.com/ru/ru/">Продукция</a>
        </p>

    </div>

    <hr>
    <a href="../index.jsp">Главная</a>
</body>
</html>
