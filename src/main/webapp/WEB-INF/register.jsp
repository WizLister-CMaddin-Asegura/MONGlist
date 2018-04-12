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
        <%--${language_error}--%>

        <h1>Please fill in your information.</h1>
        <form action="/register" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input id="email" name="email" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm Password</label>
                <input id="confirm_password" name="confirm_password" class="form-control" type="password">
            </div>
            <div class="form-group">
                <label for="first_name">First Name</label>
                <input id="first_name" name="first_name" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="last_name">Last Name</label>
                <input id="last_name" name="last_name" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="zipcode">Zipcode</label>
                <input id="zipcode" name="zipcode" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="mobile_number">Mobile Phone#</label>
                <input id="mobile_number" name="mobile_number" class="form-control" type="number">
            </div>
            <%--<div class="form-group">--%>
                <%--<label for="language_id">Preffered Language</label>--%>
                <%--<input id="language_id" name="language_id" class="form-control" type="text">--%>
            <%--</div>--%>
            <input type="submit" class="btn btn-primary btn-block">
        </form>
    </div>
</body>
</html>







<%--<form action="/register" method="post">--%>
    <%--<div class="form-row">--%>
        <%--<div class="col-md-4 mb-3">--%>
            <%--<label for="validationServer01">First name</label>--%>
            <%--<input type="text" class="form-control is-valid" id="validationServer01" placeholder="First name" value="Mark" required>--%>
            <%--<div class="valid-feedback">--%>
                <%--Looks good!--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="col-md-4 mb-3">--%>
            <%--<label for="validationServer02">Last name</label>--%>
            <%--<input type="text" class="form-control is-valid" id="validationServer02" placeholder="Last name" value="Otto" required>--%>
            <%--<div class="valid-feedback">--%>
                <%--Looks good!--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="col-md-4 mb-3">--%>
            <%--<label for="username">Username</label>--%>
            <%--<div class="input-group">--%>
                <%--<div class="input-group-prepend">--%>
                    <%--<span class="input-group-text" id="inputGroupPrepend3">@</span>--%>
                <%--</div>--%>
                <%--<input type="text" class="form-control is-invalid" id="validationServerUsername" placeholder="Username" aria-describedby="inputGroupPrepend3" required>--%>
                <%--<div class="invalid-feedback">--%>
                    <%--Please choose a username.--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--<div class="form-row">--%>
        <%--<div class="col-md-6 mb-3">--%>
            <%--<label for="validationServer03">City</label>--%>
            <%--<input type="text" class="form-control is-invalid" id="validationServer03" placeholder="City" required>--%>
            <%--<div class="invalid-feedback">--%>
                <%--Please provide a valid city.--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="col-md-3 mb-3">--%>
            <%--<label for="validationServer04">State</label>--%>
            <%--<input type="text" class="form-control is-invalid" id="validationServer04" placeholder="State" required>--%>
            <%--<div class="invalid-feedback">--%>
                <%--Please provide a valid state.--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="col-md-3 mb-3">--%>
            <%--<label for="validationServer05">Zip</label>--%>
            <%--<input type="text" class="form-control is-invalid" id="validationServer05" placeholder="Zip" required>--%>
            <%--<div class="invalid-feedback">--%>
                <%--Please provide a valid zip.--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--<div class="form-group">--%>
        <%--<div class="form-check">--%>
            <%--<input class="form-check-input is-invalid" type="checkbox" value="" id="invalidCheck3" required>--%>
            <%--<label class="form-check-label" for="invalidCheck3">--%>
                <%--Agree to terms and conditions--%>
            <%--</label>--%>
            <%--<div class="invalid-feedback">--%>
                <%--You must agree before submitting.--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--<button class="btn btn-primary" type="submit">Submit form</button>--%>
<%--</form>--%>




