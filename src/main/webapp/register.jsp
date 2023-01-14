<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New User</title>

        <%@include file="components/common_css_js.jsp" %>
        <link rel="stylesheet" href="css/register.css"> 
        <link rel="stylesheet" href="css/cart-header.css">
           <link
      rel="shortcut icon"
      href="img/favicon-16x16.png"
      type="image/png"
    />

    </head>
    <body>

        <a class="navbar-brand" href="index.jsp"><img src="img/website_logo.png" alt="MM-Logo" class="clogin-logo" /></a>
        <%--<%@include  file="components/navbar.jsp" %>--%>
        <div class="container-fluid">
            <div class="row mt-3">
                <div class="col-md-4 box-margin offset-md-4">                  

                    <div class="card register-box">                        
                        <%@include  file="components/message.jsp" %>                        
                        <div class="card-body register-box px-5">
                            <div class="container text-center">
                                <img src="img/person-add-outline.png"  style="max-width: 100px;" class="img-fluid" alt="">
                            </div>


                            <h1 class="text-center my-3">Sign Up</h1>

                            <form action="RegisterServlet" method="post">

                                <div class="form-group">
                                    <label for="name">User Name</label>
                                    <input name="user_name" type="text" class="form-control" id="name" placeholder="Enter here" aria-describedby="emailHelp">
                                </div>

                                <div class="form-group">
                                    <label for="email">User Email</label>
                                    <input name="user_email" type="email" class="form-control" id="email" placeholder="Enter here" aria-describedby="emailHelp">
                                </div>

                                <div class="form-group">
                                    <label for="password">User password</label>
                                    <input name="user_password" type="password" class="form-control" id="password" placeholder="Enter here" aria-describedby="emailHelp">
                                </div>

                                <div class="form-group">
                                    <label for="phone">User phone</label>
                                    <input name="user_phone" type="number" class="form-control" id="phone" placeholder="Enter here" aria-describedby="emailHelp">
                                </div>

                                <div class="form-group">
                                    <label for="phone">User Address</label>
                                    <textarea name="user_address" style="height: 200px;" class="form-control" placeholder="Enter your address"></textarea>


                                </div>

                                <div class="container text-center"> 
                                    <button class="btn reg-btn btn-outline-success">Register</button>
                                    <button class="btn rst-btn btn-outline-warning">Reset</button>

                                </div>


                            </form>


                        </div>

                    </div>

                </div>
            </div>



        </div>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>    
    </body>
</html>
