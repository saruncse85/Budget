<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<link href="/resources/css/main.css" rel="sytlesheet">
	<script type="text/javascript" src="/resources/js/jquery-3.3.1.min.js"></script>
	
	<style type="text/css">
		body {
			font-family: Arial;
			background-color: #FFFFF0;
		}
		
		.tab {
			border: thin solid black;
			align-content: center;
			background: #ffff99;
		}
		
		.tab h1 {
			text-align: center;
		}
	
		body .enter {
			align-self: center;
		}
	</style>
</head>
<body>
	<div class="tab">
		<h1>
			BUDGET  
		</h1>
	</div>
	<P>  The time on the server is ${serverTime}. </P>
	<form action="/budget/login" method="post">
		<input type="hidden" value="hello test" name="action"/>
		<button type="submit" id="Enter">Enter Here...</button>
	</form>	
</body>
</html>
