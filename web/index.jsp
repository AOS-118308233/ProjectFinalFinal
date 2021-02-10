<%-- 
    Document   : index.jsp
    Created on : 7 Feb 2021, 19:28:27
    Author     : aoife
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">


    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Toys4Us Trading</title>

        <!-- Bootstrap core CSS -->
        <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom style sheet -->
        <link href="custom.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/heroic-features.css" rel="stylesheet">

        <!-- Icons -->
        <link href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" rel="stylesheet">



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
                        <li class="nav-item active">
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
                            <a class="nav-link" href="login.jsp">Login <i class="fas fa-user-plus"></i></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="cart.jsp">View Basket  <i class="fas fa-shopping-basket"></i></a>
                        </li>
                        <li class='nav-item'>
                            <form action ="/SearchServlet" method="POST">
                                <input type="text" placeholder="Search...">
                            </form>
                        </li>
                        <li class="nav-item">
                            <c:url value="application.jsp" var="engURL">
                                <c:param name="locale" value="en_US"/>
                            </c:url>
                            
                            <a href="${engURL}">
                                <img src="resources/images/englishFlag.jpg" alt="engFlag" height="30" width="30"/>
                            </a>
                                
                            <c:url value="application.jsp" var="frURL">
                                <c:param name="locale" value="fr_Fr"/>
                            </c:url>
                            <a href="${frURL}">
                                <img src="resources/images/frenchFlag.jpg" alt="frFlag" height="30" width="30"/></a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <br/>
      4   
        <!-- Page Content -->
        <div class="container">
            <!-- Jumbotron Header -->
            <header class="jumbotron my-4">
                <h1 class="display-3 text-center">Welcome to Toys4Us where we have toys for every generation!</h1>
                <br/>
                <h2>We have all your favourite Teddies back in stock</h2>
                <br/>
                <a class="btnShopNow" href="./ProductServlet">Shop Now!</a>
                <br/>
                <br/>
                <img src="resources/images/landingPage.jpg" alt="logo" height="500" width="900">
                <br/>
            </header> 

        </div>

        <!-- /.container -->

        <!-- Footer -->
        <footer class="py-5 bg-dark" id="footer">
            <div class="container">
                <!-- First Line -->
                <a class="privacy" style="float:left" href="links.html">Privacy Policy</a>
                <a class="language" style="float:right" href="links.html">Language | English | French | German |</a>
                <br/>
                <!-- Second Line -->
                <a class="Cookies" style="float:left" href="links.jsp">Cookies</a>
                <a class="currency" style="float:right" href="links.jsp">Currency| ? | £ | $ |</a>
                <br>
                <!-- Third Line --> 
                <a class="delivery" style="float:left" href="links.jsp">Delivery and Returns</a>
                <br/>
                <center>
                    <a class="fab fa-facebook-square fa-2x" href='links.jsp'></a>
                    <a class="fab fa-instagram-square fa-2x" href='links.jsp'></a>
                    <a class="fab fa-twitter-square fa-2x" href='links.jsp'></a>
                    <br/>
                    <p class="m-0 text-center text-white">Copyright &copy; Toys4Us</p></center>
            </div>
            <!-- /.container -->
        </footer>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/popper/popper.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    </body>

</html>