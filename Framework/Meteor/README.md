# Meteor

## What is Meteor?
Meteor is a full-stack JavaScript platform for developing modern web and mobile applications.   
Meteor includes a key set of technologies for building connected-client reactive applications, a build tool, and a curated set of packages from the Node.js and general JavaScript community.
1. Meteor allows you to develop in **one language**, JavaScript, in all environments: application server, web browser, and mobile device.  
2. Meteor uses **data on the wire**, meaning the server sends data, not HTML, and the client renders it.  
3. Meteor **embraces the ecosystem**, bringing the best parts of the extremely active JavaScript community to you in a careful and considered way.  
4. Meteor provides **full stack reactivity**, allowing your UI to seamlessly reflect the true state of the world with minimal development effort.  

## Problem you may face when you are using Meteor
Please refer to [Problems I met](https://github.com/PepperGo/WebTechnologies/blob/master/Framework/Meteor/Problems.md)

## Install
### OSX/LINUX  
```curl https://install.meteor.com/ | sh```

### WINDOWS  
Please see [Install Meteor In Windows](https://github.com/PepperGo/WebTechnologies/blob/master/Framework/Meteor/InstallInWindows.md)

##  Todo App with Angular(From Meteor Offical Tutorial) 
[Project Detail(Official)](https://github.com/meteor/simple-todos-angular)
### 1. Creating your first app  
To create the app, open your terminal and type:  
```meteor create simple-todos```

To run the newly created app:  
```
cd simple-todos
meteor
```
Hopefully, you will see:
```
=> Started proxy.
=> Started MongoDB.
=> Started your app.

=> App running at: http://localhost:3000/
   Type Control-C twice to stop.
```

Open your web browser and go to http://localhost:3000 to see the app running.  

One of the best features of Meteor is reactive programming and hot code pushes.  
For example, try editing the text in \<h1\> inside client\/main.html using your favorite text editor. When you save the file, the page in your browser will automatically update with the new content. We call this "hot code push".  


### 2. Defining views with templates
To use Angular in our app, we first need to remove the default UI package of Meteor, called Blaze.  
```meteor remove blaze-html-templates```  

Now we need to replace it with UI package for angular:  
```meteor add angular-templates```  

To start working with angular-meteor, let's add some NPM packages.  
```meteor npm install --save angular angular-meteor```   



For more detail, please refer to [Todo App with Angular Integrate Meteor and AngularJS](https://www.meteor.com/tutorials/angular/creating-an-app)

### 3. Storing tasks in a collection
Collections are Meteor's way of storing persistent data. The special thing about collections in Meteor is that they can be accessed from both the server and the client, making it easy to write view logic without having to write a lot of server code.   
They also update themselves automatically, so a view component backed by a collection will automatically display the most up-to-date data.  






## Reference
1. Introducing Meteor API Docs http://docs.meteor.com
2. Getting Started with Meteor.js JavaScript Framework(Isaac Strack)
3. Official tutorial https://www.meteor.com/tutorials/blaze/creating-an-app
4. Meteor Guide(intermediate material) https://guide.meteor.com
