# Play Tutorials  

Note: The Play APIs for Java and Scala are separated into different packages. All the Java APIs are under the play package; all the Scala APIs are under play.api.  
For example, the Java MVC API is under play.mvc and the Scala MVC API is under play.api.mvc.  

[Main concepts for Java](https://www.playframework.com/documentation/2.6.x/JavaHome)

## HTTP programming
### 1. Actions, Controllers and Results  
Most of the requests received by a Play application are handled by an action. An **action** is basically a Java method that processes the request parameters, and produces a result to be sent to the client.  
A **controller** is nothing more than a class extending play.mvc.Controller that groups several action methods.  
These **results** are defined by play.mvc.Result, and the play.mvc.Results class provides several helpers to produce standard HTTP results, such as the ok method.  

### 2. HTTP routing  
The router is the component that translates each incoming HTTP request to an action call (a public method in a controller class).  
An HTTP request is seen as an event by the MVC framework. This event contains two major pieces of information:
1. the request path (such as /clients/1542, /photos/list), including the query string.  
2. the HTTP method (GET, POST, …).  



3. Manipulating the HTTP response
4. Session and Flash scopes
5. Body parsers
6. Actions composition
7. HTTP Request Handlers / ActionCreator
8. Content negotiation



## Play Maintained Seeds and Example Templates\/Third Party Tutorials and Templates
See [Play Projects Example](https://www.playframework.com/documentation/2.6.x/Tutorials#play-maintained-seeds-and-example-templates)


## Reference
1. Play Offical Tutorial https://www.playframework.com/documentation/2.6.x/Tutorials#play-maintained-seeds-and-example-templates

