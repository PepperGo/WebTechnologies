# Java Lambda Expressions

Java lambda expressions are new in Java 8.   
Java lambda expressions are Java's first step into functional programming.   
A Java lambda expression is thus a function which can be created without belonging to any class.   
A lambda expression can be passed around as if it was an object and executed on demand.  

## Lambda Parameters

### Zero Parameters
If the method you are matching your lambda expression against takes no parameters, then you can write your lambda expression like this:  
```
() -> System.out.println("Zero parameter lambda");
```  
Notice how the parentheses have no content in between. That is to signal that the lambda takes no parameters.  

### One Parameter
If the method you are matching your Java lambda expression against takes one parameter, you can write the lambda expression like this:  
```
(param) -> System.out.println("One parameter: " + param);
```  

Notice the parameter is listed inside the parentheses.  

When a lambda expression takes a single parameter, you can also omit the parentheses, like this:  
```
param -> System.out.println("One parameter: " + param);
```  

### Multiple Parameters  
If the method you match your Java lambda expression against takes multiple parameters, the parameters need to be listed inside parentheses. Here is how that looks in Java code:  
```
(p1, p2) -> System.out.println("Multiple parameters: " + p1 + ", " + p2);
```  
Only when the method takes a single parameter can the parentheses be omitted.  







## Reference
1. Oracle Java Official Tutorials https://docs.oracle.com/javase/tutorial/java/javaOO/lambdaexpressions.html
2. Java Lambda Expressions http://tutorials.jenkov.com/java/lambda-expressions.html
