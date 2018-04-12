<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to OUR site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1>Welcome to the MONGlist!</h1>

        <h1>Where your ad sits A-Mong the Best!</h1>
    </div>

    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="https://4.bp.blogspot.com/-pLVUub-9ijk/TVwYfTsYzHI/AAAAAAAAisQ/fwCrsr8NXq4/s640/9%2BFrans%2BSnyders%2B%2528Flemish%2Bartist%252C%2B1579-1657%2529%2BFruit%2BStall%2B1618.jpg" alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="https://1.bp.blogspot.com/-_nHnS0sEdJ8/UQsfRfo2zSI/AAAAAAABX90/CWzZBEZHygE/s640/2market%2BFrans%2BSnyders%2B%2528Dutch%2Bartist%252C%2B1579-1657%2529%2BThe%2BFish%2BMonger.jpg" alt="Second slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="https://2.bp.blogspot.com/-A0eMx7q8fLA/UQse7xWRpZI/AAAAAAABX9c/rJg8V9K3HWU/s1600/2market%2BFrans%2BSnyders%2B%2528Dutch%2Bartist%252C%2B1579-1657%2529%2BA%2BFishmonger.jpg" alt="Third slide">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>


    <%--${headerValues.setAttribute("currentpage", pagename);}--%>
</body>
</html>
