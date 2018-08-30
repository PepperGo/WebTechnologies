## Basics

### Meteor - Templates
Meteor templates are using three top level tags.   
The first two are **head** and **body**. These tags perform the same functions as in regular HTML.   
The third tag is **template**. This is the place, where we connect HTML to JavaScript. 


#### Simple Template
[Sample](https://www.tutorialspoint.com/meteor/meteor_templates.htm)  
Our template tag is created below the body element, however, we need to include it before it is rendered on the screen. We can do it by using **{{> myParagraph}}** syntax.  
In our template, we are using double curly braces **{{text}}**. This is meteor template language called **Spacebars**.

#### Block Template
[Sample](https://www.tutorialspoint.com/meteor/meteor_templates.htm)    
In the following example, we are using **{{#each paragraphs}}** to iterate over the paragraphs array and return template name = "paragraph" for each value.  


### Meteor - Collections  
[Sample](https://www.tutorialspoint.com/meteor/meteor_collections.htm)   
Create, read, update and delete  

### Meteor - Forms  
[Sample](https://www.tutorialspoint.com/meteor/meteor_forms.htm)  
Text Input, Radio Button, Checkbox, Select Dropdown   

### Meteor - Events
[Sample](https://www.tutorialspoint.com/meteor/meteor_events.htm)  
how to use tag, class and id as an event selector  

### Meteor - Session
[Sample](https://www.tutorialspoint.com/meteor/meteor_session.htm)  
Sessions are used for saving data while the users are using the app. This data will be deleted when the user leaves the app.  

### Meteor - Tracker
[Sample](https://www.tutorialspoint.com/meteor/meteor_tracker.htm)   
Tracker is a small library used for auto updating templates once the Session variable has changed.  

### Meteor - Packages  
[Sample](https://www.tutorialspoint.com/meteor/meteor_packages.htm)  
Meteor offers thousands of community packages that you can use while developing your app.   
Adding, Removing, Updating, Checking Current Packages, Package Maintenance   

### Meteor - Core Api  
 limit the code to run only on the server or the client side  
```
if (Meteor.isClient) {
   // Code running on client...
}

if (Meteor.isServer) {
   // Code running on server...
}
```   
 limit the code to run only when the app is using Cordova bundling    
 
 ```
 if (Meteor.isCordova) {
   // Code running on Cordova...
}
 
 ```   
 Some plugins need to wait until the server and DOM are ready. You can use the following code to wait until everything begins.  
 ```
 Meteor.startup(function () {
   // Code running after platform is ready...
});
 ```  
 
### Meteor - Check  
The check method is used for find out if the argument or types are matching the pattern.  
 
### Meteor - Blaze  
Blaze is a Meteor package for building live reactive templates.  
[Sample](https://www.tutorialspoint.com/meteor/meteor_blaze.htm)      
Render Method, Render with Data, Remove Method
 
### Meteor - Timers
Meteor offers its own setTimeout and setInterval methods. These methods are used to make sure that all global variables have correct values.   
They work like regular JavaScript setTimout and setInterval.   

### Meteor - EJSON
EJSON is an extension of JSON syntax that supports Date and Binary types.  

### Meteor - HTTP
This package provides HTTP request API with get, post, put and delete methods.   

### Meteor - Email

### Meteor - Assets
Static server assets are located in a private subfolder inside the app.   

### Meteor - Security
how to secure our app and what should be taken into consideration while developing an app

### Meteor - Sorting
We can sort the data once we get it from the database.

### Meteor - Accounts  
This package allows complete user authentication functionality.  

### Meteor - Methods
Meteor methods are functions that are written on the server side, but can be called from the client side.  
Using Methods, Handling Errors  

### Meteor - Package.js  
Creating a Package, Adding a Package, Testing Package (package-name-test.js), Using a Package

### Meteor - Publish and Subscribe
As already discussed in the Collections chapter, all of our data is available on the client side. This is a security issue that can be handled with publish and subscribe methods.  
Removing Autopublish, Using Publish and Subscribe, Filtering Client Data  

### Meteor - Structure
Meteor offers some special folders that can help the developers’ in structuring their apps.    
#### client
If you create a **client** folder, everything inside this folder will be run on the client side.   
This is the folder where you can place your **HTML, CSS**, and client side **JavaScript**.   
You should place **Meteor.subscribe** functions, templates, helpers, and events inside this folder.    
Note, you don't need to run the **Meteor.isClient** function in the files that are placed inside the client folder.  

#### server
Files from this folder will only be run on the **server side**. This is the place where methods, Meteor.Publish() functions, and other sensitive data should be held.   
All of the authentication data should be held here. You don't need to use Meteor.isServer() for the files inside this folder.

#### public
This is the place where you should place your images, favicons, and all the other data that is served to the client.  

#### private
Files from this folder can be accessed only from the server. They will be hidden from the client. You can put JSON or EJSON files that only the server will use inside this folder.  

#### client/compatibility
Some JavaScript libraries export variables as globals. Use this folder for files that need to be executed without being wrapped in a new variable scope.  

#### The rest
The rest of the folders can be structured the way you want. The code that is placed outside of the folders mentioned above will be executed on the client and the server side. This is a good place where you can define your models.   

#### Load Order
It is always good to know load order of the files. The following list is taken from the Meteor Official Documentation.
- HTML template files are always loaded before everything else
- Files beginning with main. are loaded last
- Files inside any lib/ directory are loaded next
- Files with deeper paths are loaded next
- Files are then loaded in an alphabetical order of the entire path  

### Meteor - Deployment
One of the great things about Meteor is how easy is to deploy the app. Once your app is completed, there is an easy way to share it with the world. All you have to do is run the following code in the command prompt window.  

