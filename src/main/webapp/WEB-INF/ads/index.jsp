<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
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

</body>
</html>
