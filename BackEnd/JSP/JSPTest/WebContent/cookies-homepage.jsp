<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3> Training Portal</h3>

<% 
    //the default ... if there are no cookies
    String favLang = "Java";
    Cookie[] theCookies = request.getCookies();
    
    if(theCookies != null){
    	for(Cookie tempCookie : theCookies){
    		if("myApp.favoriteLanguage".equals(tempCookie.getName())){
    			favLang = tempCookie.getValue();
    			break;
    		}
    	}
    }

%>

<!-- now show a personalized page ... use the "favLang variable" -->
<!-- show new books for this lang -->

<h4> New books for <%= favLang %></h4>
<ul>
    <li>blah blah blah</li>
    <li>blah blah blah</li>
</ul>
<ul>
    <li>blah blah blah</li>
    <li>blah blah blah</li>
</ul>
<ul>
    <li>blah blah blah</li>
    <li>blah blah blah</li>
</ul>

<hr>
<a href="cookies-personalize-form.html">Personalize this page</a>

</body>
</html>