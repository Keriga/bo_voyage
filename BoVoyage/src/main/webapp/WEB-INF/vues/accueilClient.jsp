<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Client connect�</title>

<!-- Sp�cifier le chemin du fichier bootstrap.css -->
<link rel="stylesheet"
	href="<c:url value='/resources/css/bootstrap.css' />" />
<script type="text/javascript"
	src="<c:url value='/resources/js/jquery-3.3.1.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/resources/js/bootstrap.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/resources/js/monJs.js'/>"></script>


</head>

<body>

	<nav class="navbar navbar-inverse">
		<ul class="nav nav-tabs">
			<li><a href="<c:url value='/clientCTRL/afficheModifClient2'/>">Modifier
					ses coordonn�es</a></li>
			<li><a href="<c:url value='/clientCTRL/supLink/{cl.id}'/>"
				data-confirm="Etes-vous certain de vouloir supprimer?">Supprimer
					son compte</a></li>
			<li><a href="<c:url value='/j_spring_security_logout'/>">Se d�connecter</a></li>
		</ul>
	</nav>

	<br />

	<h1 style="color: greenyellow; text-align: center">Liste des
		r�servations</h1>

	<br />

	<div align="center" class="table-responsive">

		<table class="table table-hover" style="text-align: center;">

			<tr>
				<th style="text-align: center;">N�dossier</th>
				<th style="text-align: center;">Etat</th>
				<th style="text-align: center;">Assurance</th>
				<th style="text-align: center;">Nb places</th>
				<th style="text-align: center;">Prix total</th>
				<th style="text-align: center;">#Offre</th>
				<th style="text-align: center;">#Compte</th>
				<th style="text-align: center;">Annuler la r�servation</th>
			</tr>

			<c:forEach var="res" items="${listeResasByCl}">

				<tr>
					<td>${res.numDossier}</td>
					<td>${res.etat}</td>
					<td>${res.assurance}</td>
					<td>${res.nbPlaces}</td>
					<td>${res.prixRes}</td>
					<td>${res.offre.id}</td>
					<td>${res.compte.id}</td>
					<td><a href="<c:url value='/clientCTRL/supLink2/${res.id}'/>"
						data-confirm="Etes-vous certain de vouloir supprimer?"><span
							class="glyphicon glyphicon-remove" aria-hidden="true"></span></a></td>
				</tr>

			</c:forEach>

		</table>

	</div>


</body>
</html>