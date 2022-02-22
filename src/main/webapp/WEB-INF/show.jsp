<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>
			Omikuji
		</title>
		<link rel="stylesheet" type="text/css" href="/css/style.css">
		<script type="text/javascript" src="js/app-1.js"></script>
	</head>
	<body>
		<main class="container-0">
			<h1>
				Here's Your Omikuji!!!
			</h1>
			<div class="container">
				In <c:out value="${number}"/> years, you will live in <c:out value="${city}"/> 
				with <c:out value="${name}"/> as your roommate, <c:out value="${hobby}"/> for a 
				living. The next time you see a <c:out value="${type}"/>, you will have good luck. 
				Also, <c:out value="${say}"/>.
			</div>
			<form action="/logout" method="GET">
				<button type="submit" class="link">
					Go Back
				</button>
			</form>
		</main>
	</body>
</html>