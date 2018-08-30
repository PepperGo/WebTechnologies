<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirmation</title>
</head>

<%
 //read from data
 String favLang = request.getParameter("favoriteLanguage");
 //create the cookie
 Cookie theCookie = new Cookie("myApp.favoriteLanguage", favLang);
 
 //set the life span ... total number of seconds
 theCookie.setMaxAge(60*60*24); 
 //send cookie to browser
 response.addCookie(theCookie);
 

%>

<body>
    Thanks! We set your favorite language to: ${param.favoriteLanguage}
    <br/><br/>
    
    <a href="cookies-homepage.jsp">Return to homepage.</a>

</body>
</html>