<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Amerique du Sud</title>
<!-- pour utiliser jquery js-->
<script type="text/javascript"
	src="<c:url value='/resources/js/jquery-3.3.1.js'/>"></script>

<!-- pour utiliser bootstrap js-->
<script type="text/javascript"
	src="<c:url value='/resources/js/bootstrap.js'/>"></script>

<!-- pour utiliser bootstrap -->
<link rel="stylesheet"
	href="<c:url value='/resources/css/bootstrap.css'/>" />

<style>
.borderexample {
	margin: 20px;
	padding: 10px;
	border-style: solid;
	border-color: #287EC7;
	padding: 10px;
}
</style>
</head>



<body>


	<h1 style="color: red; text-align: center">Liste des Offres
		d'Amerique du Sud</h1>

	<h3 style="color: green; text-align: center">Cliquez pour les
		details</h3>

	<br />
	<!-- 	<div align="center"> -->

	<!-- 		<table class="table table-bordered" style="text-align: center"> -->
	<!-- 			<tr style="text-align: center"> -->
	<!-- 				<th>ID</th> -->
	<!-- 				<th>Reference</th> -->
	<!-- 				<th>Ville</th> -->
	<!-- 				<th>Pays</th> -->
	<!-- 				<th>Continent</th> -->
	<!-- 				<th>Date Dep</th> -->
	<!-- 				<th>Date Ret</th> -->
	<!-- 				<th>Formule</th> -->
	<!-- 				<th>Hebergement</th> -->
	<!-- 				<th>Prix public</th> -->
	<!-- 				<th>Prix Box</th> -->
	<!-- 				<th>Operation</th> -->
	<!-- 			</tr> -->
	<%-- 			<c:forEach var="eur" items="${listeSA}"> --%>
	<!-- 				<tr> -->
	<%-- 					<td>${eur.id}</td> --%>
	<%-- 					<td>${eur.reference}</td> --%>
	<%-- 					<td>${eur.destination.ville}</td> --%>
	<%-- 					<td>${eur.destination.pays}</td> --%>
	<%-- 					<td>${eur.destination.continent}</td> --%>
	<%-- 					<td><fmt:formatDate value="${eur.dateDep}" pattern="dd-MM-yy" /></td> --%>
	<%-- 					<td><fmt:formatDate value="${eur.dateRet}" pattern="dd-MM-yy" /></td> --%>
	<%-- 					<td>${eur.formule}</td> --%>
	<%-- 					<td>${eur.hebergement}</td> --%>
	<%-- 					<td>${eur.prixPublic}</td> --%>
	<%-- 					<td>${eur.prixBoV}</td> --%>
	<!-- 					<td>details</td> -->
	<!-- 				</tr> -->
	<%-- 			</c:forEach> --%>
	<!-- 		</table> -->
	<!-- 	</div>s -->

	<div class="container">
		<div class="row justify-content-md-center">
			<div class="col-md-4">
				<c:forEach begin="0" end="${fn:length(listeSA)/3}" var="ctr"
					items="${listeSA}" varStatus="loop">
					<div class=" borderexample">
						<a href="${pageContext.request.contextPath}/OffreCTRL/${ctr.id}"
							target="_blank" style="text-decoration: none"> ID : ${ctr.id}
							Ref : ${ctr.reference}<br /> O� : ${ctr.destination.ville},
							${ctr.destination.pays} <br /> Quand: partir le : <fmt:formatDate
								value="${ctr.dateDep}" pattern="dd-MM-yy" /> revenir le : <fmt:formatDate
								value="${ctr.dateRet}" pattern="dd-MM-yy" /> <br /> Prix :
							autres : ${ctr.prixPublic}, nous: ${ctr.prixBoV} <br /> Inclus :
							${ctr.formule} <br /> <br />
						</a>
					</div>
				</c:forEach>
			</div>
			<div class="col-md-4">
				<c:forEach begin="${(fn:length(listeSA)/3) + 1}"
					end="${(fn:length(listeSA)/3)*2}" var="ctr" items="${listeSA}"
					varStatus="loop">
					<div class=" borderexample">
						<a href="${pageContext.request.contextPath}/OffreCTRL/${ctr.id}"
							target="_blank" style="text-decoration: none"> ID : ${ctr.id}
							Ref : ${ctr.reference}<br /> O� : ${ctr.destination.ville},
							${ctr.destination.pays} <br /> Quand: partir le : <fmt:formatDate
								value="${ctr.dateDep}" pattern="dd-MM-yy" /> revenir le : <fmt:formatDate
								value="${ctr.dateRet}" pattern="dd-MM-yy" /> <br /> Prix :
							autres : ${ctr.prixPublic}, nous: ${ctr.prixBoV} <br /> Inclus :
							${ctr.formule} <br /> <br />
						</a>
					</div>
				</c:forEach>
			</div>
			<div class="col-md-4">
				<c:forEach begin="${((fn:length(listeSA)/3)*2)+1}" var="ctr"
					items="${listeSA}" varStatus="loop">
					<div class=" borderexample">
						<a href="${pageContext.request.contextPath}/OffreCTRL/${ctr.id}"
							target="_blank" style="text-decoration: none"> ID : ${ctr.id}
							Ref : ${ctr.reference}<br /> O� : ${ctr.destination.ville},
							${ctr.destination.pays} <br /> Quand: partir le : <fmt:formatDate
								value="${ctr.dateDep}" pattern="dd-MM-yy" /> revenir le : <fmt:formatDate
								value="${ctr.dateRet}" pattern="dd-MM-yy" /> <br /> Prix :
							autres : ${ctr.prixPublic}, nous: ${ctr.prixBoV} <br /> Inclus :
							${ctr.formule} <br /> <br />
						</a>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<br />
</body>
</html>