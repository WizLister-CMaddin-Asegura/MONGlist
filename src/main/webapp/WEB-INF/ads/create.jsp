<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar-createAd.jsp" />
    <div class="container">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <div class="form-group">
                <label for="category_id">Select Ad Category</label>
                <select class="form-control" id="category_id" name="category_id">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
            </div>


            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label for="expected_price">Set Price</label>
                    <span class="input-group-text">$</span>
                    <span class="input-group-text">0.00</span>
                </div>
                <input name="expected_price" id="expected_price" type="text" class="form-control" aria-label="Amount (to the nearest dollar)">
            </div>




            <input type="submit" class="btn btn-block btn-primary">
            <br>
            <br>
        </form>
    </div>
</body>
</html>
<%--ADD FIELDS FOR FORM REFER TO create.jsp--%>