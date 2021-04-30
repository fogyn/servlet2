<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 27.04.2021
  Time: 0:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Models</title>
    <link rel="stylesheet" href="../css/main.css">
    <script src="../js/jquery.min.js"></script>
    <script src="../js/mainjs.js"></script>
    <jsp:useBean id="nouteModels" class="noute.Models" scope="application"/>
</head>
<body>
    <h1 style="margin: auto;">
        Models
    </h1>

    <hr>

    <div style="margin: auto ;width: 500px;">
        <c:forEach var="elem2" items="${nouteModels.listmodels}" varStatus="b">
            <div >

                <form type="get" action="getmodelsid" method="GET" class="getform" >

                    <input type="hidden" name="id" value="${b.index}">
                    <div>
                        <img src="<c:out value="${elem2['imgtitle']}"></c:out>" >
                    </div>
                    <div>
                        <p>
                            <c:out value="${elem2[textshort]}"></c:out>
                        </p>
                    </div>
                    <input type="submit" value="${b.index}${elem2['title']}">
                </form>

                <c:if test="${model==b.index}">

                    <div class="modelclass" >
                        <hr>

                        <p align="justify" style="margin: auto; ">

                            <img src="<c:out value="${elem2['img1']}"/>" alt="news${b.index}" align="left" vspace="10" hspace="10" >


                            <c:out value="${elem2['text']}"></c:out>
                            <img src="<c:out value="${elem2['img2']}"/>" alt="news${b.index}" align="right" vspace="10" hspace="10" >

                            <img src="<c:out value="${elem2['img3']}"/>" alt="news${b.index}" align="left" vspace="10" hspace="10"  >
                        </p>
                    </div>
                </c:if>

            </div>

        </c:forEach>
    </div>




    <hr>
    <a href="../index.jsp">Главная</a>
</body>
</html>
