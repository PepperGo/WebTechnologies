# Table of Contents
- [SOA](SOA)

- [Web Services](Web-Services)
  - [XML-based](#XML-based)
    - [SOAP](##SOAP)
  - [REST-based](#REST-based)
    - [RESTful](##RESTful)

# SOA


# Web Services

## XML-based

### SOAP

## REST-based

### RESTful
RESTful Web Services are basically REST Architecture based Web Services. ESTful web services are light weight, highly scalable and maintainable and are very commonly used to create APIs for web-based applications. 
1. RESTful Web Services - Introduction  
   REST stands for **RE**presentational **S**tate **T**ransfer.
   In REST architecture, a REST Server simply provides access to resources and the REST client accesses and presents the resources. Here each resource is identified by URIs/ Global IDs.  
   REST uses various representations to represent a resource like Text, JSON and XML. JSON is now the most popular format being used in Web Services.   
   HTTP Methods(commonly used in a REST based architecture): GET, PUT, DELETE, POST, OPTIONS  
   **A web service** is a collection of open protocols and standards used for exchanging data between applications or systems.   
   Software applications written in various programming languages and running on various platforms can use web services to exchange data over computer networks like the Internet in a manner similar to inter-process communication on a single computer.   
   Web services based on REST Architecture are known as RESTful Web Services. These web services use HTTP methods to implement the concept of REST architecture. A RESTful web service usually defines a URI (Uniform Resource Identifier), which is a service that provides resource representation such as JSON and a set of HTTP Methods.  
   
2. Environment  
   Jersey Framework(implements JAX-RS API, which is a standard specification to create RESTful Web Services)

3. [RESTful Web Services - First Application](https://www.tutorialspoint.com/restful/restful_first_application.htm)   
   Like Spring MVC. 
   
4. RESTful Web Services - Resources    
   REST architecture treats every content as a resource. These resources can be Text Files, Html Pages, Images, Videos or Dynamic Business Data.   
   Each resource is identified by URIs/ Global IDs. REST uses various representations to represent a resource where Text, JSON, XML. The most popular representations of resources are XML and JSON.    
   
5. RESTful Web Services - Messages  
   A client sends a message in form of a HTTP Request and the server responds in the form of an HTTP Response.   
   HTTP Request:   
   ![](https://www.tutorialspoint.com/restful/images/http_request.jpg)    
   HTTP Response:  
   ![](https://www.tutorialspoint.com/restful/images/http_response.jpg)  
   
   
6. RESTful Web Services - Addressing  
   Each resource in REST architecture is identified by its URI (Uniform Resource Identifier). A URI is of the following format:  
   `<protocol>://<service-name>/<ResourceType>/<ResourceID>`  
   Constructing a Standard URI:  
   a. Use Plural Noun  
   b. Avoid using spaces  
   c. Use lowercase letters  
   d. Maintain Backward Compatibility   
   e. se HTTP Verb   
   
7. RESTful Web Services - Methods     
   [Example](https://www.tutorialspoint.com/restful/restful_methods.htm)  `important`  
   
8. RESTful Web Services - Statelessness  
   Advantages of Statelessness:   
   a. Web services can treat each method request independently.  
   b. Web services need not maintain the client's previous interactions. It simplifies the application design.  
   c. As HTTP is itself a statelessness protocol, RESTful Web Services work seamlessly with the HTTP protocols.  
   Disadvantages of Statelessness:   
   Web services need to get extra information in each request and then interpret to get the client's state in case the client interactions are to be taken care of.  
   
9. RESTful Web Services - Caching  
   Caching refers to storing the server response in the client itself, so that a client need not make a server request for the same resource again and again.   
   Best Practices:  
   a. Always keep static contents like images, CSS, JavaScript cacheable, with expiration date of 2 to 3 days.  
   b. Never keep expiry date too high.  
   c. Dynamic content should be cached for a few hours only.  

10. RESTful Web Services - Security  
    Best practices:  
    Validation, Session Based Authentication, No Sensitive Data in the URL, Restriction on Method Execution, Validate Malformed XML/JSON, Throw generic Error Messages  
    
11. RESTful Web Services - Java (JAX-RS)  
    JAX-RS stands for JAVA API for RESTful Web Services.  
    @Path, @GET, @Produces, @Consumes, @PathParam...  
    [Annotation & Description](https://www.tutorialspoint.com/restful/restful_jax_rs.htm)  
    
    
12. [RESTful Questions and Answers](https://www.tutorialspoint.com/restful/restful_questions_answers.htm)    



  ## SOA & Web Services   [`More Details`](https://github.com/PepperGo/WebTechnologies/tree/master/SOA-WebServices)
### 1. SOA
[Full-Stack Open Source Web Application Development with Java](http://code.scottshipp.com/learn/tutorial-full-stack-open-source-web-application-development-with-java/)  

### 2. Web Services
#### (1) XML-Based 


#### (2) REST-based
#### RESTful API
[RESTful Web Services Tutorial](https://www.tutorialspoint.com/restful/index.htm)  
[REST Web Services](https://www.youtube.com/watch?v=xkKcdK1u95s&index=1&list=PLqq-6Pq4lTTZh5U8RbdXq0WaYvZBz2rbn)

##### Good Material 
   
   
   
   
   
   
   
   
