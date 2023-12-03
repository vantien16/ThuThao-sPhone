<%-- 
    Document   : details
    Created on : Jun 28, 2023, 11:29:33 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Item - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <style>
            .search-button {
                background-color: transparent;
                border: none;
                cursor: pointer;
                padding: 0;
                outline: none;
                display: flex;
                align-items: center;
            }

            .search-icon {
                margin: 5px;
            }
        </style>
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="load">Thu Thảo Store</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="load">Home</a></li>
                            <c:if test="${sessionScope.acc==null}">
                            <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
                            </c:if>
                            <c:if test="${sessionScope.acc!=null}">
                            <li class="nav-item"><a class="nav-link" href="#!">Hello ${sessionScope.acc.fullName}</a></li>
                            </c:if>
                            <c:if test="${sessionScope.acc.roleID=='AD'}">
                            <li class="nav-item"><a class="nav-link" href="loadadmin">Manage</a></li>
                            </c:if>
                            <c:if test="${sessionScope.acc!=null}">
                            <li class="nav-item"><a class="nav-link" href="MainControl?action=Logout">Logout</a></li>
                            </c:if>
                        <!--                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                                                <li class="nav-item dropdown">
                                                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                                                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                        <li><a class="dropdown-item" href="#!">All Products</a></li>
                                                        <li><hr class="dropdown-divider" /></li>
                                                        <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                                                        <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                                                    </ul>
                                                </li>-->
                    </ul>
                    <form action="MainControl" method="get" style="margin-right: 7px;">
                        <div class="input-group">
                            <input type="text" class="form-control search" name="search" placeholder="Search">
                            <button type="submit" name="action"  value="Search" class="search-button">
                                <span class="material-icons search-icon">search</span>
                            </button>
                        </div>
                    </form>
                    <form class="d-flex" action="cart.jsp">
                        <button class="btn btn-outline-dark" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <c:set var="cartItems" value="${sessionScope.cartItems}" />
                            <c:set var="totalQuantity" value="0" />
                            <c:forEach var="item" items="${cartItems}">
                                <c:set var="quantity" value="${item.quantity}" />
                                <c:set var="totalQuantity" value="${totalQuantity + quantity}" />
                            </c:forEach>
                            <span class="badge bg-dark text-white ms-1 rounded-pill">${totalQuantity}</span>
                        </button>
                    </form>
                </div>
            </div>
        </nav>
        <!-- Product section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="${detail.url}" /></div>
                    <div class="col-md-6">
                        <div class="small mb-1">Năm sản xuất: ${detail.manufacturing_year}</div>
                        <h1 class="display-5 fw-bolder">${detail.name}</h1>
                        <div class="fs-5">
                            <fmt:formatNumber value="${detail.price}" pattern="#,##0" var="formattedNumber" />
                            <h3 class=""> ${formattedNumber}</h3>
                            <!--${formattedNumber}-->
                        </div>
                        <p class="lead">${detail.description}</p>
                        <p class="lead">${detail.configuration}</p>
                        <form action="MainControl" method="post">
                            <div class="d-flex">
                                <input class="form-control text-center me-3" id="inputQuantity" name="inputQuantity" type="num" value="1" style="max-width: 3rem" />
                                <button class="btn btn-outline-dark flex-shrink-0" type="submit" name="action" value="Add Details">
                                    <i class="bi-cart-fill me-1"></i>
                                    Add to cart
                                </button>
                                <input type="hidden" name="pid" value="${detail.id}">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- Related items section-->
        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5 mt-5">
                <h2 class="fw-bolder mb-4">Related products</h2>
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <c:forEach items="${listRandom}"  var="x">
                        <div class="col mb-5" onclick="goToDetail('${x.id}')">
                            <div class="card h-100">
                                <!-- Product image-->
                                <img class="card-img-top" src="${x.url}" alt="..." />
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h5 class="fw-bolder">${x.name}</h5>
                                        <!-- Product price-->
                                        <fmt:formatNumber value="${x.price}" pattern="#,##0" var="formattedNumber" />
                                        ${formattedNumber}
                                    </div>
                                </div>
                                <!-- Product actions-->
                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                    <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="MainControl?pid=${x.id}&action=Details">View Details</a></div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>

                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2023</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
    <script>
                            function goToDetail(id) {
                                window.location.href = 'MainControl?pid=' + id + '&action=Details';
                            }
    </script>
</html>

