
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login - MyCart</title>
        <%@include file="components/common_css_js.jsp" %>
        <link rel="stylesheet" href="css/newlogincss.css"> 
        <link rel="stylesheet" href="css/cart-header.css">
           <link
      rel="shortcut icon"
      href="img/favicon-16x16.png"
      type="image/png"
    />

    </head>
    <body>
        <%@include  file="components/navbar.jsp" %>
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3 login-margin">

                    <div class="card custom-bg4 mt-3">

                        <div class="card-header custom-bg3 text-white">
                            <img src="img/person-outline.png"  style="max-width: 100px;" class="img-fluid login-img" alt="">
                            <h3 class="heading">Login</h3>
                        </div>

                        <div class="card-body custom-bg5">                            
                            <%@include file="components/message.jsp" %>
                            <form action="LoginServlet" method="post">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input  name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted"></small>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input  name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>
                                <a href="register.jsp" class="text-center sign-up d-block mb-2"> Sign Up </a>
                                <div class="container text-center"> 

                                    <button type="submit" class="btn reg-btn btn-primary border-0 ">Submit</button>
                                    <button type="reset" class="btn rst-btn btn-primary border-0 ">Reset</button>
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
