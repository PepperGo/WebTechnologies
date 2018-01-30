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
To ensure the database is clean, the ```xolvio:cleaner``` package is useful. You can use it to reset the database in a ```beforeEach``` block:

```
import { resetDatabase } from 'meteor/xolvio:cleaner';
describe('my module', function () {
  beforeEach(function () {
    resetDatabase();
  });
});

```

This technique will only work on the server. If you need to reset the database from a client test, you can use a method to do so:
```
import { resetDatabase } from 'meteor/xolvio:cleaner';
// NOTE: Before writing a method like this you'll want to double check
// that this file is only going to be loaded in test mode!!
Meteor.methods({
  'test.resetDatabase': () => resetDatabase(),
});
describe('my module', function (done) {
  beforeEach(function (done) {
    // We need to wait until the method call is done before moving on, so we
    // use Mocha's async mechanism (calling a done callback)
    Meteor.call('test.resetDatabase', done);
  });
});
```

### Generating test data
Often it’s sensible to create a set of data to run your test against. You can use standard insert() calls against your collections to do this, but often it’s easier to create factories which help encode random test data. A great package to use to do this is ```dburles:factory```.  

In the Todos example app(refer to [Todos Example](https://www.meteor.com/tutorials/react/creating-an-app)), we define a factory to describe how to create a test todo item, using the faker npm package:
```
import faker from 'faker';
Factory.define('todo', Todos, {
  listId: () => Factory.get('list'),
  text: () => faker.lorem.sentence(),
  createdAt: () => new Date(),
});

```

To use the factory in a test, we simply call ```Factory.create```:
```
// This creates a todo and a list in the database and returns the todo.
const todo = Factory.create('todo');
// If we have a list already, we can pass in the id and avoid creating another:
const list = Factory.create('list');
const todoInList = Factory.create('todo', { listId: list._id });

```



### Mocking the database
As ```Factory.create``` directly inserts documents into the collection that’s passed into the ```Factory.define``` function, it can be a problem to use it on the client. However there’s a neat isolation trick that you can do to replace the server-backed Todos client collection with a mocked out local collection, that’s encoded in the ```hwillson:stub-collections``` package.

```
import StubCollections from 'meteor/hwillson:stub-collections';
import { Todos } from 'path/to/todos.js';
StubCollections.stub(Todos);
// Now Todos is stubbed to a simple local collection mock,
//   so for instance on the client we can do:
Todos.insert({ a: 'document' });
// Restore the `Todos` collection
StubCollections.restore();
```
In a Mocha test, it makes sense to use ```stub-collections``` in a ```beforeEach/afterEach``` block.



For more details, please refer to [Test data](https://guide.meteor.com/testing.html#test-data)



## Reference
1. How to test your Meteor application https://guide.meteor.com/testing.html
2. Mocha Official Documentation https://mochajs.org/
3. [Getting Started with Node.js and Mocha](https://semaphoreci.com/community/tutorials/getting-started-with-node-js-and-mocha)

