<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <%--<link href="../stylesheets/profile.css" rel="stylesheet" type="text/css">--%>
    <%--<link href="../stylesheets/basic.css" rel="stylesheet">--%>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar-profile.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>

</body>
</html>
