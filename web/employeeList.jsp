<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <script src="https://code.jquery.com/jquery-3.6.3.js" 
                            integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" 
                            crossorigin="anonymous">
    </script>
</head>

<script>
    function ajaxPreEditEmployee(employeeId){
        console.log("pre edit working: "+employeeId);
        
        $.ajax({
                 url: 'EditEmployee',
                 data:{
                    employeeId: employeeId
            
                }
                 success: function (responseText) {
//                        alert(responseText);
                        $("#container").html(responseText);
                 }
              });
    }
</script>

<div class="form-group"> 	<!--		Show Numbers Of Rows 		-->
    <h6 style="color:black"><b>Entries</b></h6>

    <select class  ="form-control" name="state" id="maxRows" style="width:80px; height: 40px; display: inline-flex">
        <option value="5000">Show ALL Rows</option>
        <option value="5">5</option>
        <option value="10">10</option>
        <option value="15">15</option>
        <option value="20">20</option>
        <option value="50">50</option>
        <option value="70">70</option>
        <option value="100">100</option>
    </select>		 		
</div>
<br>
<div class="table-body">
    <table id="table-id" class="table table-bordered table-hover" style="margin-top: -9.5px;">
        <thead>
            <c:choose>
                <c:when test = "${requestScope.noData != null}">
                    <tr>
                        <td colspan="5">
                            <h2 style="border:2px solid rgb(255, 99, 71); background-color:rgba(255, 99, 71, 0.5); font-size:15px;">
                                <c:out value="${requestScope.noData}"> </c:out>
                                </h2>
                            </td>
                        </tr>
                </c:when>
            </c:choose>
            <tr>
                <th scope = "col">
                    Employee Id
                </th>
                <th scope = "col">
                    First Name
                </th>
                <th scope = "col">
                    Last Name
                </th>
                <th scope = "col">
                    Address
                </th>
                <th scope = "col">
                    Phone
                </th>
                <th scope = "col">
                    Gender
                </th>
                <th scope = "col">
                    Age
                </th>
                <th scope = "col">
                    Department
                </th>
                <th scope = "col">
                    Role
                </th>
                <th scope = "col">
                    Basic Salary
                </th>
                <th scope = "col">
                    Car Allowance
                </th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody id="tableBody">
            <c:forEach items="${empList}" var="emp">
                <tr>
                    <td>
                        ${emp.getEmployeeId()}
                    </td>
                    <td>
                        ${emp.getFirstName()}
                    </td>
                    <td>
                        ${emp.getLastName()}
                    </td>
                    <td>
                        ${emp.getAddress()}
                    </td>
                    <td>
                        ${emp.getPhone()}
                    </td>
                    <td>
                        ${emp.getGender()}
                    </td>
                    <td>
                        ${emp.getAge()}
                    </td>
                    <td>
                        ${emp.getDepartmentName()}
                    </td>
                    <td>
                        ${emp.getRoleName()}
                    </td>
                    <td>
                        ${emp.getBasicSalary()}
                    </td>
                    <td>
                        ${emp.getCarAllowance()}
                    </td>
                    <td>
                        <a href=EditEmployee?employeeId=${emp.employeeId} >
                            <button class="btn-primary" style="color:#8B0000">Edit</button>

                        </a>
                        <a href=DeleteEmployee?employeeId=${emp.employeeId}>
                            <button class="btn-dark">Delete</button>
                        </a>

                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <jsp:include page="pagination.jsp"></jsp:include>

        <script src="tablepagination.js"></script>

    <c:if test='${updateMsg!=null}'>
        <div class="alert alert-success">
            <strong>Success!</strong> ${updateMsg} !
        </div>
    </c:if>
</div>


