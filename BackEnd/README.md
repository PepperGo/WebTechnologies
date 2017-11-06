# Java Servlets/ JSP


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
    a. DispatcherServlet 
       ![](https://www.tutorialspoint.com/springmvc/images/spring_dispatcherservlet.png) 
       \<br>
    b. Required Configuration 
       web.xml, [servlet-name]-servlet.xml
    c. Defining a Controller  
       @Controller  @RequestMapping
    d. Creating JSP Views   
<br>
[Spring MVC Hello World Example](https://www.tutorialspoint.com/springmvc/springmvc_hello_world_example.htm)
<br>
2. Spring MVC - Form Handling
<br>
[Spring MVC Form Handling Example](https://www.tutorialspoint.com/spring/spring_mvc_form_handling_example.htm)
<br>

[Spring Page Redirection Example](https://www.tutorialspoint.com/spring/spring_page_redirection_example.htm)

<br>
[Spring Static Pages Example](https://www.tutorialspoint.com/spring/spring_static_pages_example.htm)
<br>
3. Spring MVC - Form Tag library
<br>
[Spring MVC Text Box Example](https://www.tutorialspoint.com/springmvc/springmvc_textbox.htm)
<br>
[Spring MVC - Password Example](https://www.tutorialspoint.com/springmvc/springmvc_password.htm)
<br>
[Spring MVC - TextArea Example](https://www.tutorialspoint.com/springmvc/springmvc_textarea.htm)
<br>
[Spring MVC - Checkbox Example](https://www.tutorialspoint.com/springmvc/springmvc_checkbox.htm)
<br>
[Spring MVC - Checkboxes Example](https://www.tutorialspoint.com/springmvc/springmvc_checkboxes.htm)
<br>
[Spring MVC - RadioButton Example](https://www.tutorialspoint.com/springmvc/springmvc_radiobutton.htm)
<br>
[Spring MVC - RadioButtons Example](https://www.tutorialspoint.com/springmvc/springmvc_radiobuttons.htm)
<br>
[Spring MVC - Dropdown Example](https://www.tutorialspoint.com/springmvc/springmvc_dropdown.htm)
<br>
[Spring MVC - Listbox Example](https://www.tutorialspoint.com/springmvc/springmvc_listbox.htm)
<br>
[Spring MVC - Hidden Field Example](https://www.tutorialspoint.com/springmvc/springmvc_hidden.htm)
<br>
[Spring MVC - Error Handling Example](https://www.tutorialspoint.com/springmvc/springmvc_errors.htm)
<br>
[Spring MVC - File Upload Example](https://www.tutorialspoint.com/springmvc/springmvc_upload.htm)
<br>
4. Spring MVC - Handler Mapping
<br>
[Spring MVC - Bean Name Url Handler Mapping Example](https://www.tutorialspoint.com/springmvc/springmvc_beannameurlhandlermapping.htm)
<br>
[Spring MVC - Controller Class Name Handler Mapping Example](https://www.tutorialspoint.com/springmvc/springmvc_controllerclassnamehandlermapping.htm)
<br>
[Spring MVC - Simple Url Handler Mapping Example](https://www.tutorialspoint.com/springmvc/springmvc_simpleurlhandlermapping.htm)
<br>
5. Spring MVC - Controller
<br>
[Spring MVC - Multi Action Controller Example](https://www.tutorialspoint.com/springmvc/springmvc_multiactioncontroller.htm)
<br>
[Spring MVC - Properties Method Name Resolver Example](https://www.tutorialspoint.com/springmvc/springmvc_propertiesmethodnameresolver.htm)

