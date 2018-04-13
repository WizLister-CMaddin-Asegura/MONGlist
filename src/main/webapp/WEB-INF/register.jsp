<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<div class="container">
    ${username_error}
    ${password_error}
    ${email_error}
    ${password_mismatch}
    ${form_error}
    ${first_name_error}
    ${last_name_error}
    ${zipcode_error}
    ${mobile_number_error}

    <body class="bg-light">
    <div class="container">
        <div class="py-5 text-center">
            <img class="d-block mx-auto mb-4" src="https://countryandvictoriantimes.files.wordpress.com/2017/01/header1.gif" >
            <h2>Register</h2>
            <p class="lead">Please fill in your information.</p>
        </div>
        <div class="col-md-8 order-md-1">
            <form action="/register" method="post">
                <div class="mb-3">
                    <label for="username">Username</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">@</span>
                        </div>
                        <input id="username" name="username" class="form-control" type="text" placeholder="Username" required>
                        <div class="invalid-feedback" style="width: 100%;">
                            Your username is required.
                        </div>
                    </div>
                </div>
                <div class="mb-3">
                    <label for="email">Email <span class="text-muted">(Optional)</span></label>
                    <input id="email" name="email" class="form-control" type="text" placeholder="you@example.com">
                    <div class="invalid-feedback">
                        Please enter a valid email address for shipping updates.
                    </div>
                </div>
                <div class="mb-3">
                    <label for="password">Password</label>
                    <input id="password" name="password" class="form-control" type="password" placeholder="*******" required>
                    <div class="invalid-feedback">
                        Please enter your Password.
                    </div>
                </div>
                <div class="mb-3">
                    <label for="confirm_password">Confirm Password</label>
                    <input id="confirm_password" name="confirm_password" class="form-control" type="password" placeholder="*******" required>
                    <div class="invalid-feedback">
                        Please re-enter your Password.
                    </div>
                </div>
                <div class="mb-3">
                    <label for="first_name">First Name <span class="text-muted">(Optional)</span></label>
                    <input id="first_name" name="first_name" class="form-control" type="text">
                    <div class="invalid-feedback">
                        Please enter your First name.
                    </div>
                </div>
                <div class="mb-3">
                    <label for="last_name">Last Name <span class="text-muted">(Optional)</span></label>
                    <input id="last_name" name="last_name" class="form-control" type="text">
                    <div class="invalid-feedback">
                        Please enter your Last name.
                    </div>
                </div>
                <div class="mb-3">
                    <label for="zipcode">Zip</label>
                    <input id="zipcode" name="zipcode" class="form-control" type="text" placeholder="" required>
                    <div class="invalid-feedback">
                        Zip code required.
                    </div>
                </div>
                <div class="mb-3">
                    <label for="mobile_number">Mobile Number</label>
                    <input id="mobile_number" name="mobile_number" class="form-control" type="number">
                    <div class="invalid-feedback">
                        Mobile number required.
                    </div>
                    <button type="submit" value="Submit">Submit</button>

                </div>
            </form>
        </div>
    </div>
    </body>
</html>