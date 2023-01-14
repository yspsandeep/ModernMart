<%@page import="com.mycompany.mycart.entities.User"%>
<%

    User user = (User) session.getAttribute("current-user");
    if (user == null) {

        session.setAttribute("message", "You are not logged in !! Login first to access checkout page");
        response.sendRedirect("login.jsp");
        return;

    }

%>





<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout</title>
        <%@include file="components/common_css_js.jsp" %>
        <link rel="stylesheet" href="css/newlogincss.css"> 
        <link rel="stylesheet" href="css/register.css">
        <link rel="stylesheet" href="css/admin.css">
        <link rel="stylesheet" href="css/checkout.css">
        <link rel="stylesheet" href="css/cart-header.css">
        <link rel="stylesheet" href="css/checkstyle.css" />
           <link
      rel="shortcut icon"
      href="img/favicon-16x16.png"
      type="image/png"
    />


    </head>
    <body>
        <%@include  file="components/navbar.jsp" %>

        <div class="container">
            <div class="row mt-5">                

                <div class="col-md-6">
                    <!--card-->
                    <div class="card admin-options">
                        <div class="card-body admin-options ">

                            <h3 class="text-center mb-5">Your selected items</h3>

                            <div class="cart-body admin-options">

                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-md-6">
                    <!--form details-->
                    <!--card-->
                    <div class="card admin-options modal-options">
                        <div class="card-body admin-options">

                            <h3 class="text-center mb-5">Your details for order</h3>
                            <form action="#!">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input value="<%= user.getUserEmail()%>" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                                <div class="form-group">
                                    <label for="name">Your name</label>
                                    <input value="<%= user.getUserName()%>" type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter name">
                                </div>


                                <div class="form-group">
                                    <label for="name">Your contact</label>
                                    <input value="<%= user.getUserPhone() %>" type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter contact number">
                                </div>


                                <div class="form-group">
                                    <label for="exampleFormControlTextarea1" >Your shipping address</label>
                                    <textarea value="<%= user.getUserAddress()%>" class="form-control" id="exampleFormControlTextarea1" placeholder="Enter your address" rows="3"></textarea>
                                </div>

                                <div class="container text-center">
                                    <button class="btn reg-btn btn-outline-success">Order Now</button>
                                    <button class="btn rus-btn btn-outline-primary">Continue Shopping</button>
                                </div>

                            </form>    

                        </div>
                    </div>
                </div>
            </div>

        </div>


        <%@include  file="components/common_modals.jsp" %>
        
<!--        <div class="deliv">
        <h2 class="heading">Delivery Details</h2>
        <div class="edate">
          <span class="etxt">Expected to arrive in:</span>
          <div class="grp">
            <span class="jsobj">4</span>
            <span class="edate">days</span>
          </div>
        </div>
      </div>-->
      
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="checkout.js"></script>
    </body>
</html>
