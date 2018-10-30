<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="springForm" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Test Page</title>
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
		.error {
			color: #ff0000;
			font-style: italic;
			font-weight: bold;
		}
		.content .submit {
			align-content: center;
		}
	
	</style>
</head>
<body>
	<div class="tab">
		<h1>
			BUDGET  
		</h1>
	</div>
	<h1> Welcome to Login Page </h1>
	
	<div class="content">
	
		<springForm:form method="POST" action="/budget/authenticate" commandName="user">
			<table>
				<tr> 
					<td>Enter User ID: </td> 
					<td> <springForm:input path="userId" alt="Enter user Id" /> </td>
					<td> <springForm:errors path="userId" cssClass="error"/> </td>
				</tr>
				<tr> 
					<td>Enter Password: </td> 
					<td> <springForm:input path="password" alt="Enter password" /> </td>
					<td> <springForm:errors path="password" cssClass="error"/> </td>
				</tr>
				<tr class="submit"> 
					<td colspan="3"><springForm:button id="submit" value="Login">Login</springForm:button><td>
				</tr>
				
				<c:if test="${ErrorMsg}" >
					<tr> 
						<td colspan="3"> <span class="error">message</span></td>
					</tr>
				</c:if>
			</table>
		</springForm:form>
	
	</div>
</body>
</html>