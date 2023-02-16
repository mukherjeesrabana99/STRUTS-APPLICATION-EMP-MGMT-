<%-- 
    Document   : landingPage
    Created on : 22-Dec-2022, 12:00:33 PM
    Author     : Avijit Chattopadhyay
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <c:if test='${user == null}'>
            <c:redirect url="login.jsp"/>
        </c:if>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--        <link href="css/header.css" rel="stylesheet">-->
<!--        <link rel="stylesheet" href="css/all.min.css">
        <link rel="stylesheet" href="css/reset-min.css">
        <link rel="stylesheet" href="css/algolia-min.css">
        <link rel="stylesheet" href="css/header.css">
        <link rel="stylesheet" href="css/docs.min.css">
        <link rel="stylesheet" href="css/index.css">-->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/menu_css.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="css/product.css" rel="stylesheet">
        <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
        <title>Employee Management</title>
    </head>
    
    <body>
        <main>
    <jsp:include page="menu.jsp"></jsp:include>
   
<br>
                    <div class="table-body">
                        <table id="table-id" class="table table-bordered table-hover" style="margin-top: -9.5px;">
                            <thead>
                                <tr>
                                <th scope = "col">
                                    Id
                                </th>
                                <th scope = "col">
                                    Title
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${todos}" var="todo">
                               <tr>
                                    <td>
                                        ${todo.getTodoId()}
                                    </td>
                                    <td>
                                        ${todo.getTodoTitle()}
                                    </td>
                                    
                                   </tr>
                            </c:forEach>

                     </tbody>
                    </table>
        </div>

</main></body>
</html>
