<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
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
                            <a class="nav-link" href="index.html">Home</a>
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
                            <input type="text" placeholder="Search...">
                        </li>

                    </ul>
                </div>
            </div>
        </nav>


        <br/>
        <br/>
        <br/>

        <!-- Content -->
        <div class="container" id="AdminHome">
            <h2>Welcome to the Administration Home Page</h2>
            <hr>
            <div class="container">

                <h1> Admin Activities </h1>   

                <div class="list-group">
                    <a href="productAdminServlet?action=listProducts" class="list-group-item">Product Administration</a>
                    <a href="userAdminServlet?action=listUsers" class="list-group-item">User Administration</a>
                    <a href="./ProductServlet" class="list-group-item">View Current Products on Sale</a>
                    <a href="adminReports.jsp" class="list-group-item">View Recent Reports</a>
                </div>

            </div>

            <br/>

            <!-- I did an online course on Udemy.com about web dev (The Web Developer's Bootcamp) over the summer and the following code
                  has been taken from my work on that course and adjusted for this project 
                      You can add a new task, delete a task using the trash icon and mark a task as done if you click on the item -->

            <!--
            <div>
                <h2>Admin To-Do list : Add, Delete and mark jobs Done</h2>
    
                <div class="container" id="adminList" style="width:400px; height:300px">
                    <div class="toDo">
                        <h1 class="list">Admin To Do</h1>
                        <input type="text" placeholder="Add New To Do">
                        <ul>
                            <li id="toDoList"><span><i class="fa fa-trash"></i></span>Update User Details </li>
                            <li id="toDoList"><span><i class="fa fa-trash"></i></span>View Reports</li>
                            <li id="toDoList"><span><i class="fa fa-trash"></i></span>VAT Reduction on Products</li>
                        </ul>
                    </div>
                </div>
            </div> -->
        </div>



        <!-- /.container -->




        <script type="text/javascript" src="resources/JS/list.js"></script>
    </body>   

</html>