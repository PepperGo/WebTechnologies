# Java Servlets/ JSP


# Framework

## Spring Framework

1. Dependency Injection (DI)/Inversion of Control (IoC) and Aspect Oriented Programming (AOP)
2. Spring Framework - Architecture(Core Container, Data Access/Integration, Web, Miscellaneous)
3. ClassPathXmlApplicationContext() & getBean() (xml file  <bean> tag)
4. IoC Containers
  
  Java POJO classes --> The Spring container --> Ready to use application(Final result)
                                ^
                                |
                                |
                            Metadata
                            
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
