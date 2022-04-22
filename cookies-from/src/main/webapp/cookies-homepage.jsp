<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Cookies</title>
</head>
<body>

<!--  Read the favorite programming language cookie -->

<%
// The default ...if there are no cookies
String favLang = "Java";

//get the cookies from the browser request:
Cookie[] theCookies = request.getCookies();

// find ou fav language cookie:
	
if (theCookies != null){
	
	for ( Cookie i : theCookies   ){
		
	 	if ("NombreCookie".equals(i.getName() ) )    {
	 
		favLang = i.getValue();
		break;
		 }
 	}
}
	

%>

<!-- now show a personalized page ... use the "favLang" variable -->

<!-- show new books for this lang -->
<h4>New Books for <%= favLang %></h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<h4>Latest News Reports for <%= favLang %></h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<h4>Hot Jobs for <%= favLang %></h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<hr>
<a href="cookies-from.html">Personalize this page</a>


</body>
</html>