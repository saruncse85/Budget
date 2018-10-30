<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Budget - New User</title>
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
		
		#mySidenav a {
			position: absolute;
			left: -80px;
			transition: 0.3s;
			padding: 15px;
			width: 200px;
			text-decoration: none;
			font-size: 20px;
			color: white;
			border-radius: 0 5px 5px 0;
		}
		
		#mySidenav a:hover {
			left: 0;
		}
		
		#newUser {
			top: 120px;
			background-color: #4CAF50;
		}
		
		#listUser {
			top: 180px;
			background-color: #2196F3;
		}
		
		#modifyUser {
			top: 240px;
			background-color: #f44336;
		}
	</style>
</head>
<body>
<div class="tab">
		<h1>
			BUDGET  
		</h1>
	</div>
	
	<h1>Create New User</h1>
	
	<div id="mySidenav" class="sidenav">
	  <a href="/budget/admin/newUser" id="newUser">Create New User</a>
	  <a href="/budget/admin/userList" id="listUser">Get User List</a>
	  <a href="#" id="modifyUser">Modify User Details</a>
	</div>
	
</body>
</html>