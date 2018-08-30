## AngularJS 

AngularJS extends HTML with new attributes. AngularJS is perfect for Single Page Applications (SPAs). 

1. AngularJS Introduction  
  AngularJS is a JavaScript framework. It can be added to an HTML page with a <script> tag.  
  AngularJS extends HTML attributes with Directives, and binds data to HTML with Expressions.  
  It is a library written in JavaScript.  
  `<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>`    
  ##### AngularJS Directives
  
  AngularJS extends HTML with **ng-directives**:  
  **ng-app**: defines an AngularJS application (tells AngularJS that the \<div\> element is the "owner" of an AngularJS application)   
  **ng-model**: binds the value of HTML controls (input, select, textarea) to application data(binds the value of the input field to the application variable name)  
  **ng-bind**: binds application data to the HTML view(binds the innerHTML of the \<p\> element to the application variable name)  
  ##### AngularJS Directives
  AngularJS directives are HTML attributes with an ng prefix:  
  **ng-init**: initializes AngularJS application variables  
  
  ##### AngularJS Expressions
  AngularJS expressions are written inside double braces: **{{expression}}**  
  AngularJS Applications:  
  AngularJS modules define AngularJS applications.    
  AngularJS controllers control AngularJS applications.  
  The ng-app directive defines the application, the ng-controller directive defines the controller.  
  
  ##### AngularJS Applications  
  AngularJS modules define AngularJS applications.  
  AngularJS controllers control AngularJS applications.   
  The **ng-app** directive defines the application, the **ng-controller** directive defines the controller.   
  
  AngularJS Module:  
  ```var app = angular.module('myApp', []);```  
  AngularJS Controller:  
  ```
  app.controller('myCtrl', function($scope) {
    $scope.firstName= "John";
    $scope.lastName= "Doe";
  });
  ```
  


2. AngularJS Expressions  
   (1) `{{ expression }}`   
   (2) `ng-bind="expression"`  
   (Both need ng-app directive, if ng-app directive was removed, HTML will display the expression as it is, without solving it)  
   Numbers, Strings, Objects, Arrays, 
   
   **AngularJS Expressions vs. JavaScript Expressions:**  
   Like JavaScript expressions, AngularJS expressions can contain literals, operators, and variables.  
   Unlike JavaScript expressions, AngularJS expressions can be written inside HTML.  
   AngularJS expressions do not support conditionals, loops, and exceptions, while JavaScript expressions do.  
   AngularJS expressions support filters, while JavaScript expressions do not.  
   
   
3. AngularJS Modules   
   An AngularJS module defines an application.   
   The module is a container for the different parts of an application.   
   The module is a container for the application controllers.  
   Controllers always belong to a module.  
   
   
  


