
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.shop.model.Product"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>      

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <!-- Bootstrap core CSS -->
        <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom style sheet -->
        <link href="custom.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/heroic-features.css" rel="stylesheet">

        <link href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" rel="stylesheet">

        <title>Toys4Us Trading</title>

    </head>    

    <body>

        <!-- Nav Bar -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">
                    <img src="resources/images/newLogo.png" alt="logo" style="display:inline-block;" height="60" width="90">
                    <span style="display: inline-block;">Toys4Us</span>
                </a>


                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./ProductServlet">Shop</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="aboutUs.jsp">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.jsp">Contact</a>
                        </li>
                        <li class="nav-item active">
                            <c:if test="${empty SKUSER.firstName}">
                                <a class="nav-link" href="login.jsp">Login <i class="fas fa-user-plus"></i></a>
                                </c:if>
                                <c:if test="${not empty SKUSER.firstName}">
                                <a class="nav-link" href="login.jsp">Hi ${SKUSER.firstName}!</a>
                            </c:if>
                        </li> 
                        <li class="nav-item">
                            <a class="nav-link" href="LoginServlet?action=logout">Log Out</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="cart.jsp">View Basket  <i class="fas fa-shopping-basket"></i></a>
                        </li>
                        <li class='nav-item'>
                            <form action ="/SearchServlet" method="POST">
                                <input type="text" placeholder="Search...">
                            </form>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>

        <br/>
        <br/>
        <br/>


        <!-- Page Content -->
        <div class="container bg-light">

            <div class="row">

                <div class="col-lg-12" style="">

                    <h1 class="my-4">Add New Product</h1>



                    <div class="row">
                        <c:url value="/productAdminServlet" var="insertProductUrl">
                            <c:param name="action" value="insertProduct"/>
                        </c:url>

                        <form action="${insertProductUrl}" method="POST">

                            <div class="form-group row">
                                <label for="productCode" class="col-4 col-form-label">Product Code: </label> 
                                <div class="col-8">
                                    <input id="prodCode" name="productCode" type="text" class="form-control" required="required">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="productName" class="col-4 col-form-label">Product Name: </label> 
                                <div class="col-8">
                                    <input id="prodName" name="productName" type="text" class="form-control" required="required">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="productDescription" class="col-4 col-form-label">Product Description: </label> 
                                <div class="col-8">
                                    <input id="prodDescr" name="productDescription" type="text" class="form-control" required="required">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="brandName" class="col-4 col-form-label">Brand Name: </label> 
                                <div class="col-8">
                                    <input id="brandName" name="brandName" type="text" class="form-control" required="required">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="price" class="col-4 col-form-label">Price: </label> 
                                <div class="col-8">
                                    <input id="price" name="price" type="text" class="form-control" required="required">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="colour" class="col-4 col-form-label">Colour: </label> 
                                <div class="col-8">
                                    <input id="colour" name="colour" type="text" class="form-control" required="required">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="animalType" class="col-4 col-form-label">Animal Type: </label> 
                                <div class="col-8">
                                    <input id="animalType" name="animalType" type="text" class="form-control" required="required">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="productImage" class="col-4 col-form-label">Product Image: </label> 
                                <div class="col-8">
                                    <input id="prodImage" name="productImage" type="text" class="form-control" required="required">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="category" class="col-4 col-form-label">Category: </label> 
                                <div class="col-8">
                                                                        
                                        <input type="radio" id="bears" name="category" value="Teddy Bears">
                                        <label for="bears">Teddy Bears</label>
                                        <br>
                                        <input type="radio" id="animals" name="category" value="Animals">
                                        <label for="bears">Animals</label>
                                        <br>
                                        <input type="radio" id="brands" name="category" value="Branded Teddies">
                                        <label for="bears">Branded Teddies</label>
                                        <br>
                                </div>
                            </div>



                            <div class="form-group row">
                                <div class="offset-4 col-8">
                                    <button name="submit" type="submit" class="btnAddProduct">Submit</button>
                                </div>
                            </div>
                        </form> 
                    </div>
                </div>
            </div>
        </div>




        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/popper/popper.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    </body>
</html>
