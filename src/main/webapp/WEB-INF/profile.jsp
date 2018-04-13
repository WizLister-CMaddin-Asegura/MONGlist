<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <%--<link href="../stylesheets/profile.css" rel="stylesheet" type="text/css">--%>
    <%--<link href="../stylesheets/basic.css" rel="stylesheet">--%>
</head>
<body class="bg-light">
<div class="container">
    <jsp:include page="/WEB-INF/partials/navbar-profile.jsp" />
    <div class="py-5 text-center">
        <img class="d-block mx-auto mb-4" src="https://countryandvictoriantimes.files.wordpress.com/2017/01/header1.gif" >
        <h2>User Profile</h2>
        <p class="lead">Viewing Personal Page</p>
    </div>


    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>





    <div class="container">
        <h1>Here are all your personal ads!</h1>

        <c:forEach var="ad" items="${ads}">
            <div class="col-md-6">
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
                <p>${ad.category_id}</p>
                <p>$${ad.expected_price}USD</p>
            </div>
        </c:forEach>


    </div>
</div>

</body>
</html>
