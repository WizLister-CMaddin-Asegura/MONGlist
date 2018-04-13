<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <%--<link href="../stylesheets/basic.css" rel="stylesheet">--%>
    <%--<link href="../stylesheets/login.css" rel="stylesheet">--%>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<body class="bg-light">
<div class="container">
    <div class="py-5 text-center">
        <img class="d-block mx-auto mb-4" src="https://countryandvictoriantimes.files.wordpress.com/2017/01/header1.gif" >
        <h1>Please Log In</h1>
        <%--<p class="lead">Please Log In.</p>--%>
    </div>
    <div class="col-md-8 order-md-1" class="py-5 text-center">
        <form action="/login" method="POST">
            <div class="mb-3" class="py-5 text-center">
                <label for="username">Username</label>
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text">@</span>
                    </div>
                    <input id="username" name="username" class="form-control" type="text" placeholder="Username" required>
                    <div class="invalid-feedback" >
                        Your username is required.
                    </div>
                </div>
            </div>
            <div class="mb-3" class="py-5 text-center">
                <label for="password">Password</label>
                <div class="input-group">
                    <input id="password" name="password" class="form-control" type="password" placeholder="*******" required>
                    <div class="invalid-feedback" style="width: 100%;">
                        Please enter your Password.
                    </div>
                </div>
                <div>
                    <button type="submit" value="Submit" class="py-5 text-center">Submit</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
