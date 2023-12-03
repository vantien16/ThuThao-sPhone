<%-- 
    Document   : home
    Created on : Jun 28, 2023, 8:00:12 PM
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
        <title>Admin Page</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />

        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">-->
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">-->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <style>
            .all {
                color: #566787;
                background: #f5f5f5;
                font-family: 'Varela Round', sans-serif;
                font-size: 13px;
            }
            .table-responsive {
                margin: 30px 0;
            }
            .table-wrapper {
                background: #fff;
                padding: 20px 25px;
                border-radius: 3px;
                min-width: 1000px;
                box-shadow: 0 1px 1px rgba(0,0,0,.05);
            }
            .table-title {        
                padding-bottom: 15px;
                background: #435d7d;
                color: #fff;
                padding: 16px 30px;
                min-width: 100%;
                margin: -20px -25px 10px;
                border-radius: 3px 3px 0 0;
            }
            .table-title h2 {
                margin: 5px 0 0;
                font-size: 24px;
            }
            .table-title .btn-group {
                float: right;
            }
            .table-title .btn {
                color: #fff;
                float: right;
                font-size: 13px;
                border: none;
                min-width: 50px;
                border-radius: 2px;
                border: none;
                outline: none !important;
                margin-left: 10px;
            }
            .table-title .btn i {
                float: left;
                font-size: 21px;
                margin-right: 5px;
            }
            .table-title .btn span {
                float: left;
                margin-top: 2px;
            }
            table.table tr th, table.table tr td {
                border-color: #e9e9e9;
                padding: 12px 15px;
                vertical-align: middle;
            }
            table.table tr th:first-child {
                width: 60px;
            }
            table.table tr th:last-child {
                width: 100px;
            }
            table.table-striped tbody tr:nth-of-type(odd) {
                background-color: #fcfcfc;
            }
            table.table-striped.table-hover tbody tr:hover {
                background: #f5f5f5;
            }
            table.table th i {
                font-size: 13px;
                margin: 0 5px;
                cursor: pointer;
            }	
            table.table td:last-child i {
                opacity: 0.9;
                font-size: 22px;
                margin: 0 5px;
            }
            table.table td a {
                font-weight: bold;
                color: #566787;
                display: inline-block;
                text-decoration: none;
                outline: none !important;
            }
            table.table td a:hover {
                color: #2196F3;
            }
            table.table td a.edit {
                color: #FFC107;
            }
            table.table td a.delete {
                color: #F44336;
            }
            table.table td i {
                font-size: 19px;
            }
            table.table .avatar {
                border-radius: 50%;
                vertical-align: middle;
                margin-right: 10px;
            }
            .pagination {
                float: right;
                margin: 0 0 5px;
            }
            .pagination li a {
                border: none;
                font-size: 13px;
                min-width: 30px;
                min-height: 30px;
                color: #999;
                margin: 0 2px;
                line-height: 30px;
                border-radius: 2px !important;
                text-align: center;
                padding: 0 6px;
            }
            .pagination li a:hover {
                color: #666;
            }	
            .pagination li.active a, .pagination li.active a.page-link {
                background: #03A9F4;
            }
            .pagination li.active a:hover {        
                background: #0397d6;
            }
            .pagination li.disabled i {
                color: #ccc;
            }
            .pagination li i {
                font-size: 16px;
                padding-top: 6px
            }
            .hint-text {
                float: left;
                margin-top: 10px;
                font-size: 13px;
            }    
            /* Custom checkbox */
            .custom-checkbox {
                position: relative;
            }
            .custom-checkbox input[type="checkbox"] {    
                opacity: 0;
                position: absolute;
                margin: 5px 0 0 3px;
                z-index: 9;
            }
            .custom-checkbox label:before{
                width: 18px;
                height: 18px;
            }
            .custom-checkbox label:before {
                content: '';
                margin-right: 10px;
                display: inline-block;
                vertical-align: text-top;
                background: white;
                border: 1px solid #bbb;
                border-radius: 2px;
                box-sizing: border-box;
                z-index: 2;
            }
            .custom-checkbox input[type="checkbox"]:checked + label:after {
                content: '';
                position: absolute;
                left: 6px;
                top: 3px;
                width: 6px;
                height: 11px;
                border: solid #000;
                border-width: 0 3px 3px 0;
                transform: inherit;
                z-index: 3;
                transform: rotateZ(45deg);
            }
            .custom-checkbox input[type="checkbox"]:checked + label:before {
                border-color: #03A9F4;
                background: #03A9F4;
            }
            .custom-checkbox input[type="checkbox"]:checked + label:after {
                border-color: #fff;
            }
            .custom-checkbox input[type="checkbox"]:disabled + label:before {
                color: #b8b8b8;
                cursor: auto;
                box-shadow: none;
                background: #ddd;
            }
            /* Modal styles */
            .modal .modal-dialog {
                max-width: 400px;
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

            .fixed-table {
                table-layout: fixed;
                width: 100%;
            }
            /*fix bảnghu*/
            .fixed-table th,
            .fixed-table td {
                overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;
            }
            /*            footer {
                            position: fixed;
                            left: 0;
                            bottom: 0;
                            width: 100%;
                        }*/
            .search:focus{
                outline: none !important;
                box-shadow: none !important;
                border-color: #ced4da !important;
            }
            .mau{
                background-color: whitesmoke;
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

            body {
                min-height: 100vh;
                display: flex;
                flex-direction: column;  }
            footer {
                margin-top: auto;
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
                        <div class="input-group">
                            <input type="text" class="form-control search" name="search" placeholder="Search">
                            <button type="submit" name="action"  value="SearchAD" class="search-button">
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
        <div class="all">
            <!-- Header-->
            <div class="container-xl">
                <div class="table-responsive">
                    <div class="table-wrapper">
                        <div class="table-title">
                            <div class="row">
                                <div class="col-sm-6">
                                    <h2>Manage <b>Employees</b></h2>
                                </div>
                                <div class="col-sm-6">
                                    <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"  ><i class="material-icons">&#xE147;</i> <span>Add New Account</span></a>
                                    <!--<a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>-->						
                                </div>
                            </div>
                        </div>
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>

                                    <th>UserID</th>
                                    <th>Password</th>
                                    <th>Full Name</th>
                                    <th>RoleID</th>
                                    <th>Status</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${listA}" var="x">
                                    <tr>
                                        <td>${x.userID}</td>
                                        <td>${x.password}</td>
                                        <td>${x.fullName}</td>
                                        <td>${x.roleID}</td>
                                        <td>${x.status}</td>
                                        <td>
                                            <a href="#editEmployeeModal" class="edit" data-toggle="modal" onclick="setEditModalData('${x.userID}', '${x.password}', '${x.fullName}', '${x.roleID}')">
                                                <i class="material-icons" data-toggle="tooltip"  title="Edit">&#xE254;</i>
                                            </a>

                                            <!--<a href="#editEmployeeModal" class="edit" data-toggle="modal" onclick="setEditModalData('${x.userID}')"><i class="material-icons" data-toggle="tooltip"  title="Edit">&#xE254;</i></a>-->
                                            <a href="#deleteEmployeeModal" class="delete" data-toggle="modal" onclick="setDeleteModalData('${x.userID}')"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                        </td>
                                    </tr>
                                </c:forEach>

                            </tbody>
                        </table>

                    </div>
                </div>  
                <%--phone--%>

                <div class="table-responsive">
                    <div class="table-wrapper">
                        <div class="table-title">
                            <div class="row">
                                <div class="col-sm-6">
                                    <h2>Manage <b>Phones</b></h2>
                                </div>
                                <div class="col-sm-6">
                                    <a href="#addPhoneModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Phone</span></a>
                                </div>
                            </div>
                        </div>
                        <table class="table table-striped table-hover fixed-table">
                            <thead>
                                <tr>

                                    <th>ID</th>
                                    <th>Phone Name</th>
                                    <th>Description</th>
                                    <th>Configuration</th>
                                    <th>Manufacturing Year</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>URL</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${listP}" var="x">
                                    <tr>
                                        <td>${x.id}</td>
                                        <td>${x.name}</td>
                                        <td>${x.description}</td>
                                        <td>${x.configuration}</td>
                                        <td>${x.manufacturing_year}</td>
                                        <td>
                                            <fmt:formatNumber value="${x.price}" pattern="#,##0" var="formattedNumber" />
                                            <fmt:formatNumber value="${x.price}" pattern="###" var="formatted2Number" />
                                            ${formattedNumber}</td>
                                        <td>${x.quantity}</td>
                                        <td>${x.url}</td>
                                        <td>
                                            <a href="#editPhoneModal" class="edit" data-toggle="modal" onclick="setEditPhoneModalData('${x.id}', '${x.name}', '${x.description}', '${x.configuration}', '${x.manufacturing_year}', '${formatted2Number}', '${x.quantity}', '${x.url}')">
                                                <i class="material-icons" data-toggle="tooltip"  title="Edit">&#xE254;</i>
                                            </a>
                                            <a href="#deletePhoneModal" class="delete" data-toggle="modal" onclick="setDeletePhoneModalData('${x.id}')"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                        </td>
                                    </tr>
                                </c:forEach>

                            </tbody>
                        </table>

                    </div>
                </div> 
            </div>

            <%--Account--%>
            <div id="addEmployeeModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="MainControl" method="post">

                            <div class="modal-header">						
                                <h4 class="modal-title">Add Account</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">	
                                <div class="form-group">
                                    <label>User ID</label>
                                    <input type="text" class="form-control" name="userID" required>
                                </div>

                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="password" class="form-control" name="password" required>
                                </div>
                                <div class="form-group">
                                    <label>Confirm Password</label>
                                    <input type="password" class="form-control" name="repassword" required>
                                </div>
                                <div class="form-group">
                                    <label>Full Name</label>
                                    <input class="form-control" name="fullName" required>
                                </div>
                                <div class="form-group">
                                    <label>Role ID</label>
                                    <select name="roleID" class="form-control" required="">
                                        <option value="US" >US</option>
                                        <option value="AD" >AD</option>
                                    </select>
                                    <!--<input type="text" class="form-control" required>-->
                                </div>					
                            </div>
                            <div class="modal-footer">
                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                <input type="submit" name="action" class="btn btn-success" value="Add" data-dismiss="false">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- Edit Modal HTML -->
            <div id="editEmployeeModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="MainControl" method="post" id="editForm">
                            <div class="modal-header">						
                                <h4 class="modal-title">Edit Account</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">					
                                <div class="form-group">
                                    <label>UserID</label>
                                    <input type="text" class="form-control" name="userID" value="${st.userID}" readonly="">
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="password" class="form-control" name="password" value="${st.password}"  required>
                                </div>
                                <div class="form-group">
                                    <label>Full Name</label>
                                    <input type="text" class="form-control" name="fullName" value="${st.fullName}"  required>
                                </div>
                                <div class="form-group">
                                    <label>Role ID</label>
                                    <input type="text" class="form-control" name="roleID" value="${st.roleID}"  required>
                                </div>					

                            </div>
                            <div class="modal-footer">
                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                <input type="submit" name="action" class="btn btn-info" value="Save">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- Delete Modal HTML -->
            <div id="deleteEmployeeModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="MainControl" method="post" id="deleteForm">
                            <div class="modal-header">						
                                <h4 class="modal-title">Delete Account</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">					
                                <p>Are you sure you want to delete these Records?</p>
                                <p class="text-warning"><small>This action cannot be undone.</small></p>
                            </div>
                            <div class="modal-footer">
                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                <input type="submit" name="action" class="btn btn-danger" value="Delete">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <%--Account--%>






            <%--Phone--%>
            <div id="addPhoneModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="MainControl" method="post">

                            <div class="modal-header">						
                                <h4 class="modal-title">Add Phone</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">	
                                <div class="form-group">
                                    <label>ID</label>
                                    <input type="text" class="form-control" name="id" required>
                                </div>
                                <div class="form-group">
                                    <label>Phone Name</label>
                                    <input type="text" class="form-control" name="name" required>
                                </div>
                                <div class="form-group">
                                    <label>Description</label>
                                    <input type="text" class="form-control" name="description" required>
                                </div>
                                <div class="form-group">
                                    <label>Configuration</label>
                                    <input type="text" class="form-control" name="configuration" required>
                                </div>
                                <div class="form-group">
                                    <label>Manufacturing Year</label>
                                    <input type="text" class="form-control" name="manufacturing_year" required>
                                </div>					
                                <div class="form-group">
                                    <label>Price</label>
                                    <input type="text" class="form-control" name="price" required>
                                </div>					
                                <div class="form-group">
                                    <label>Quantity</label>
                                    <input type="text" class="form-control" name="quantity" required>
                                </div>					
                                <div class="form-group">
                                    <label>URL(Image must be 600x600)</label>
                                    <input type="text" class="form-control" name="url" required>
                                </div>					
                            </div>
                            <div class="modal-footer">
                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                <input type="submit" name="action" class="btn btn-success" value="Add Phone">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- Edit Modal HTML -->
            <div id="editPhoneModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="MainControl" method="post" id="editPhoneForm">
                            <div class="modal-header">						
                                <h4 class="modal-title">Edit Phone</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">					
                                <div class="form-group">
                                    <label>ID</label>
                                    <input type="text" class="form-control" name="id" value="${st.id}" readonly="">
                                </div>
                                <div class="form-group">
                                    <label>Phone Name</label>
                                    <input type="text" class="form-control" name="name" value="${st.name}"  required>
                                </div>
                                <div class="form-group">
                                    <label>Full Name</label>
                                    <input type="text" class="form-control" name="description" value="${st.description}"  required>
                                </div>
                                <div class="form-group">
                                    <label>Configuration</label>
                                    <input type="text" class="form-control" name="configuration" value="${st.configuration}"  required>
                                </div>					
                                <div class="form-group">
                                    <label>Manufacturing Year</label>
                                    <input type="text" class="form-control" name="manufacturing_year" value="${st.manufacturing_year}"  required>
                                </div>					
                                <div class="form-group">
                                    <label>Price</label>
                                    <input type="text" class="form-control" name="price" value="${st.price}"  required>
                                </div>					
                                <div class="form-group">
                                    <label>Quantity</label>
                                    <input type="text" class="form-control" name="quantity" value="${st.quantity}"  required>
                                </div>					
                                <div class="form-group">
                                    <label>URL</label>
                                    <input type="text" class="form-control" name="url" value="${st.quantity}"  required>
                                </div>					

                            </div>
                            <div class="modal-footer">
                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                <input type="submit" name="action" class="btn btn-info" value="Save">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- Delete Modal HTML -->
            <div id="deletePhoneModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="MainControl" method="post" id="deletePhoneForm">
                            <div class="modal-header">						
                                <h4 class="modal-title">Delete Phone</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">					
                                <p>Are you sure you want to delete these Records?</p>
                                <p class="text-warning"><small>This action cannot be undone.</small></p>
                            </div>
                            <div class="modal-footer">
                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                <input type="submit" name="action" class="btn btn-danger" value="Delete">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <%--Phone--%>

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

        </div>
        <!-- Footer-->
        <footer style="margin-bottom: 0px" class="py-5 bg-dark footer" >
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2023</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>

        <script>
//                                                function setEditModalData(userID) {
//                                                    var editForm = document.getElementById("editForm");
//                                                    editForm.action = "MainControl?aid=" + userID + "&action=Update Account";
//                                                }
                                                function setEditModalData(userID, password, fullName, roleID) {
                                                    document.getElementById('editForm').userID.value = userID;
                                                    document.getElementById('editForm').password.value = password;
                                                    document.getElementById('editForm').fullName.value = fullName;
                                                    document.getElementById('editForm').roleID.value = roleID;
                                                    var editForm = document.getElementById("editForm");
                                                    editForm.action = "MainControl?aid=" + userID + "&action=Update Account";
                                                }

        </script>

        <script>
//                                                function setEditModalData(userID) {
//                                                    var editForm = document.getElementById("editForm");
//                                                    editForm.action = "MainControl?aid=" + userID + "&action=Update Account";
//                                                }
            function setEditPhoneModalData(id, name, des, con, manu, price, quantity, url) {
                document.getElementById('editPhoneForm').id.value = id;
                document.getElementById('editPhoneForm').name.value = name;
                document.getElementById('editPhoneForm').description.value = des;
                document.getElementById('editPhoneForm').configuration.value = con;
                document.getElementById('editPhoneForm').manufacturing_year.value = manu;
                document.getElementById('editPhoneForm').price.value = price;
                document.getElementById('editPhoneForm').quantity.value = quantity;
                document.getElementById('editPhoneForm').url.value = url;
                var editForm = document.getElementById("editPhoneForm");
                editForm.action = "MainControl?pid=" + id + "&action=Update Phone";
            }

        </script>


        <script>
            function setDeleteModalData(recordId) {
                var deleteForm = document.getElementById("deleteForm");
                deleteForm.action = "MainControl?aid=" + recordId + "&action=Delete Account";
            }
        </script>

        <script>
            function setDeletePhoneModalData(recordId) {
                var deleteForm = document.getElementById("deletePhoneForm");
                deleteForm.action = "MainControl?pid=" + recordId + "&action=Delete Phone";
            }
        </script>






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
            window.location.href = 'loadadmin';
        });
        $('#okButton').click(function () {
            $('#errorModal').modal('hide');
            window.location.href = 'loadadmin';
        });

    </script>
    <% }%>


</html>
