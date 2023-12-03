<%-- 
    Document   : Update
    Created on : May 18, 2023, 9:44:02 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
                <link rel="stylesheet" type="text/css" href="style2.css">

    </head>
    <body>
        <div class="to">
            <div id="wrapper">
                <form action="update" method="post" id="form-login">
                    <h1 class="form-heading">Update</h1>
                    <div class="form-group">
                        <i class="far fa-user"></i>
                         <input type="text" name="userID" class="form-input" value="${st.userID} "readonly>
                    </div>
                    <div class="form-group">
                        <i class="fas fa-key"></i>
                         <input type="password" name="password" class="form-input" value="${st.password}" required>
                        <div id="eye">
                            <i class="far fa-eye"></i>
                        </div>
                    </div>
                    <div class="form-group">
                        <i class="far fa-user"></i>
                        <input type="text" name="fullName" class="form-input" value="${st.fullName}" required>
                    </div>
                    <div class="form-group">
                        <i class="far fa-user"></i>
                        <input type="text" name="role" class="form-input" value="${st.roleID}" required>
                    </div>
                    <input type="submit" value="Update" class="form-submit">

                </form>
            </div>
        </div>
    </body>
</html>
