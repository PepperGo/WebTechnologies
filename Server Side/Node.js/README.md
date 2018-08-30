# Node.js

## What is Node.js?
Node.js is an open source server framework
Node.js is free
Node.js runs on various platforms (Windows, Linux, Unix, Mac OS X, etc.)
Node.js uses JavaScript on the server


**Node.js uses asynchronous programming!**

## Node.js Modules
onsider modules to be the same as JavaScript libraries.  

A set of functions you want to include in your application.  

### Include Modules
To include a module, use the require() function with the name of the module:  
```var http = require('http');```    

### Create Your Own Modules
Use the exports keyword to make properties and methods available outside the module file.   
```
exports.myDateTime = function () {
    return Date();
};

```
   
```
var http = require('http');
var dt = require('./myfirstmodule');

http.createServer(function (req, res) {
    res.writeHead(200, {'Content-Type': 'text/html'});
    res.write("The date and time are currently: " + dt.myDateTime());
    res.end();
}).listen(8080);

```    

## Node.js HTTP Module


## Node.js File System Module


## Node.js URL Module


