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

### Parameter Types
Specifying parameter types for a lambda expression may sometimes be necessary if the compiler cannot infer the parameter types from the functional interface method the lambda is matching. Don't worry, the compiler will tell you when that is the case. Here is a Java lambda parameter type example:  
```
(Car car) -> System.out.println("The car is: " + car.getName());
```  

## Lambda Function Body
The body of a lambda expression, and thus the body of the function / method it represents, is specified to the right of the -> in the lambda declaration: Here is an example:  
```
 (oldState, newState) -> System.out.println("State changed")
```  


## Returning a Value From a Lambda Expression
You can return values from Java lambda expressions, just like you can from a method. You just add a return statement to the lambda function body, like this:  
```
 (param) -> {
    System.out.println("param: " + param);
    return "return value";
  }
```  
In case all your lambda expression is doing is to calculate a return value and return it, you can specify the return value in a shorter way. Instead of this:   
``` (a1, a2) -> { return a1 > a2; }```
You can write:    
``` (a1, a2) -> a1 > a2;```  

The compiler then figures out that the expression a1 > a2 is the return value of the lambda expression (hence the name lambda expressions - as expressions return a value of some kind).  


## Lambdas as Objects 
A Java lambda expression is essentially an object. You can assign a lambda expression to a variable and pass it around, like you do with any other object. Here is an example:  
```
public interface MyComparator {
    public boolean compare(int a1, int a2);
}

MyComparator myComparator = (a1, a2) -> return a1 > a2;

boolean result = myComparator.compare(2, 5);
```
The first code block shows the interface which the lambda expression implements. The second code block shows the definition of the lambda expression, how the lambda expression is assigned to variable, and finally how the lambda expression is invoked by invoking the interface method it implements.  












## Reference
1. Oracle Java Official Tutorials https://docs.oracle.com/javase/tutorial/java/javaOO/lambdaexpressions.html
2. Java Lambda Expressions http://tutorials.jenkov.com/java/lambda-expressions.html
3. Java Lambda ten Examples(Chinese) http://www.importnew.com/16436.html
