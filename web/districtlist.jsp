<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<option value="">Select a District</option>
<c:forEach items="${districtList}" var="district">
    <option value=${district.getDistrictCode()} <c:if test="${district.getDistrictCode().equalsIgnoreCase(user.getDistrictCode())}"> selected </c:if>> ${district.getDistrictName()}  </option>

</c:forEach>