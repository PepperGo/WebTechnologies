# Selenium
Test automation has specific advantages for improving the long-term efficiency of a software team’s testing processes.  
Test automation supports:
1. Frequent regression testing  
2. Rapid feedback to developers  
3. Virtually unlimited iterations of test case execution  
4. Support for Agile and extreme development methodologies  
5. Disciplined documentation of test cases  
6. Customized defect reporting  
7. Finding defects missed by manual testing

Selenium is a set of different software tools each with a different approach to supporting test automation.  

The entire suite of tools results in a rich set of testing functions specifically geared to the needs of testing of web applications of all types.   
## Selenium’s Tool Suite  
### Selenium 2 (aka. Selenium WebDriver)

### Selenium 1 (aka. Selenium RC or Remote Control)

### Selenium IDE

### Selenium-Grid  

## Selenium WebDriver
WebDriver’s goal is to supply a well-designed object-oriented API that provides improved support for modern advanced web-app testing problems.  

### WebDriver and the Selenium-Server
You may, or may not, need the Selenium Server, depending on how you intend to use Selenium-WebDriver. If your browser and tests will all run on the same machine, and your tests only use the WebDriver API, then you do not need to run the Selenium-Server; WebDriver will run the browser directly.

There are some reasons though to use the Selenium-Server with Selenium-WebDriver.  
- You are using Selenium-Grid to distribute your tests over multiple machines or virtual machines (VMs).
- You want to connect to a remote machine that has a particular browser version that is not on your current machine.
- You are not using the Java bindings (i.e. Python, C#, or Ruby) and would like to use HtmlUnit Driver

### Setting Up a Selenium-WebDriver Project  
Please refer to [Setting Up a Selenium-WebDriver Project](http://www.seleniumhq.org/docs/03_webdriver.jsp)

### Introducing the Selenium-WebDriver API by Example
Please refer to [Introducing the Selenium-WebDriver API by Example](http://www.seleniumhq.org/docs/03_webdriver.jsp)

### Selenium-WebDriver API Commands and Operations
Please refer to [Selenium-WebDriver API Commands and Operations](http://www.seleniumhq.org/docs/03_webdriver.jsp)

### Selenium-WebDriver’s Drivers

### Alternative Back-Ends: Mixing WebDriver and RC Technologies

### Running Standalone Selenium Server for use with RemoteDrivers


## WebDriver: Advanced Usage
For more details, please refer to [WebDriver: Advanced Usage](http://www.seleniumhq.org/docs/04_webdriver_advanced.jsp)
### Explicit and Implicit Waits

### RemoteWebDriver

### AdvancedUserInteractions

### Browser Startup Manipulation

## Reference
1. Selenium Official Documentation http://www.seleniumhq.org/docs/
2. Selenium tutorial http://toolsqa.com/selenium-tutorial/
3. Selenium tutorial(Chinese) http://www.51testing.com/zhuanti/selenium.html
4. Selenium video tutorial from Youtube https://www.youtube.com/results?search_query=selenium+tutorial
