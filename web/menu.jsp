
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <title>Employee Management</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.6.3.js" 
                            integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" 
                            crossorigin="anonymous">
    </script>
        <meta name="theme-color" content="#712cf9">
    </head>
    
    <script>
        
        function fetchEmployees(){
            console.log("fetch employees working");
            $.ajax({
                 url: 'FetchEmployess',
                 
                 success: function (responseText) {
//                        alert(responseText);
                        $("#container").html(responseText);
                 }
              });
            
            
        }
        
        function preAddEmployee(){
            console.log("pre add employee working");
            $.ajax({
                 url: 'PreAddEmployee',
                 
                 success: function (responseText) {
//                        alert(responseText);
                        $("#container").html(responseText);
                 }
              });
            
            
        }
        
        function preSearchEmployee(){
            console.log("pre searcj employee working");
            $.ajax({
                 url: 'PreSearchEmployee',
                 
                 success: function (responseText) {
//                        alert(responseText);
                        $("#container").html(responseText);
                 }
              });
            
            
        }
        
        
        
        
    </script>
    
    <header class="site-header sticky-top p-3 text-bg-dark">
        <div class="container">
            <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
                    <img src="images/exavalu_logo.png" width="150" height="75"></img>
                </a>

                <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                    <li><a href="employeeDetails.jsp" class="nav-link px-2 text-secondary">Home</a></li>
                    <li><a style="cursor:pointer;" onClick="preAddEmployee()" class="nav-link px-2 text-white">Add Employee</a></li>
                   
                    <li><a style="cursor:pointer;" onClick="preSearchEmployee()" class="nav-link px-2 text-white">Search Employee</a></li>
                    <li><a style="cursor:pointer;" onclick="fetchEmployees()" class="nav-link px-2 text-white">Show Employees</a></li>
                    <li><a href="ConsumeAPI" class="nav-link px-2 text-white">Get API Data</a></li>
                    <li><a href="GetTodoJSON" class="nav-link px-2 text-white">Todo List</a></li>
                    <li><a href="#" class="nav-link px-2 text-white"> <c:if test='${user.firstName!=null && user.lastName!=null}'>Welcome: ${user.firstName} ${user.lastName}</c:if></a> </li>

                </ul>

                <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
                    <input type="search" class="form-control form-control-dark text-bg-dark" placeholder="Search..." aria-label="Search">
                </form>

                <div class="text-end">
                    <c:choose>
                    <c:when test ='${Loggedin==null}'>

                    <a href="login.jsp">
                        <button type="button" class="btn btn-outline-light me-2" >Login</button>
                    </a>
                    <a href="PreSignUp">
                        <button type="button" class="btn btn-warning" style="background-color: #8B0000; border: none; color: white">Sign-up</button>
                    </a>
                    </c:when>
                    <c:otherwise>

                    <a href="Logout">
                        <button type="button" class="btn btn-outline-light me-2" >Log Out</button>
                    </a>
                    </c:otherwise>
                    </c:choose>


                </div>
            </div>
        </div>
    </header>