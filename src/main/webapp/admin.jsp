<%@page import="com.mycompany.mycart.helper.Helper"%>
<%@page import="java.util.Map"%>
<%@page import="com.mycompany.mycart.entities.Category"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.mycart.helper.FactoryProvider"%>
<%@page import="com.mycompany.mycart.dao.CategoryDao"%>
<%@page import="com.mycompany.mycart.entities.User"%>
<%

    User user = (User) session.getAttribute("current-user");
    if (user == null) {

        session.setAttribute("message", "You are not logged in !! Login first");
        response.sendRedirect("login.jsp");
        return;

    } else {

        if (user.getUserType().equals("normal")) {

            session.setAttribute("message", "You are not admin ! Do not access this page");
            response.sendRedirect("login.jsp");
            return;

        }

    }


%>
<%  CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
                                List<Category> list = cdao.getCategories();
                                
//geting count
Map<String,Long> m =Helper.getCounts(FactoryProvider.getFactory());


%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Panel</title>
        <%@include file="components/common_css_js.jsp" %>
        <link rel="stylesheet" href="css/newlogincss.css"> 
        <link rel="stylesheet" href="css/register.css">
        <link rel="stylesheet" href="css/admin.css">
        <link rel="stylesheet" href="css/cart-header.css">
           <link
      rel="shortcut icon"
      href="img/favicon-16x16.png"
      type="image/png"
    />


    </head>
    <body>

        <%@include  file="components/navbar.jsp" %>

        <div class="container admin">


            <div class="container-fluid mt-3">
                <%@include file="components/message.jsp" %>
            </div>




            <div class="row mt-3">

                <!--first col-->
                <div class="col-md-4">

                    <!--first box-->
                    <div class="card admin-options ">
                        <div class="card-body admin-options text-center">
                            <div class="container">
                                <img style="max-width: 125px;" class="img-fluid" src="img/users.png" alt="user_icon">

                            </div> 
                            <h1><%= m.get("userCount") %></h1>
                            <h1 class="text-uppercase text-muted">Users</h1>

                        </div>

                    </div>



                </div>

                <!--second col-->

                <div class="col-md-4">


                    <div class="card  admin-options text-center">

                        <div class="card-body admin-options ">

                            <div class="container">
                                <img style="max-width: 125px;" class="img-fluid" src="img/category.png" alt="user_icon">

                            </div> 

                            <h1><%= list.size() %></h1>
                            <h1 class="text-uppercase text-muted">Categories</h1>

                        </div>

                    </div>


                </div>


                <!--third col-->
                <div class="col-md-4">


                    <div class="card admin-options">

                        <div class="card-body admin-options text-center">

                            <div class="container">
                                <img style="max-width: 125px;" class="img-fluid" src="img/products.png" alt="user_icon">

                            </div> 

                            <h1><%= m.get("productCount") %></h1>
                            <h1 class="text-uppercase text-muted">Products</h1>

                        </div>

                    </div>


                </div>





            </div>

<!--            second row
           <div class="sec-row">
            <div class="row mt-3">

                second :row first col
                <div class="col-md-6">


                    <div class="card modal-options modal-hov admin-options" data-toggle="modal" data-target="#add-category-modal">

                        <div class="card-body  admin-options modal-hov text-center">

                            <div class="container">
                                <img style="max-width: 125px;" class="img-fluid" src="img/add-category.png" alt="user_icon">

                            </div> 

                            <p class="mt-2">Click here to add new category</p>
                            <h1 class="text-uppercase text-muted">Add Category</h1>

                        </div>

                    </div>
                </div>

                second row : second col

                <div class="col-md-6">

                    <div class="card  modal-hov modal-options admin-options" data-toggle="modal" data-target="#add-product-modal">

                        <div class="card-body modal-hov admin-options text-center">

                            <div class="container">
                                <img style="max-width: 125px;" class="img-fluid" src="img/add-product.png" alt="user_icon">

                            </div> 

                            <p class="mt-2">Click here to add new Product</p>
                            <h1 class="text-uppercase text-muted">Add Product</h1>

                        </div>

                    </div>

                </div>
                
                
                <div class="col-md-6">

                    <div class="card  modal-hov modal-options admin-options" data-toggle="modal" data-target="#add-product-modal">

                        <div class="card-body modal-hov admin-options text-center">

                            <div class="container">
                                <img style="max-width: 125px;" class="img-fluid" src="img/add-product.png" alt="user_icon">

                            </div> 

                            <p class="mt-2">Click here to add new Product</p>
                            <h1 class="text-uppercase text-muted">Add User</h1>

                        </div>

                    </div>

                </div>
            </div>




            </div>-->


<!--

        </div>-->



<!--second row-->

            <div class="row mt-4">

                <!--second :row first col-->
                <div class="col-md-4">


                    <div class="card overide modal-hov modal-options admin-options" data-toggle="modal" data-target="#add-category-modal">

                        <div class="card-body overide modal-hov admin-options text-center">

                            <div class="container">
                                <img style="max-width: 125px;" class="img-fluid" src="img/add-category.png" alt="user_icon">
                               

                            </div>

                            <h2 class="text-uppercase text-muted txtmar">Add Category</h2>

                        </div>

                    </div>
                </div>

                <!--second row : second col-->

                <div class="col-md-4">

                    <div class="card overide modal-hov modal-options admin-options" data-toggle="modal" data-target="#add-product-modal">

                        <div class="card-body overide modal-hov admin-options text-center">

                            <div class="container">
                                <img style="max-width: 125px;" class="img-fluid" src="img/add-product.png" alt="user_icon">

                            </div>

                            <h2 class="text-uppercase text-muted txtmar">Add Product</h2>

                        </div>

                    </div>

                </div>
                <!--second row:third col-->
               
                <div class="col-md-4">

                    <div class="card overide modal-hov modal-options admin-options" data-toggle="modal" data-target="#add-user-modal">
                    

                        <div class="card-body overide modal-hov admin-options text-center">

                            <div class="container">
                                <img style="max-width: 125px;" class="img-fluid" src="img/add-user.png" alt="user_icon">

                            </div>

                            <h2 class="text-uppercase text-muted txtmar">Add user </h2>
                        </div>

                       

                    </div>



            </div>
            </div>
           
                <!--third row-first col-->
         <div class="row-mt-4 flexit">
          <div class="col-md-4 mar">


              <div class="card overide modal-hov modal-options admin-options" data-toggle="modal" data-target="#delete-user-modal">
                        <div class="card-body overide modal-hov admin-options text-center">
                       
                         

                            <div class="container">
                                <img style="max-width: 125px;" class="img-fluid" src="img/remove-user.png" alt="user_icon">

                           </div>

                            <h2 class="text-uppercase text-muted txtmar">Delete User</h2>
                             
       
                       

                    </div>
                </div>



        </div>
             <div class="col-md-4 mar ">


              <div class="card overide modal-hov modal-options admin-options" data-toggle="modal" data-target="#delete-product-modal">
                        
                       
                             <div class="card-body overide modal-hov admin-options text-center ">

                            <div class="container">
                                <img style="max-width: 125px;" class="img-fluid" src="img/remove-from-cart.png" alt="user_icon">

                           </div>

                            <h2 class="text-uppercase text-muted txtmar">Delete Product</h2>
                             
       
                        </div>

                    
                </div>



        </div>
             
         </div>



        <!--add category modal-->



        <!-- Modal -->
        <div class="modal fade" id="add-category-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header custom-bg text-white">
                        <h5 class="modal-title" id="exampleModalLabel">Fill category details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="ProductOperationServlet" method="post">

                            <input type="hidden" name="operation" value="addcategory">


                            <div class="form-group">
                                <input type="text" class="form-control" name="catTitle" placeholder="Enter category title" required />

                            </div>


                            <div class="form-group">
                                <textarea style="height: 300px;" class="form-control" placeholder="Enter category description" name="catDescription" required></textarea>

                            </div>

                            <div class="cotnainer text-center">

                                <button class="btn btn-outline-success">Add Category</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                            </div>



                        </form>




                    </div>

                </div>
            </div>
        </div>




        <!--End add category modal-->

        <!--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->

        <!--product modal-->

        <!-- Modal -->
        <div class="modal fade" id="add-product-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header prod-det">
                        <h5 class="modal-title" id="exampleModalLabel">Product details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <!--form-->

                        <form action="ProductOperationServlet" method="post" enctype="multipart/form-data">

                            <input type="hidden" name="operation" value="addproduct"/>

                            <!--product title-->

                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Enter title of product" name="pName" required />
                            </div>

                            <!--product description-->

                            <div class="form-group">
                                <textarea style="height: 150px;" class="form-control" placeholder="Enter product description" name="pDesc"></textarea>

                            </div>

                            <!--product price-->

                            <div class="form-group">
                                <input type="number" class="form-control" placeholder="Enter price of product" name="pPrice" required />
                            </div>

                            <!--product discount-->

                            <div class="form-group">
                                <input type="number" class="form-control" placeholder="Enter product discount" name="pDiscount" required />
                            </div>


                            <!--product quantity-->

                            <div class="form-group">
                                <input type="number" class="form-control" placeholder="Enter product Quantity" name="pQuantity" required />
                            </div>


                            <!--product category-->

                            


                            <div class="form-group">
                                <select name="catId" class="form-control" id="">
                                    <%                                        for (Category c : list) {
                                    %>
                                    <option value="<%= c.getCategoryId()%>"> <%= c.getCategoryTitle()%> </option>
                                    <%}%>
                                </select>

                            </div>



                            <!--product file-->

                            <div class="form-group">
                                <label for="pPic">Select Picture of product</label>  
                                <br>
                                <input type="file" id="pPic" name="pPic" required />

                            </div>


                            <!--submit button-->
                            <div class="container text-center">

                                <button class="btn btn-outline-success">Add product</button>

                            </div>



                        </form>
                        <!--end form-->
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>





        <!--End product modal-->
        <!-- Modal -->
        <div class="modal fade" id="add-user-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">User details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <!--form-->

                        <form action="RegisterServlet" method="post" >

                       

                            <!--user title-->

                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Enter name of user " name="user_name" required />
                            </div>

                            <!--user email-->

                            <div class="form-group">
                                <input type="email" class="form-control" placeholder="Enter user email" name="user_email" required/>

                            </div>

                            <!--user password-->

                            <div class="form-group">
                                <input type="password" class="form-control" placeholder="Enter user password" name="user_password" required />
                            </div>

                            <!--user phone-->

                            <div class="form-group">
                                <input type="number" class="form-control" placeholder="Enter user phone " name="user_phone" required />
                            </div>


                            <!--user address-->

                                   <div class="form-group">
                                    <label for="phone">User Address</label>
                                    <textarea name="user_address" style="height: 200px;" class="form-control" placeholder="Enter your address"></textarea>


                                </div>

                       



                     



                            <!--submit button-->
                            <div class="container text-center">

                                <button class="btn btn-outline-success">Add user</button>

                            </div>



                        </form>
                        <!--end form-->
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
         <div class="modal fade" id="delete-user-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">User details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <!--form-->

                        <form action="UserOperationServlet" method="post" >

                       

                            <!--user title-->

                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Enter user id " name="user_id" required />
                            </div>

                            <!--user email-->

                           
                       



                     



                            <!--submit button-->
                          <div class="container text-center">

                                <button class="btn btn-outline-success">Delete user</button>

                            </div>



                        </form>
                        <!--end form-->
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
         </div>
         <div class="modal fade" id="delete-product-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">User details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <!--form-->

                 <form action="ProductOperationServlet" method="post" enctype="multipart/form-data">

                            <input type="hidden" name="operation" value="deleteproduct"/>

                       

                            <!--user title-->

                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Enter product id " name="pid" required />
                            </div>

                            <!--user email-->

                           
                       



                     



                            <!--submit button-->
                          <div class="container text-center">

                                <button class="btn btn-outline-success">Delete Product</button>

                            </div>



                        </form>
                        <!--end form-->
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
         </div>
        </div>

        
        <%@include  file="components/common_modals.jsp" %>
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

    </body>
</html>
