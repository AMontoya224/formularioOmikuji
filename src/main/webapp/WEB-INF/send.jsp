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
		<main>
			<h1>
				Send an Omikuji!
			</h1>
			<form action="/request" method="POST">
				<div>
					<label for="number">
						Pick any number from 5 to 25:
					</label>
					<input type="number" id="number" name="number">
				</div>
				<div>
					<label for="city">
						Enter the name of any city:
					</label>
					<input type="text" id="city" name="city">
				</div>
				<div>
					<label for="name">
						Enter the name of any real person:
					</label>
					<input type="text" id="name" name="name">
				</div>
				<div>
					<label for="hobby">
						Enter professional endeavor or hobby:
					</label>
					<input type="text" id="hobby" name="hobby">
				</div>
				<div>
					<label for="type">
						Enter any type of living theng:
					</label>
					<input type="text" id="type" name="type">
				</div>
				<div>
					<label for="say">
						Say something nice to someone:
					</label>
					<textarea placeholder="Say something..." id="say" name="say"></textarea>
				</div>
				<button type="submit" class="send">
					Send
				</button>
			</form>
		</main>
	</body>
</html>