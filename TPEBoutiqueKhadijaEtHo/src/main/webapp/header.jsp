<%-- 
    Document   : header
    Created on : Apr 14, 2023, 7:43:31 AM
    Author     : isi
--%>

<%@page import="Model.Entity.Panier"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Entity.Livre"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="head.jsp" %>
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!">Ho&Khadija</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="login.jsp">Login</a></li>
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="inscription.jsp">Sign up</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" style="color: black" id="navbarDropdown" href="productServlet" role="button" data-bs-toggle="dropdown" aria-expanded="false">Categorie</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <!--<li><hr class="dropdown-divider" /></li>-->
                                <li><a class="dropdown-item" href="productServlet">Tous</a></li>
                                <li><a class="dropdown-item" href="productServlet?action=eco123">Economique</a></li>
                                <li><a class="dropdown-item" href="productServlet?action=litt123">Litterature</a></li>
                                <li><a class="dropdown-item" href="productServlet?action=philos123">Philosophie</a></li>
                                <li><a class="dropdown-item" href="productServlet?action=hist123">Histoire</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="d-flex" method="" action="">
                        <button class="btn btn-outline-dark" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            <a href="panier.jsp" style="color: gold; text-decoration : none;">Panier</a>
                            <span class="badge bg-dark text-white ms-1 rounded-pill">${panier_list.size()}</span>
                            
                        </button>
                    </form>
                </div>
            </div>
        </nav>
        <!-- Header-->
        <header>
            <div>
                <img src="img/bonLivre.jpg" alt="bonLivre" width="1350px" height="450px">
            </div>
            <!--            <div class="container px-4 px-lg-5 my-5">
                            <div class="text-center text-white">
                                <h1 class="display-4 fw-bolder">Shop in style</h1>
                                <p class="lead fw-normal text-white-50 mb-0">With this shop hompeage template</p>
                            </div>
                        </div>-->
        </header>
    </body>
</html>
