# Testing

## Challenges of testing in Meteor
In most ways, testing a Meteor app is no different from testing any other full stack JavaScript application. However, compared to more traditional backend or front-end focused frameworks, two factors can make testing a little more challenging:
### 1. Client/server data: 
Meteor’s data system makes it simple to bridge the client-server gap and often allows you to build your application without thinking about how data moves around. It becomes critical to test that your code does actually work correctly across that gap. In traditional frameworks where you spend a lot of time thinking about interfaces between client and server you can often get away with testing both sides of the interface in isolation, but Meteor’s full app test mode makes it easy to write integration tests that cover the full stack. Another challenge here is creating test data in the client context; we’ll discuss ways to do this in the section on generating test data below.
### 2. Reactivity 
Meteor’s reactivity system is “eventually consistent” in the sense that when you change a reactive input to the system, you’ll see the user interface change to reflect this some time later. This can be a challenge when testing, but there are some ways to wait until those changes happen to verify the results, for example Tracker.afterFlush().  

## The ‘meteor test’ command
```meteor test```  

``` meteor test --full-app```  

### Driver packages
When you run a ```meteor test``` command, you must provide a ```--driver-package``` argument.   

A test driver is a mini-application that runs in place of your app and runs each of your defined tests, whilst reporting the results in some kind of user interface.  

There are two main kinds of test driver packages:
1. **Web reporters**: Meteor applications that display a special test reporting web UI that you can view the test results in.  

2. **Console reporters**: These run completely on the command-line and are primary used for automated testing like continuous integration.  
### Recommended: Mocha
In this article, we’ll use the popular Mocha test runner alongside the Chai assertion library to test our application.  



## Reference 
1. Meteor official testing documentation https://guide.meteor.com/testing.html
