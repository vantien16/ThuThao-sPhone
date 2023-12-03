<%-- 
    Document   : home
    Created on : Jun 28, 2023, 8:00:12 PM
    Author     : ADMIN
--%>

<%@page import="java.util.List"%>
<%@page import="entity.Cart"%>
<%@page import="entity.Product"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%    List<Product> cartItems = (List<Product>) session.getAttribute("cartItems");
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shopping Cart</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
                <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">

        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">

        <style>
            select.form-control:not([size]):not([multiple]) {
                height: 44px;
            }
            select.form-control {
                padding-right: 38px;
                background-position: center right 17px;
                background-image: url(data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNv…9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K);
                background-repeat: no-repeat;
                background-size: 9px 9px;
            }
            .form-control:not(textarea) {
                height: 44px;
            }
            .form-control {
                padding: 0 18px 3px;
                border: 1px solid #dbe2e8;
                border-radius: 22px;
                background-color: #fff;
                color: #606975;
                font-family: "Maven Pro",Helvetica,Arial,sans-serif;
                font-size: 14px;
                -webkit-appearance: none;
                -moz-appearance: none;
                appearance: none;
            }

            .quantity-button{
                text-align: center;
                width: 30px;
                height: 30px;
                border: 1px solid #dbe2e8;
                border-radius: 22px;
            }



            .shopping-cart,
            .wishlist-table,
            .order-table {
                margin-bottom: 20px
            }

            .shopping-cart .table,
            .wishlist-table .table,
            .order-table .table {
                margin-bottom: 0; 
            }

            .shopping-cart .btn,
            .wishlist-table .btn,
            .order-table .btn {
                margin: 0
            }

            .shopping-cart>table>thead>tr>th,
            .shopping-cart>table>thead>tr>td,
            .shopping-cart>table>tbody>tr>th,
            .shopping-cart>table>tbody>tr>td,
            .wishlist-table>table>thead>tr>th,
            .wishlist-table>table>thead>tr>td,
            .wishlist-table>table>tbody>tr>th,
            .wishlist-table>table>tbody>tr>td,
            .order-table>table>thead>tr>th,
            .order-table>table>thead>tr>td,
            .order-table>table>tbody>tr>th,
            .order-table>table>tbody>tr>td {
                vertical-align: middle !important
            }

            .shopping-cart>table thead th,
            .wishlist-table>table thead th,
            .order-table>table thead th {
                padding-top: 17px;
                padding-bottom: 17px;
                border-width: 1px
            }

            .shopping-cart .remove-from-cart,
            .wishlist-table .remove-from-cart,
            .order-table .remove-from-cart {
                display: inline-block;
                color: #ff5252;
                font-size: 18px;
                line-height: 1;
                text-decoration: none
            }

            .shopping-cart .count-input,
            .wishlist-table .count-input,
            .order-table .count-input {
                display: inline-block;
                width: 100%;
                width: 86px
            }



            .shopping-cart .product-item,
            .wishlist-table .product-item,
            .order-table .product-item {
                display: table;
                width: 100%;
                min-width: 150px;
                margin-top: 5px;
                margin-bottom: 3px
            }

            .shopping-cart .product-item .product-thumb,
            .shopping-cart .product-item .product-info,
            .wishlist-table .product-item .product-thumb,
            .wishlist-table .product-item .product-info,
            .order-table .product-item .product-thumb,
            .order-table .product-item .product-info {
                display: table-cell;
                vertical-align: top
            }

            .shopping-cart .product-item .product-thumb,
            .wishlist-table .product-item .product-thumb,
            .order-table .product-item .product-thumb {
                width: 130px;
                padding-right: 20px
            }

            .shopping-cart .product-item .product-thumb>img,
            .wishlist-table .product-item .product-thumb>img,
            .order-table .product-item .product-thumb>img {
                display: block;
                width: 100%
            }

            @media screen and (max-width: 860px) {
                .shopping-cart .product-item .product-thumb,
                .wishlist-table .product-item .product-thumb,
                .order-table .product-item .product-thumb {
                    display: none
                }
            }

            .shopping-cart .product-item .product-info span,
            .wishlist-table .product-item .product-info span,
            .order-table .product-item .product-info span {
                display: block;
                font-size: 13px
            }

            .shopping-cart .product-item .product-info span>em,
            .wishlist-table .product-item .product-info span>em,
            .order-table .product-item .product-info span>em {
                font-weight: 500;
                font-style: normal
            }

            .shopping-cart .product-item .product-title,
            .wishlist-table .product-item .product-title,
            .order-table .product-item .product-title {
                margin-bottom: 6px;
                padding-top: 5px;
                font-size: 16px;
                font-weight: 500
            }

            .shopping-cart .product-item .product-title>a,
            .wishlist-table .product-item .product-title>a,
            .order-table .product-item .product-title>a {
                transition: color .3s;
                color: #374250;
                line-height: 1.5;
                text-decoration: none
            }

            .shopping-cart .product-item .product-title>a:hover,
            .wishlist-table .product-item .product-title>a:hover,
            .order-table .product-item .product-title>a:hover {
                color: #0da9ef
            }

            .shopping-cart .product-item .product-title small,
            .wishlist-table .product-item .product-title small,
            .order-table .product-item .product-title small {
                display: inline;
                margin-left: 6px;
                font-weight: 500
            }

            .wishlist-table .product-item .product-thumb {
                display: table-cell !important
            }

            @media screen and (max-width: 576px) {
                .wishlist-table .product-item .product-thumb {
                    display: none !important
                }
            }

            .shopping-cart-footer {
                display: table;
                width: 100%;
                padding: 10px 0;
                border-top: 1px solid #e1e7ec
            }

            .shopping-cart-footer>.column {
                display: table-cell;
                padding: 5px 0;
                vertical-align: middle
            }

            .shopping-cart-footer>.column:last-child {
                text-align: right
            }

            .shopping-cart-footer>.column:last-child .btn {
                margin-right: 0;
                margin-left: 15px
            }

            @media (max-width: 768px) {
                .shopping-cart-footer>.column {
                    display: block;
                    width: 100%
                }
                .shopping-cart-footer>.column:last-child {
                    text-align: center
                }
                .shopping-cart-footer>.column .btn {
                    width: 100%;
                    margin: 12px 0 !important
                }
            }

            .coupon-form .form-control {
                display: inline-block;
                width: 100%;
                max-width: 235px;
                margin-right: 12px;
            }

            .form-control-sm:not(textarea) {
                height: 36px;
            }
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

            .search{
                height: 4px;
                /*                height: 4px;*/
            }
            body {
                min-height: 100vh;
                display: flex;
                flex-direction: column;  }
            footer {
                margin-top: auto;
            }
            /* Modal styles */
            .modal .modal-dialog {
                max-width: 400px;
                color: #566787;
                /*background: #f5f5f5;*/
                font-family: 'Varela Round', sans-serif;
                font-size: 13px;
            }
            .modal .modal-header, .modal .modal-body, .modal .modal-footer {
                padding: 20px 30px;
            }
            .modal .modal-content {
                border-radius: 3px;
                font-size: 14px;
            }
            .modal .modal-footer {
                background: #ecf0f1;
                border-radius: 0 0 3px 3px;
            }
            .modal .modal-title {
                display: inline-block;
            }
            .modal .form-control {
                border-radius: 2px;
                box-shadow: none;
                border-color: #dddddd;
            }
            .modal textarea.form-control {
                resize: vertical;
            }
            .modal .btn {
                border-radius: 2px;
                min-width: 100px;
            }	
            .modal form label {
                font-weight: normal;
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
                    </ul>
                    <form action="MainControl" method="get" style="margin-right: 7px;">
                        <div class="input-group ">
                            <input type="text" class="form-control " name="search" placeholder="Search">
                            <button type="submit" name="action"  value="Search" class="search-button">
                                <span class="material-icons search-icon">search</span>
                            </button>
                        </div>
                    </form>
                    <form class="d-flex">
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
        <!-- Header-->
        <h1 style="text-align: center; margin: 40px; font-weight: bold">Shopping Cart</h1>
        <c:if test="${empty sessionScope.cartItems}">
            <h3 style="text-align: center">Your shopping cart is empty. Choose from a few items in our shop.</h3>
        </c:if>
        <c:if test="${not empty sessionScope.cartItems}">
            <div class="container padding-bottom-3x mb-1">
                <!-- Shopping Cart-->
                <div class="table-responsive shopping-cart">
                    <table class="table">
                        <thead>
                            <tr>
                                <th class="text-center">Phone Name</th>
                                <th class="text-center">Quantity</th>
                                <th class="text-center">Discount</th>
                                <th class="text-center">Subtotal</th>
                                <th class="text-center"><a class="btn btn-sm btn-outline-danger" href="MainControl?action=Clear">Clear Cart</a></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:set var="total" value="0"/>
                            <c:forEach var="x" items="${cartItems}">
                                <tr>
                                    <td>
                                        <div class="product-item">
                                            <a class="product-thumb" href="MainControl?pid=${x.id}&action=Details"><img src="${x.url}" alt="Product"></a>
                                            <div class="product-info">
                                                <h4 class="product-title"><a href="MainControl?pid=${x.id}&action=Details">${x.name}</a></h4><span><em>${x.description}</em></span>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-center">
                                        <form action="MainControl" method="post">
                                            <div class="count-input" style="width: 100px">
                                                <input type="hidden" name="pid" value="${x.id}" />
                                                <button class="quantity-button" type="submit" value="Decrease" name="action">-</button>
                                                <span class="quantity-number">${x.quantity}</span>
                                                <button class="quantity-button" type="submit" value="Increase" name="action">+</button>
                                            </div>
                                        </form>
                                    </td>

                                    <td class="text-center text-lg text-medium">0</td>
                                    <fmt:formatNumber value="${x.price*x.quantity}" pattern="#,##0" var="formattedNumber" />
                                    <td class="text-center text-lg text-medium">${formattedNumber}</td>
                                    <td class="text-center"><a class="remove-from-cart" href="MainControl?pid=${x.id}&action=Remove" data-toggle="tooltip" title="" data-original-title="Remove item"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <c:set var="subtotal" value="${x.price * x.quantity}"/>
                                <c:set var="total" value="${total + subtotal}"/>
                                <!--</form>-->
                            </c:forEach>

                        </tbody>
                    </table>
                </div>
                <div class="shopping-cart-footer">
                    <!--                    <div class="column">
                                            <form class="coupon-form" method="post">
                                                <input class="form-control form-control-sm" type="text" placeholder="Coupon code" required="">
                                                <button class="btn btn-outline-primary btn-sm" type="submit">Apply Coupon</button>
                                            </form>
                                        </div>-->
                    <fmt:formatNumber value="${total}" pattern="#,##0" var="formattedTotal" />
                    <div class="column text-lg">Subtotal: <span class="text-medium">${formattedTotal}</span></div>
                </div>
                <div class="shopping-cart-footer">
                    <div class="column"><a class="btn btn-outline-secondary" href="load"><i class="icon-arrow-left"></i>&nbsp;Back to Shopping</a></div>
                    <div class="column">
                        <a class="btn btn-primary" href="cart.jsp" data-toast="" data-toast-type="success" data-toast-position="topRight" data-toast-icon="icon-circle-check" data-toast-title="Your cart" data-toast-message="is updated successfully!">Update Cart</a>
                        <!--<a class="btn btn-success" href="#">Checkout</a>-->
                        <a href="#checkOutModal" class="btn btn-success" data-toggle="modal"  ><span>Checkout</span></a>

                    </div>
                </div>
            </div>


        </c:if>
        <div id="checkOutModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="MainControl" method="post">

                        <div class="modal-header">						
                            <h4 class="modal-title">Checkout</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">	
                            <div class="form-group">
                                <label>Full Name</label>
                                <input type="text" class="form-control" name="fullName" required>
                            </div>

                            <div class="form-group">
                                <label>Phone</label>
                                <input type="text" class="form-control" name="phone" required>
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <input type="text" class="form-control" name="address" required>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input class="form-control" name="email" required>
                            </div>					
                            <div class="form-group">
                                <label>Payment method</label>
                                <input class="form-control" value="Payment on receipt" readonly="">
                            </div>					
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" name="action" class="btn btn-success" value="Checkout" data-dismiss="false">
                        </div>
                    </form>
                </div>
            </div>
        </div>
            <%--Error--%>
            <div id="errorModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Message</h4>
                        </div>
                        <div class="modal-body">
                            <p id="error-message"></p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal" id="okButton">OK</button>
                        </div>
                    </div>
                </div>
            </div>
        <!-- Footer-->
        <footer  class="py-5 bg-dark footer">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2023</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>


        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
    <% String errorMessage = (String) request.getAttribute("errorMessage");
        if (errorMessage != null && !errorMessage.isEmpty()) {%>
    <script>

        $(document).ready(function () {
            var errorMessage = "<%= errorMessage%>";
            if (errorMessage) {
                $('#error-message').text(errorMessage);
                $('#errorModal').modal('show');
            }
        });

        $('#errorModal').on('hidden.bs.modal', function () {
            window.location.href = 'cart.jsp';
        });
        $('#okButton').click(function () {
            $('#errorModal').modal('hide');
            window.location.href = 'cart.jsp';
        });

    </script>
    <% }%>
</html>
