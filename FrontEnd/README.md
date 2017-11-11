# Table of Contents

- [Framework](#Framework)
  - [AngularJS](#AngularJS)
  - [Vue.js](#Vue.js)
  
  
# Framework

## AngularJS
AngularJS extends HTML with new attributes. AngularJS is perfect for Single Page Applications (SPAs). 
1. AngularJS Introduction  
  AngularJS is a JavaScript framework. It can be added to an HTML page with a <script> tag.  
  AngularJS extends HTML attributes with Directives, and binds data to HTML with Expressions.  
  It is a library written in JavaScript.  
  `<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>`    
  
  AngularJS extends HTML with ng-directives:  
  **ng-app**: defines an AngularJS application (tells AngularJS that the \<div\> element is the "owner" of an AngularJS application)   
  **ng-model**: binds the value of HTML controls (input, select, textarea) to application data(binds the value of the input field to the application variable name)  
  **ng-bind**: binds application data to the HTML view(binds the innerHTML of the \<p\> element to the application variable name)      
  **ng-init**: initializes AngularJS application variables  
  
  AngularJS expressions are written inside double braces: **{{expression}}**  
  AngularJS Applications:  
  AngularJS modules define AngularJS applications.    
  AngularJS controllers control AngularJS applications.  
  The ng-app directive defines the application, the ng-controller directive defines the controller.  


2. AngularJS Expressions  
   (1) `{{ expression }}`   
   (2) `ng-bind="expression"`  
   (Both need ng-app directive, if ng-app directive was removed, HTML will display the expression as it is, without solving it)  
   
   

  





## Vue.js
