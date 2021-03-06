<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Liste Offres</title>

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

	<h1 style="color: red; text-align: center">Liste des Offres</h1>

	<br />
	<div align="center">

		<table class="table table-bordered" style="text-align: center">
			<tr style="text-align: center">
				<th>ID</th>
				<th>formule</th>
				<th>Destination Continent</th>
				<th>Destination Pays</th>
				<th>Destination Ville</th>
				<th>h�bergement</th>
				<th>r�f�rence</th>
				<th>date d�part</th>
				<th>date retour</th>
				<th>vol</th>
				<th>nombre de places disponibles</th>
				<th>statut</th>
				<th>prix publix</th>
				<th>prix BoVoyage</th>
				<th>hotel</th>
				<th>photo</th>
				
			</tr>
			<c:forEach var="o" items="${listeOffres}">
				<tr>
					<td>${o.id}</td>
					<td>${o.formule}</td>
					<td>${o.destination.continent}</td>
					<td>${o.destination.pays}</td>
					<td>${o.destination.ville}</td>
					<td>${o.hebergement}</td>
					<td>${o.reference}</td>
					<td>${o.dateDep}</td>
					<td>${o.dateRet}</td>
					<td><a href="${pageContext.request.contextPath}/agCTRL/listeVOffre/${o.id}">Liste des vols</a></td>
					<td>${o.nbPlacesDispo}</td>
					<td>${o.statut}</td>
					<td>${o.prixPublic}</td>
					<td>${o.prixBoV}</td>
					<td><a
						href="${pageContext.request.contextPath}/agCTRL/listeHOffre/${o.id}">Liste des hotels</a></td>
					<td>${o.photoOff}</td>
					
				</tr>
			</c:forEach>
		</table>
	</div>

	<br />




</body>
</html>