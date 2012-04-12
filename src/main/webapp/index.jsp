<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<body>
<h2>Hello World!</h2>
<c:if test="${user != null }">
<h3>Hey there ${user.name }, welcome back!</h3> 
<p>You can <a href="${pageContext.request.contextPath}/logout">logout</a> if you feel like it.</p>
<p>You can see the list of your published properties <a href="${pageContext.request.contextPath}/listProperties">here.</a> </p>
</c:if>
<c:if test="${user == null }">
<p>You might want to <a href="${pageContext.request.contextPath}/login">login</a> or <a href="${pageContext.request.contextPath}/register">register</a> if you're new here.</p>
</c:if>
</body>
</html>
