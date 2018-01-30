# Mocha
> Mocha Official Website 
Mocha is a feature-rich JavaScript test framework running on Node.js and in the browser, making asynchronous testing simple and fun.  
Mocha tests run serially, allowing for flexible and accurate reporting, while mapping uncaught exceptions to the correct test cases.    
  
  
For unit test, the popular Mocha test runner is used alongside the Chai assertion library to test our application. In order to write and run tests in Mocha, we need to add an appropriate test driver package.


## Test Files
Test files themselves (for example a file named ```todos-item.test.js``` or ```routing.app-specs.coffee```) can register themselves to be run by the test driver in the usual way for that testing library. For Mocha, that’s by using ```describe``` and ```it```:
```
describe('my module', function () {
  it('does something that should be tested', function () {
    // This code will be executed by the test driver when the app is started
    // in the correct mode
  })
})

```
Note that arrow function use with Mocha is discouraged.

### Explanation
Mocha gives us the ability to describe the features that we are implementing by giving us a describe function that encapsulates our expectations. The first argument is a simple string that describes the feature, while the second argument is a function that represents the body of the description.  

#### Example
This will demonstrate Mocha usage by implementing a color converter that can translate from RGB (red, green, blue) to hexadecimal color representation.

Our color converter description:
```
describe("Color Code Converter", function() {

});
```
In the body of that description, we will create fine-grained segments that represent our feature in a little bit more detail:
```
describe("Color Code Converter", function() {
  describe("RGB to Hex conversion", function() {
  });

  describe("Hex to RGB conversion", function() {
  });
});


```
We will set up a concrete thing we are testing using the ```it``` feature. The ```it``` function is very similar to the describe function, except that we can only put expectations in the body of the it function. Let's use it for our color converter:  
```
describe("Color Code Converter", function() {
  describe("RGB to Hex conversion", function() {
    it("converts the basic colors", function() {

    });
  });

  describe("Hex to RGB conversion", function() {
    it("converts the basic colors", function() {

    });
  });
});

```



## Test data
When your app is run in test mode, it is initialized with a clean test database.

If you are running a test that relies on using the database, and specifically the content of the database, you’ll need to perform some setup steps in your test to ensure the database is in the state you expect. There are some tools you can use to do this.

For more details, please refer to [Test data](https://guide.meteor.com/testing.html#test-data)



## Reference
1. How to test your Meteor application https://guide.meteor.com/testing.html
2. Mocha Official Documentation https://mochajs.org/
3. [Getting Started with Node.js and Mocha](https://semaphoreci.com/community/tutorials/getting-started-with-node-js-and-mocha)

