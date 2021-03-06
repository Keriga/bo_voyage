<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accueil Vols</title>
<!-- pour utiliser bootstrapjs-->
<script type="text/javascript"
	src="<c:url value='/resources/js/jquery-3.3.1.js'/>"></script>

<!-- pour utiliser bootstrapjs-->
<script type="text/javascript"
	src="<c:url value='/resources/js/bootstrap.js'/>"></script>

<!-- pour utiliser bootstrap -->
<link rel="stylesheet"
	href="<c:url value='/resources/css/bootstrap.css'/>" />

</head>
<body>

	<%@include file="/resources/template/header.html"%>

	<br />
	<h1 style="color: red; text-align: center">Liste des Vols</h1>

	<br />
	<div align="center">

		<table class="table table-bordered" style="text-align: center">
			<tr style="text-align: center">
				
				<th>ID</th>
				<th>modele de l'avion</th>
				<th>aeroport de d�part</th>
				<th>aeroport d'arriv�e</th>
				<th>d�part</th>
				<th>arriv�e</th>
				<th>Operations</th>
			</tr>
			<c:forEach var="v" items="${listeVolsOff}" >
				<tr>
					
					<td>${v.id}</td>
					<td>${v.modele}</td>
					<td>${v.aeroportDep}</td>
					<td>${v.aeroportArr}</td>
					<td>le ${v.horaire.dateDep} � ${v.horaire.heureDep}</td>
					<td>le ${v.horaire.dateRet} � ${v.horaire.heureRet}</td>
					<td><a
						href="${pageContext.request.contextPath}/mCTRL/supprLink/${m.id}">Supprimer</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>

	<br />





</body>
</html>