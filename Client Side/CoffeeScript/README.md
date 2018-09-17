## CoffeeScript
CoffeeScript is a lightweight language based on Ruby and Python which transcompiles (compiles from one source language to another) into JavaScript. It provides better syntax avoiding the quirky parts of JavaScript, still retaining the flexibility and beauty of the language.  


### Advantages of CoffeeScript
- Easily understandable  
CoffeeScript is a shorthand form of JavaScript, its syntax is pretty simple compared to JavaScript. Using CoffeeScript, we can write clean, clear, and easily understandable codes.  

- Write less do more    
For a huge code in JavaScript, we need comparatively very less number of lines of CoffeeScript.

- Reliable    
CoffeeScript is a safe and reliable programming language to write dynamic programs.

- Readable and maintainable   
CoffeeScript provides aliases for most of the operators which makes the code readable. It is also easy to maintain the programs written in CoffeeScript.

- Class-based inheritance   
JavaScript does not have classes. Instead of them, it provides powerful but confusing prototypes. Unlike JavaScript, we can create classes and inherit them in CoffeeScript. In addition to this, it also provides instance and static properties as well as mixins. It uses JavaScript's native prototype to create classes.

- No var keyword   
There is no need to use the var keyword to create a variable in CoffeeScript, thus we can avoid the accidental or unwanted scope deceleration.

- Avoids problematic symbols   
There is no need to use the problematic semicolons and parenthesis in CoffeeScript. Instead of curly braces, we can use whitespaces to differentiate the block codes like functions, loops, etc.

- Extensive library support   
In CoffeeScript, we can use the libraries of JavaScript and vice versa. Therefore, we have access to a rich set of libraries while working with CoffeeScript.


### CoffeeScript - Syntax  
#### CoffeeScript Statements
Unlike many other programming languages like C, C++, and Java, the statements in CoffeeScript **do not end with semicolons (;)**. Instead of that, **every new line** is considered as a separate statement by the CoffeeScript compiler.

#### CoffeeScript Variables (No var Keyword)
While creating variables in CoffeeScript, there is no need to declare them using the var keyword. We can directly create a variable just by assigning a value to it as shown below.  
```
name = "Javed"
age = 20

```  

#### No Parentheses
In CoffeeScript, there is no need to use parentheses, and while creating functions, we use an arrow mark (->) instead of parentheses as shown below.  
```
myfunction = -> alert "Hello"
```  

#### No Curly Braces

#### CoffeeScript Comments
- Single-line Comments  

```
# This is the single line comment in CoffeeScript
```   

- Multiline Comments  
```
###
These are the multi line comments in CoffeeScript
We can write as many number of lines as we want 
within the pair of triple hash tags.
###
```

#### CoffeeScript Reserved keywords
case, else, ...

### CoffeeScript - Data Types
As CoffeeScript compiles line by line to JavaScript, the data types provided by CoffeeScript are same as JavaScript. Except for the fact that CoffeeScript adds some additional essence.  
[Sample](https://www.tutorialspoint.com/coffeescript/coffeescript_datatypes.htm)  

### CoffeeScript - Variables
Variables are nothing but named containers. You can place data into these containers and then refer to the data using the name of its container.  
#### CoffeeScript Variables
no **var**
name = variable name  

#### Variable Scope
- Global Variables   
A global variable has global scope which means it can be used anywhere in your JavaScript code.

- Local Variables   
A local variable will be visible only within a function where it is defined. Function parameters are always local to that function.

### CoffeeScript - Operators and Aliases
[Sample](https://www.tutorialspoint.com/coffeescript/coffeescript_operators_and_aliases.htm)  

### CoffeeScript - Conditionals

### CoffeeScript - Loops
if, if...else, unless,  unless...else, switch
then...

### CoffeeScript - Loops
while, for, for...in 

### CoffeeScript - Comprehensions

### CoffeeScript - Functions  
The function keyword is eliminated in CoffeeScript. To define a function here, we have to use a thin arrow (->).
function_name = -> function_body


## Reference
1. [CoffeeScript Cookbook](https://coffeescript-cookbook.github.io/)  
