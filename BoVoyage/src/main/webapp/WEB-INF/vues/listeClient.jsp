<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Liste des clients</title>

<!-- Spécifier le chemin du fichier bootstrap.css -->
<link rel="stylesheet"
	href="<c:url value='/resources/css/bootstrap.css' />" />
<script type="text/javascript"
	src="<c:url value='/resources/js/jquery-3.3.1.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/resources/js/bootstrap.js'/>"></script>


</head>

<body>

	<%@include file="/resources/template/header.html"%>

	<h1 style="color: greenyellow; text-align: center">Liste des
		clients</h1>

	<br />

	<div align="center" class="table-responsive">

		<table class="table table-hover" style="text-align: center;">

			<tr>
				<th style="text-align: center;">#</th>
				<th style="text-align: center;">Client</th>
				<th style="text-align: center;">Date de naissance</th>
				<th style="text-align: center;">Adresse</th>
				<th style="text-align: center;">Mail</th>
				<th style="text-align: center;">Opérations</th>
			</tr>

			<c:forEach var="cl" items="${listeClients}">

				<tr>
					<td>${cl.id}</td>
					<td>${cl.civilite} ${cl.nom} ${cl.prenom}</td>
					<td><fmt:formatDate pattern="dd/MM/yyyy" value="${cl.dn}" /></td>
					<td>${cl.adresse.numero} ${cl.adresse.rue},
						${cl.adresse.codePostal} ${cl.adresse.ville}</td>
					<td>${cl.mail}</td>
					<td><a href="<c:url value='/clientCTRL/supLink/${cl.id}'/>">Supprimer</a>
						| <a href="<c:url value='/clientCTRL/modifLink?pId=${cl.id}'/>">Modifier</a></td>
				</tr>

			</c:forEach>

		</table>

	</div>

</body>
</html>