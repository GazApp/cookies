<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmation</title>
</head>
<body>

<%

//read from data (form htl)
String favLang = request.getParameter("FavoriteLangueage");

// create Cookie
Cookie theCookie = new Cookie ("NombreCookie", favLang);

// set the life Cooki
theCookie.setMaxAge(60*60*24*365);

// Send cookie to broser
response.addCookie(theCookie);


%>

<h3>Thanks four your chooise, We set your language to:</h3> ${param.FavoriteLangueage }

<br/><br/>

<a href = "cookies-homepage.jsp">Return to Home Page </a>

</body>
</html>