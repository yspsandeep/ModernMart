<%-- 
    Document   : wallet
    Created on : Dec 9, 2022, 12:26:00 PM
    Author     : user
--%>
<%@page import="com.mycompany.mycart.entities.User"%>
<%

    User user = (User) session.getAttribute("current-user");
    if (user == null) {

        session.setAttribute("message", "Please Login to access Wallet!!");
        response.sendRedirect("login.jsp");
        return;
    } 
  


%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Wallet</title>
        <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap"
      rel="stylesheet"
    />


    <!-- wallet css:link -->
    <link rel="stylesheet" href="css/wallet.css" />
    <%@include file="components/common_css_js.jsp" %>
        <link rel="stylesheet" href="css/newlogincss.css"> 
        <link rel="stylesheet" href="css/register.css">
        <link rel="stylesheet" href="css/admin.css">
        <link rel="stylesheet" href="css/checkout.css">
        <link rel="stylesheet" href="css/cart-header.css">
           <link
      rel="shortcut icon"
      href="img/favicon-16x16.png"
      type="image/png"
    />

    </head>
    <body>
<%@include  file="components/navbar.jsp" %>
    <div class="whead">
      <img src="img/wallet.png" alt="wallet" class="wimg" /><span class="wtext"
        >&nbsp;Wallet</span
      >
    </div>
    <div class="wcard">
      <div class="cbal">
        <h2 class="cbaltxt">Current Balance:</h2>
        <span class="rupee">&#8377</span>
        <h2 class="cbalamt">0</h2>
      </div>
      <div class="topup">
        <div class="tptxt">
          <img src="img/recharge.png" alt="recharge" class="rechg" /><span
            class="toptxt"
            >Topup Wallet</span
          >
        </div>
        <div class="line"></div>
        <div class="tpamt">
          <span class="txt">Topup Amount:</span>
          <span class="cur">&#8377</span>
          <form class="fields">
            <input
              type="number"
              name="amount"
              id="amt"
              placeholder="Amount in ₹"
            />
          </form>
        </div>
        <div class="uname">
          <span class="txt">Username:</span>
          <ion-icon name="person-outline" class="ionic"></ion-icon>
          <form class="fields">
            <input
              type="text"
              name="username"
              id="usname"
              placeholder="Username"
            />
          </form>
        </div>
        <div class="pwd">
          <span class="txt ptxt">Password:</span>
          <ion-icon name="lock-closed-outline" class="ionic"></ion-icon>
          <form class="fields">
            <input
              type="password"
              name="password"
              id="pswd"
              placeholder="Password"
            />
          </form>
        </div>
        <button class="tpbtn">SUBMIT</button>
        
      </div>
    </div>
    <!-- wallet js -->
    <script src="js/wallet.js"></script>

    
    <!-- ionicons js -->
    <script
      type="module"
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"
    ></script>
    <script
      nomodule
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"
    ></script>
    </body>
</html>
