<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The MONGAds" />
    </jsp:include>
</head>
<body class="bg-light">
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <div class="py-5 text-center">
        <img class="d-block mx-auto mb-4" src="https://countryandvictoriantimes.files.wordpress.com/2017/01/header1.gif" >
        <h2>MONGAds</h2>

    </div>


<div class="container">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2><a href="/ads/show?id=${ad.id}">${ad.title}</a></h2>
            <p>${ad.description}</p>
            <p>${ad.category_id}</p>
            <p>$${ad.expected_price}USD</p>
        </div>
    </c:forEach>


    <%--<%--%>
        <%--// New location to be redirected--%>
        <%--String site = new String("/ads");--%>
        <%--response.setStatus(response.SC_MOVED_TEMPORARILY);--%>
        <%--response.setHeader("pagename", site);--%>
    <%--%>--%>
</div>
</div>
</body>

</body>
</html>
