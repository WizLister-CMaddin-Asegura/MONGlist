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
<body>

<div class="container">
    <h1>${ad.title}</h1>
    <p>${ad.description}</p>
</div>

</body>
</html>