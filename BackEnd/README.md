# Table of Contents
- [Java Servlets/JSP](#Java-Servlets--JSP)
  - [Java Serlvets](#Java-Serlvets)
  - [JSP](#JSP)

- [Framework](#Framework)
  - [Spring Framework](#Spring-Framework)
  - [Spring MVC Framework](#Spring-MVC-Framework)
  - [Hibernate Framework](#Hibernate-Framework)


# Java Servlets/JSP
## Java Serlvets
1. Servlets - Overview<br>
Java Servlets are programs that run on a Web or Application server and act as a middle layer between a requests coming from a Web browser or other HTTP client and databases or applications on the HTTP server.<br>
Servlets Architecture<br>
![](https://www.tutorialspoint.com/servlets/images/servlet-arch.jpg)<br>
Servlets Tasks
Servlets Packages(javax.servlet, javax.servlet.http)

2. Servlets - Life Cycle<br>
init()<br>
service() (The service() method checks the HTTP request type (GET, POST, PUT, DELETE, etc.) and calls doGet, doPost, doPut, doDelete, etc. methods as appropriate)<br>
destroy()<br>
garbage collected by the garbage collector of the JVM<br>
Architecture Diagram  
![](https://www.tutorialspoint.com/servlets/images/servlet-lifecycle.jpg)  


3. [Servlets - Examples](https://www.tutorialspoint.com/servlets/servlets-first-example.htm)  

4. Servlets - Form Data  
   doGet(), doPost(), Reading Form Data using Servlet(getParameter(), getParameterValues(), getParameterNames())  
   [Example](https://www.tutorialspoint.com/servlets/servlets-form-data.htm)  
   
5. Servlets - Client HTTP Request  
   Header information, Methods to read HTTP Header  

6. Servlets - Server HTTP Response  
   Header & Description, Methods to Set HTTP Response Header  
   
7. Servlets - Http Status Codes
   100	-- 505  
   Methods to Set HTTP Status Code(setStatus, sendRedirect, sendError)
   
8. Servlets - Writing Filters  
   To intercept requests from a client before they access a resource at back end.  
   To manipulate responses from server before they are sent back to the client.  
   Filters are deployed in the deployment descriptor file web.xml and then map to either servlet names or URL patterns in your application's deployment descriptor.  
   Methods(doFilter, init,  destroy)  
   
9. Servlets - Exception Handling   
   Use the error-page element in web.xml to specify the invocation of servlets in response to certain exceptions or HTTP status codes.  
   Request Attributes − Errors/Exceptions  
   
10. Servlets - Cookies Handling  
    Servlet Cookies Methods  
    Setting Cookies, Reading Cookies, Delete Cookies  
    
11. Servlets - Session Tracking  
    HTTP is a "stateless" protocol which means each time a client retrieves a Web page, the client opens a separate connection to the Web server and the server automatically does not keep any record of previous client request.   
    Still there are following three ways to maintain session between web client and web server:  
    1. Cookies  
    2. Hidden Form Fields  
    3. URL Rewriting  
    Apart from the above three ways,   
    4. The HttpSession Object(servlet provides HttpSession Interface which provides a way to identify a user across more than one page request or visit to a Web site and to store information about that user)  
    `HttpSession session = request.getSession();`
      
12. Servlets - Database Access  
    JDBC  

13. Servlets - File Uploading  

14. Servlets - Handling Date  

15. Servlets - Page Redirection  
    Redirecting a request to another page is using method sendRedirect() of response object  
    
16. Servlets - Hits Counter  

17. Servlets - Auto Page Refresh  

18. Servlets - Sending Email  

19. Servlets - Packaging  

20. Servlets - Debugging  

21. Servlets - Internationalization  

22. Servlets - Annotations `important`
    Servlet API 3.0 has introduced a new package called javax.servlet.annotation. 
    It provides annotation types which can be used for annotating a servlet class.
    If you use annotation, then the deployment descriptor (web.xml) is not required. 
    But you should use tomcat7 or any later version of tomcat.

23. [Question & Interview](https://www.tutorialspoint.com/servlets/servlets-questions-answers.htm)  




## JSP   
   Using JSP, you can collect input from users through Webpage forms, present records from a database or another source, and create Webpages dynamically.   
#### Basic   
1. JSP-Architecture   
   ![](https://www.tutorialspoint.com/jsp/images/jsp-arch.jpg)  
   JSP Processing(The following steps explain how the web server creates the Webpage using JSP) `important`    
   (1) As with a normal page, your browser sends an HTTP request to the web server.  
   (2) The web server recognizes that the HTTP request is for a JSP page and forwards it to a JSP engine. This is done by using the URL or JSP page which ends with .jsp instead of .html.   
   (3) The JSP engine loads the JSP page from disk and converts it into a servlet content. This conversion is very simple in which all template text is converted to println( ) statements and all JSP elements are converted to Java code. This code implements the corresponding dynamic behavior of the page.  
   (4) The JSP engine compiles the servlet into an executable class and forwards the original request to a servlet engine.  
   (5) A part of the web server called the servlet engine loads the Servlet class and executes it. During execution, the servlet produces an output in HTML format. The output is furthur passed on to the web server by the servlet engine inside an HTTP response.  
   (6) The web server forwards the HTTP response to your browser in terms of static HTML content.  
   (7) Finally, the web browser handles the dynamically-generated HTML page inside the HTTP response exactly as if it were a static page.
   ![](https://www.tutorialspoint.com/jsp/images/jsp-processing.jpg)  
   
2. JSP - Lifecycle    
   Compilation, Initialization, Execution, Cleanup  
   ![](https://www.tutorialspoint.com/jsp/images/jsp_life_cycle.jpg)  
  
3. JSP - Syntax  
   Elements of JSP: 
   (1) The Scriptlet`<% code fragment %>`  
   (2) JSP Declarations `<%! declaration; [ declaration; ]+ ... %>`  
   (3) JSP Expression `<%= expression %>`  
   (4) JSP Comments `<%-- This is JSP comment --%>`  
   (5) JSP Directives `<%@ directive attribute="value" %>`   
   (6) JSP Actions `<jsp:action_name attribute="value" />`  
   (7) JSP Implicit Objects `request, response, out, session, page ...`
   (8) JSP Literals(Boolean, Integer, Floating point, String, Null)  
   
4. JSP - Directives(`<%@ directive attribute = "value" %>`)  
   `<%@ page ... %>`  `<%@ include ... %>`  `<%@ taglib ... %>`  
   
5. JSP - Actions(`<jsp:action_name attribute = "value" />`)    
   
6. JSP - Implicit Objects  

7. JSP - Client Request  
   The HttpServletRequest Object  

8. JSP - Server Response  
   The HttpServletResponse Object  

9. JSP - Http Status Codes  
   100 -- 505

10. JSP - Form Processing  

11. JSP - Filters  

12. JSP - Cookies Handling   

13. JSP - Session Tracking  

14. JSP - File Uploading  

15. JSP - Handling Date  

16. JSP - Page Redirecting  
    `public void response.sendRedirect(String location) throws IOException `   
    
17. JSP - Hits Counter  

18. JSP - Auto Refresh  

19. JSP - Sending Email  

#### Advanced
20. JSP - Standard Tag Library (JSTL)  
    A collection of useful JSP tags which encapsulates the core functionality common to many JSP applications.  
    To use any of the libraries, must include a <taglib> directive at the top of each JSP that uses the library.  
 
21. JSP - Database Access  

22. JSP - XML Data  

23. JSP - JavaBeans  

24. JSP - Custom Tags  

25. JSP - Expression Language (EL)  

26. JSP - Exception Handling  

27. JSP - Debugging  

28. JSP - Security  

29. JSP - Internationalization  

30. [JSP Questions and Answers](https://www.tutorialspoint.com/jsp/jsp_questions_answers.htm)  




# Framework

## Spring Framework

1. Dependency Injection (DI)/Inversion of Control (IoC) and Aspect Oriented Programming (AOP)
2. Spring Framework - Architecture(Core Container, Data Access/Integration, Web, Miscellaneous)
![](https://www.tutorialspoint.com/spring/images/spring_architecture.png)

3. ClassPathXmlApplicationContext() & getBean() (xml file  <bean> tag)
4. IoC Containers

![](https://www.tutorialspoint.com/spring/images/spring_ioc_container.jpg)
                            
  Spring provides the following two distinct types of containers
  Spring BeanFactory Container | Spring ApplicationContext Container(recommended)     
  
5. Bean (The objects that form the backbone of application and that are managed by the Spring IoC container are called beans)
   Properties & Description  
   Spring Configuration Metadata

6. Bean Scopes(singleton, prototype, request, session, global-session)

7. Bean Life Cycle (callback methods, destruction)

8. Bean Post Processors
   BeanPostProcessor interface defines callback methods that you can implement to provide your own instantiation logic, dependency-resolution logic, etc.
   
9. Bean Definition Inheritance (parent attribute)
   
10. Dependency Injection(Constructor-based dependency injection | Setter-based dependency injection)
    This entire procedure is controlled by the Spring Framework.

11. Injecting Inner Beans
    a <bean/> element inside the <property/> or <constructor-arg/> elements is called inner bean
  
12. Injecting Collection
    <list> <set> <map> <props>
  
13. Beans Auto-Wiring
    Modes: no, byName, byType, constructor, autodetect
    Limitations: Overriding possibility, Primitive data types, Confusing nature

14. Annotation Based Configuration(start from Spring 2.5) <context:annotation-config/> ` Important `
    Instead of using XML to describle a bean wiring, we can move the bean configuration into the component class itself by using annotations on the relevant class, method, or field declaration.
    Annotation injection is performed before XML injection, thus, the latter configuration will override the former for properites wired through both approaches.
    @Required @Autowired @Qualifier JSR-250 Annotations(JSR-250 based annotations: @Resource, @PostConstruct and @PreDestroy annotations)
    
15. Java Based Configuration    ` Important ` 
    Java-based configuration option enables you to write most of your Spring configuration without XML but with the help of few Java-based annotation.
    @Configuration & @Bean Annotations
    @Import Annotation
    @Bean(initMethod = "init", destroyMethod = "cleanup" )
    @Scope("prototype")
    
16. Event Handling in Spring (ApplicationContext)
    Event handling in the ApplicationContext is provided through the ApplicationEvent class and ApplicationListener interface
    ContextRefreshedEvent, ContextStartedEvent, ContextStoppedEvent, ContextClosedEvent, RequestHandledEvent
    
17. Custom Events in Spring
    
18. AOP(Aspect oriented programming) with Spring Framework    
    
19. Spring - JDBC Framework Overview (Perfer Hibernate)
    JdbcTemplate class

20. Spring - Transaction Management(ACID) (Also perfer Hibernate)

21. Spring - MVC Framework(More details in Spring MVC part)
    a. DispatcherServlet 
    ![](https://www.tutorialspoint.com/spring/images/spring_dispatcherservlet.png)
    b. Required Configuration 
       web.xml, [servlet-name]-servlet.xml
    c. Defining a Controller  
       @Controller  @RequestMapping
    d. Creating JSP Views   
    Spring Web MVC Framework Examples：
    (1) [Spring MVC Hello World Example](https://www.tutorialspoint.com/spring/spring_mvc_hello_world_example.htm)
    (2) [Spring MVC Form Handling Example](https://www.tutorialspoint.com/spring/spring_mvc_form_handling_example.htm)
    (3) [Spring Page Redirection Example](https://www.tutorialspoint.com/spring/spring_page_redirection_example.htm)
    (4) [Spring Static Pages Example](https://www.tutorialspoint.com/spring/spring_static_pages_example.htm)
    (5) [Spring Exception Handling Example](https://www.tutorialspoint.com/spring/spring_exception_handling_example.htm)

22. Spring - Logging with Log4J
    log4j.properties 
    static Logger log = Logger.getLogger(MainApp.class.getName());  
    log.info("Going to create HelloWord Obj");  
    
23. Spring Interview Question  
    [Link](https://www.tutorialspoint.com/spring/spring_interview_questions.htm)


## Spring MVC Framework
1. MVC Framework Overview
    a. DispatcherServlet <br>
       ![](https://www.tutorialspoint.com/springmvc/images/spring_dispatcherservlet.png) <br>
    b. Required Configuration 
       web.xml, [servlet-name]-servlet.xml<br>
    c. Defining a Controller  <br>
       @Controller  @RequestMapping <br>
    d. Creating JSP Views   <br><br>
[Spring MVC Hello World Example](https://www.tutorialspoint.com/springmvc/springmvc_hello_world_example.htm) <br>

2. Spring MVC - Form Handling <br>
[Spring MVC Form Handling Example](https://www.tutorialspoint.com/spring/spring_mvc_form_handling_example.htm) <br>
[Spring Page Redirection Example](https://www.tutorialspoint.com/spring/spring_page_redirection_example.htm)<br>
[Spring Static Pages Example](https://www.tutorialspoint.com/spring/spring_static_pages_example.htm)<br>
3. Spring MVC - Form Tag library <br>
[Spring MVC Text Box Example](https://www.tutorialspoint.com/springmvc/springmvc_textbox.htm)<br>
[Spring MVC - Password Example](https://www.tutorialspoint.com/springmvc/springmvc_password.htm)<br>
[Spring MVC - TextArea Example](https://www.tutorialspoint.com/springmvc/springmvc_textarea.htm)<br>
[Spring MVC - Checkbox Example](https://www.tutorialspoint.com/springmvc/springmvc_checkbox.htm)<br>
[Spring MVC - Checkboxes Example](https://www.tutorialspoint.com/springmvc/springmvc_checkboxes.htm)<br>
[Spring MVC - RadioButton Example](https://www.tutorialspoint.com/springmvc/springmvc_radiobutton.htm)<br>
[Spring MVC - RadioButtons Example](https://www.tutorialspoint.com/springmvc/springmvc_radiobuttons.htm)<br>
[Spring MVC - Dropdown Example](https://www.tutorialspoint.com/springmvc/springmvc_dropdown.htm)<br>
[Spring MVC - Listbox Example](https://www.tutorialspoint.com/springmvc/springmvc_listbox.htm)<br>
[Spring MVC - Hidden Field Example](https://www.tutorialspoint.com/springmvc/springmvc_hidden.htm)<br>
[Spring MVC - Error Handling Example](https://www.tutorialspoint.com/springmvc/springmvc_errors.htm)<br>
[Spring MVC - File Upload Example](https://www.tutorialspoint.com/springmvc/springmvc_upload.htm)<br>
4. Spring MVC - Handler Mapping <br>
[Spring MVC - Bean Name Url Handler Mapping Example](https://www.tutorialspoint.com/springmvc/springmvc_beannameurlhandlermapping.htm)<br>
[Spring MVC - Controller Class Name Handler Mapping Example](https://www.tutorialspoint.com/springmvc/springmvc_controllerclassnamehandlermapping.htm)<br>
[Spring MVC - Simple Url Handler Mapping Example](https://www.tutorialspoint.com/springmvc/springmvc_simpleurlhandlermapping.htm)<br>
5. Spring MVC - Controller<br>
[Spring MVC - Multi Action Controller Example](https://www.tutorialspoint.com/springmvc/springmvc_multiactioncontroller.htm)<br>
[Spring MVC - Properties Method Name Resolver Example](https://www.tutorialspoint.com/springmvc/springmvc_propertiesmethodnameresolver.htm)<br>
[Spring MVC - Parameter Method Name Resolver Example](https://www.tutorialspoint.com/springmvc/springmvc_parametermethodnameresolver.htm)<br>
[Spring MVC - Parameterizable View Controller Example](https://www.tutorialspoint.com/springmvc/springmvc_parameterizableviewcontroller.htm)<br>
6. Spring MVC - View Resolver<br>
[Spring MVC - Internal Resource View Resolver Example](https://www.tutorialspoint.com/springmvc/springmvc_internalresourceviewresolver.htm)<br>
[Spring MVC - Xml View Resolver Example](https://www.tutorialspoint.com/springmvc/springmvc_xmlviewresolver.htm)<br>
[Spring MVC - Resource Bundle View Resolver Example](https://www.tutorialspoint.com/springmvc/springmvc_resourcebundleviewresolver.htm)<br>
[Spring MVC - Multiple Resolver Mapping Example](https://www.tutorialspoint.com/springmvc/springmvc_multiple_resolver_mapping.htm)<br>
7. Spring MVC - Integration  `important` <br>
[Spring MVC - Hibernate Validator Example](https://www.tutorialspoint.com/springmvc/springmvc_hibernate_validator.htm)<br>
[Spring MVC - Generate RSS Feed Example](https://www.tutorialspoint.com/springmvc/springmvc_rss_feed.htm)<br>
[Spring MVC - Generate XML Example](https://www.tutorialspoint.com/springmvc/springmvc_xml.htm)<br>
[Spring MVC - Generate JSON Example](https://www.tutorialspoint.com/springmvc/springmvc_json.htm)<br>
[Spring MVC - Generate Excel Example](https://www.tutorialspoint.com/springmvc/springmvc_excel.htm)<br>
[Spring MVC - Generate PDF Example](https://www.tutorialspoint.com/springmvc/springmvc_pdf.htm)<br>
[Spring MVC - Integrate LOG4J Example](https://www.tutorialspoint.com/springmvc/springmvc_log4j.htm)<br>

8. [Interview && Quiz](https://www.tutorialspoint.com/spring/spring_questions_answers.htm) <br>


## Hibernate Framework
Hibernate not only takes care of the mapping from Java classes to database tables (and from Java data types to SQL data types), but also provides data query and retrieval facilities.  
1. Hibernate - ORM Overview  
   JDBC: Java Database Connectivity, it provides a set of Java API for accessing the relational databases from Java program.(Pros/Cons) 
   Why Object Relational Mapping (ORM)?  
   (1). Modify the design of database  
   (2). Loading and storing objects in a relational database exposes us to the following five mismatch problems(Granularity, Inheritance, Identity, Associations, Navigation) The Object-Relational Mapping (ORM) is the solution to handle all the above impedance mismatches.   
   What is ORM?   
   ORM stands for Object-Relational Mapping (ORM) is a programming technique for converting data between relational databases and object oriented programming languages such as Java, C#, etc.  
   

2. Hibernate - Overview  
   Hibernate is an Object-Relational Mapping (ORM) solution for JAVA.   
   ![](https://www.tutorialspoint.com/hibernate/images/hibernate_position.jpg)    
   Advantages  
   
3. Hibernate - Architecture  
   high level view of the Hibernate Application Architecture  
   ![](https://www.tutorialspoint.com/hibernate/images/hibernate_high_level.jpg)  
   detailed view of the Hibernate Application Architecture with its important core classes  
   ![](https://www.tutorialspoint.com/hibernate/images/hibernate_architecture.jpg)  
   Class objects involved in Hibernate Application Architecture:  
   Configuration Object, SessionFactory Object, Session Object, Transaction Object, Query Object, Criteria Object  
   
4. Hibernate - Configuration   
   Hibernate also requires a set of configuration settings related to database and other related parameters.(a standard Java properties file called hibernate.properties, or as an XML file named hibernate.cfg.xml)   
   Hibernate Properties:   
   hibernate.dialect, hibernate.connection.driver_class, hibernate.connection.url, hibernate.connection.username, hibernate.connection.password, hibernate.connection.pool_size, hibernate.connection.autocommit  
   
5. Hibernate - Sessions  
   
   
   
   
