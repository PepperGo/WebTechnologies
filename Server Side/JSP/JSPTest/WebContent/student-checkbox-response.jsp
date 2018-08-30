<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Confirmation Title</title>
</head>
<body>
      The student is confirmed: ${param.firstName} ${param.lastName}
      <br/> <br/>
      Also other way to display information: <%= request.getParameter("firstName")%> <%= request.getParameter("lastName") %>
      <br/><br/>
     <!--dispaly list of favoritelanguage  -->
      <ul>
      
      <%
            String[] langs = request.getParameterValues("favoriteLanguage");
            for(String tempLang : langs){
            	out.println("<li>" + tempLang + "</li>");
            }
      %>
      
      </ul>
     
</body>
</html>