<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<h1>Register</h1>

<c:if test="${invalidCredentials }">
	<p class="error">No user with those credentials was found.</p>
</c:if>

<form action="/login" method="post">
	<fieldset>
		<label for="username">Username: </label>
		<input type="text" name="username" value="${fn:escapeXml(param.username) }"/><br />

		<label for="password">Password: </label>
		<input type="password" name="password" value="${fn:escapeXml(param.password) }"/><br />
		
		<input type="submit" value="Login" />
	</fieldset>
</form>