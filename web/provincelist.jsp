<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<option value="">Select a Province</option>
<c:forEach items="${provinceList}" var="province">
    <option value=${province.getProvinceCode()} <c:if test="${province.getProvinceCode().equalsIgnoreCase(user.getProvinceCode())}"> selected </c:if>> ${province.getProvinceName()}  </option>

</c:forEach>
