<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to OUR site!" />
    </jsp:include>
</head>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<body class="bg-light" background="/webapp/images/IMG_3668">
<div class="container" >
    <div class="py-5 text-center">
        <img class="d-block mx-auto mb-4" src="https://countryandvictoriantimes.files.wordpress.com/2017/01/header1.gif" >
        <h1>Welcome to the MONGlist</h1>
        <h2>Where your ad sits A-MONG the Best!</h2>
        <%--<p class="lead">Please Log In.</p>--%>
    </div>
    <%--${headerValues.setAttribute("currentpage", pagename);}--%>
</body>
</html>