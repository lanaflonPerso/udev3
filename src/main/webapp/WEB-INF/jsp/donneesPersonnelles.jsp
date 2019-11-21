<%@page pageEncoding="UTF-8" contentType="text/html" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
  <head>
  	<meta charset="UTF-8">
    <title>Java EE - Exemple MVC</title>
  </head>
  <body>
	<div>Vos données personnelles&nbsp;:</div>
	<ul>
		<li>Nom : <c:out value="${donneesPersonnelles.civilite} ${donneesPersonnelles.nom}"/></li>
		<li>Age : <fmt:formatNumber value="${donneesPersonnelles.age}"/></li>
		<c:choose>
			<c:when test="${empty donneesPersonnelles.email}">
				<li>Vous n'avez pas saisi d'email</li>
			</c:when>
			<c:otherwise>
				<li>Email : <c:out value="${donneesPersonnelles.email}"/></li>
			</c:otherwise>
		</c:choose>
	</ul>
	<c:if test="${donneesPersonnelles.majeur}">
		<div>Vous êtes majeur(e) !</div>
	</c:if>
	<div>
	  	<a href='<c:url value="/"/>'>Retour à l'accueil</a>  
	</div>
  </body>
</html>
