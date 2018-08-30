<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%! 
  private int initVar=0;
  private int serviceVar=0;
  private int destroyVar=0;
%>
  
<%!
  public void jspInit(){
    initVar++;
    System.out.println("jspInit(): JSP initalized "+initVar+" times");
  }
  public void jspDestroy(){
    destroyVar++;
    System.out.println("jspDestroy(): JSP destroyed "+destroyVar+" times");
  }
%>

<%
  serviceVar++;
  System.out.println("_jspService(): JSP recieved "+serviceVar+" times requests");

  String content1="initalized: "+initVar;
  String content2="received: "+serviceVar;
  String content3="destoryed: "+destroyVar;
%>
<h1>Test Lifecycle</h1>
<p><%=content1 %></p>
<p><%=content2 %></p>
<p><%=content3 %></p>

</body>
</html>