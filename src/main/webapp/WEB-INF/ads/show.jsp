<%--
  Created by IntelliJ IDEA.
  User: armandosegura
  Date: 4/13/18
  Time: 10:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="View a single ad" />
</jsp:include>
<body class="bg-light">
<div class="container">
    <div class="py-5 text-center">
        <img class="d-block mx-auto mb-4" src="https://countryandvictoriantimes.files.wordpress.com/2017/01/header1.gif" >
        <h2>AD Details</h2>
        <p class="lead">Here's the MONGAd</p>
    </div>

<div class="container">
    <%--<p>${ad.user_id}</p>--%>
    <h1>${ad.title}</h1>
    <p>${ad.description}</p>
    <%--<p>${ad.category_id}</p>--%>
    <%--<p>${ad.expected_price}</p>--%>
</div>
</div>
</body>

</body>
</html>