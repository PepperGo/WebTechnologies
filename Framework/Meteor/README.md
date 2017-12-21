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

##  Todo App(From Meteor Offical Tutorial) 
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
#### For use Angular
To use Angular in our app, we first need to remove the default UI package of Meteor, called Blaze.  
```meteor remove blaze-html-templates```  

Now we need to replace it with UI package for angular:  
```meteor add angular-templates```  

To start working with angular-meteor, let's add some NPM packages.  
```meteor npm install --save angular angular-meteor```   

For more detail, please refer to [Todo App with Angular Integrate Meteor and AngularJS](https://www.meteor.com/tutorials/angular/creating-an-app)

#### For Blaze(default)
#### 2.1 Remove starter HTML code

#### 2.2 Add starter HTML code

#### 2.3 Add starter JS code

#### 2.4 Import starter JS

#### 2.5 Add CSS

### 3. Storing tasks in a collection
Collections are Meteor's way of storing persistent data. The special thing about collections in Meteor is that they can be accessed from both the server and the client, making it easy to write view logic without having to write a lot of server code.   
They also update themselves automatically, so a view component backed by a collection will automatically display the most up-to-date data.  

Creating a new collection is as easy as calling ```MyCollection = new Mongo.Collection("my-collection"); ```in your JavaScript. 
On the server, this sets up a MongoDB collection called ```my-collection```; on the client, this creates a cache connected to the server collection. 
#### 3.1 Create tasks collection
Notice that we place this file in a new imports/api directory. This is a sensible place to store API-related files for the application. We will start by putting "collections" here and later we will add "publications" that read from them and "methods" that write to them. 
#### 3.2 Load tasks collection on the server

#### 3.3 Load tasks from Tasks collection


For more detail, please refer to [Storing tasks in a collection](https://www.meteor.com/tutorials/angular/collections)

### 4. Adding tasks with a form
#### 4.1  Add form for new tasks

#### 4.2  Add method for form submit

#### 4.3  Show newest tasks at the top

### 5. Checking off and deleting tasks
Now, we will learn how to update and remove them.

#### 5.1  Add buttons to Task component

#### 5.2 Remove the previous task template 

#### 5.3  Add event handlers for Task buttons

#### 5.4  Import Task component from the body

### 6. Running your app on Android or iOS


### 7. Storing temporary UI state in a Reactive Dictionary
In this step, we'll add a client-side data filtering feature to our app, so that users can check a box to only see incomplete tasks. We're going to learn how to use a ReactiveDict to store temporary reactive state on the client. A ReactiveDict is like a normal JS object with keys and values, but with built-in reactivity.
#### 7.1  Add hide-completed checkbox to HTML

#### 7.2  Add the reactive-dict package

#### 7.3  Add state dictionary to the body

#### 7.4  Add event handler for checkbox

#### 7.5  Add helpers to body template

#### 7.6  Add incompleteCount helper to body

#### 7.7  Display incompleteCount

### 8. Adding user accounts

#### 8.1 To enable the accounts system and UI, we need to add the relevant packages.
```meteor add accounts-ui accounts-password```

#### 8.2  Include loginButtons

#### 8.3  Configure accounts-ui

#### 8.4  Import accounts configuration

#### 8.5  Update insert to include user data

#### 8.6  Only show add task form if logged in

#### 8.7  Display username next to task

### 9. Security with methods
#### 9.1 Removing insecure
Every newly created Meteor project has the insecure package added by default. This is the package that allows us to edit the database from the client. It's useful when prototyping, but now we are taking off the training wheels. 
``` meteor remove insecure ```

#### 9.2  Define some methods

#### 9.3  Replace insert with addTask method

#### 9.4  Replace update and remove with methods

### 10. Filtering data with publish and subscribe
Now that we have moved all of our app's sensitive code into methods, we need to learn about the other half of Meteor's security story. Until now, we have worked assuming the entire database is present on the client, meaning if we call Tasks.find() we will get every task in the collection. That's not good if users of our application want to store privacy-sensitive data. We need a way of controlling which data Meteor sends to the client-side database.
#### 10.1 Removing autopublish
All new Meteor apps start with the autopublish package
```meteor remove autopublish```

#### 10.2 Add publication for tasks

#### 10.3 Subscribe to tasks

#### 10.4 Add private button

#### 10.5 Add private class to private tasks

#### 10.6 Define helper to check ownership

#### 10.7 Define method to set tasks to private

#### 10.8 Add event handler to call the setPrivate method

#### 10.9 Only publish tasks the user is allowed to see

#### 10.10 Add some extra security to methods

### 11. Testing(Mocha JavaScript test framework)
We'll write a test that exercises one of our Methods (which form the "write" part of our app's API), and verifies it works correctly.
#### 11.1 Add a test driver for the Mocha JavaScript test framework
```meteor add practicalmeteor:mocha ```

#### 11.2 Add a scaffold for a method test

#### 11.3 Prepare the database for each test

#### 11.4 Added test to check delete method




## Reference
1. Introducing Meteor API Docs http://docs.meteor.com
2. Getting Started with Meteor.js JavaScript Framework(Isaac Strack)
3. Official tutorial https://www.meteor.com/tutorials/blaze/creating-an-app
4. Meteor Guide(intermediate material) https://guide.meteor.com


