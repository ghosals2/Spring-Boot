<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
<title>luv2code.com</title>
</head>
<body>
<h2>luv2code company home page</h2>
<hr>
<p>
Welcome to the luv2code company home page
</p>
<hr>
<security:authorize access="hasRole('MANAGER')">
<p>
	<a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a> <span> (only for Managers)</span>
</p>
<hr>
</security:authorize>

<security:authorize access="hasRole('ADMIN')">
<p>
	<a href="${pageContext.request.contextPath}/systems">Admin Meeting</a> <span> (only for Admin)</span>
</p>
<hr>
</security:authorize>

<p>

User: <security:authentication property="principal.username"/>
<br> <br>
Role(s):<security:authentication property="principal.authorities"/>

</p>

<form:form action="${pageContext.request.contextPath}/logout" method="POST">
<input type="submit" value="Logout"/>
</form:form>
</body>
</html>