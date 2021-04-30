<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 27.04.2021
  Time: 0:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>News</title>
    <link rel="stylesheet" href="../css/main.css">
    <script src="../js/jquery.min.js"></script>
    <script src="../js/mainjs.js"></script>
    <jsp:useBean id="nouteNews" class="noute.News" scope="application"/>
</head>
<body>


    <h1 style="margin: auto;">
        Новости
    </h1>


    <hr>
    <c:forEach var="elem" items="${nouteNews.listnews}" varStatus="a">
        <div>
<!--<form type="get" action="getnewsid" method="GET" class="getform" >-->
            <c:set var="paramm">text${a.index}</c:set>

            <form type="get" action="getnewsid" method="GET" class="getform" >

                <input type="hidden" name="id" value="${a.index}">
                <div>
                    <img src="<c:out value="${elem['imgtitle']}"></c:out>" height="15%" width="15%">
                </div>
                <input type="submit" value="${a.index}${elem['title']}">
            </form>
            <c:if test="${k==a.index}">

                <div class="testclass" >
                    <hr>


                    <p align="justify" style="margin: auto; width: 500px;">

                            <img src="<c:out value="${elem['img1']}"/>" alt="news${a.index}" align="left" vspace="10" hspace="10" style="width: 20%;
                            height: 20%;">


                        <c:out value="${elem['text']}"></c:out>
                        <img src="<c:out value="${elem['img2']}"/>" alt="news${a.index}" align="right" vspace="10" hspace="10" height="20%" width="20%">

                        <img src="<c:out value="${elem['img3']}"/>" alt="news${a.index}" align="left" vspace="10" hspace="10" height="20%" width="20%" >
                    </p>
                </div>
            </c:if>

            </div>

    </c:forEach>

    <hr>
    <a href="../index.jsp">Главная</a>
<hr>
<div>
    <textarea id="data3" rows="1" cols="10">

	</textarea></td>
</div>
</body>
</html>
