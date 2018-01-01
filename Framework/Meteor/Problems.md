# These are problems I met when I was using meteor

## >meteor create simple-todos
```
C:\Users\Mark\AppData\Local\.meteor\packages\meteor-tool\1.6.0_1\mt-os.windows.x86_64\dev_bundle\lib\node_modules\meteor-promise\promise_server.js:218
      throw error;
      ^

Error: Error: Could not install npm dependencies for test-packages: Command failed: C:\Windows\system32\cmd.exe /c C:\Users\Mark\AppData\Local\.meteor\packages\meteor-tool\1.6.0_1\mt-os.windows.x86_64\dev_bundle\bin\npm.cmd install
npm ERR! code ENOGIT
npm ERR! No git binary found in $PATH
npm ERR!
npm ERR! Failed using git.
npm ERR! Please check if you have git installed and in your PATH.

npm ERR! A complete log of this run can be found in:
npm ERR!     C:\Users\Mark\AppData\Roaming\npm-cache\_logs\2017-12-20T17_29_01_838Z-debug.log
npm ERR! code ENOGIT
npm ERR! No git binary found in $PATH
npm ERR!
npm ERR! Failed using git.
npm ERR! Please check if you have git installed and in your PATH.

npm ERR! A complete log of this run can be found in:
npm ERR!     C:\Users\Mark\AppData\Roaming\npm-cache\_logs\2017-12-20T17_29_01_838Z-debug.log

    at Object.error (C:\tools\utils\buildmessage.js:430:11)
    at C:\tools\cli\default-npm-deps.js:32:20
    at C:\tools\utils\buildmessage.js:334:18
    at exports.EnvironmentVariable.withValue (C:\tools\utils\fiber-helpers.js:89:14)
    at C:\tools\utils\buildmessage.js:333:36
    at exports.EnvironmentVariable.withValue (C:\tools\utils\fiber-helpers.js:89:14)
    at Object.enterJob (C:\tools\utils\buildmessage.js:324:26)
    at Object.install (C:\tools\cli\default-npm-deps.js:27:27)
    at Command.func (C:\tools\cli\commands.js:799:36)
    at C:\tools\cli\main.js:1522:15

```
### Solution: 
Check Git Environment Variable and add it into SYSTEM PATH


## meteor
```
D:\Workspace\WorkspaceWeb\Meteor\simple-todos>meteor
[[[[[ ~\D\Workspace\WorkspaceWeb\Meteor\simple-todos ]]]]]

=> Started proxy.
=> Errors prevented startup:

   While building for web.browser:
   imports/components/todosList/todosList.js:20: Unexpected token (20:0)

=> Your application has errors. Waiting for file change.
=> Started MongoDB.
```
### Solution: 
The codes in official tutorial is wrong.
One more line should be added: ```export default angular.module('todosList', [])```

# TESTING
## meteor add practicalmeteor:mocha
```
>meteor add practicalmeteor:mocha
practicalmeteor:mocha without a version constraint has already been added.
``` 
### Solution

```>meteor add practicalmeteor:mocha@=2.4.5-rc5.5 ```  
```
Currently using practicalmeteor:mocha without any version constraint.
The version constraint will be changed to =2.4.5-rc5.5.

Changes to your project's package version selections:

practicalmeteor:mocha  downgraded from 2.4.5_6 to 2.4.5-rc5.5


practicalmeteor:mocha: Write package tests with mocha and run them in the browser or from the command line with
spacejam.

```

## meteor test --driver-package practicalmeteor:mocha
```>meteor test --driver-package practicalmeteor:mocha```
```
C:\Users\Mark\AppData\Local\.meteor\packages\meteor-tool\1.6.0_1\mt-os.windows.x86_64\dev_bundle\lib\node_modules\meteor-promise\promise_server.js:218
      throw error;
      ^

Error: EPERM: operation not permitted, symlink 'C:\Users\Mark\AppData\Local\.meteor\packages\meteor-tool\1.6.0_1\mt-os.windows.x86_64\dev_bundle\server-lib\node_modules\' -> 'C:\Users\Mark\AppData\Local\Temp\meteor-test-runljvdy2.t0t9n\.meteor\local\build\programs\server\node_modules'
    at Object.fs.symlinkSync (fs.js:1014:18)
    at Object.wrapper (C:\tools\fs\files.js:1558:35)
    at Object.files.cp_r (C:\tools\fs\files.js:492:11)
    at files.readdir.forEach.f (C:\tools\fs\files.js:479:13)
    at Array.forEach (<anonymous>)
    at Object.files.cp_r (C:\tools\fs\files.js:466:25)
    at files.readdir.forEach.f (C:\tools\fs\files.js:479:13)
    at Array.forEach (<anonymous>)
    at Object.files.cp_r (C:\tools\fs\files.js:466:25)
    at files.readdir.forEach.f (C:\tools\fs\files.js:479:13)
    at Array.forEach (<anonymous>)
    at Object.files.cp_r (C:\tools\fs\files.js:466:25)
    at copyDirIntoTestRunnerApp (C:\tools\cli\commands.js:1786:15)
    at doTestCommand (C:\tools\cli\commands.js:1792:5)
    at Command.func (C:\tools\cli\commands.js:1576:10)
    at C:\tools\cli\main.js:1522:15
```

### Solution
Use the cmd as administrator 
```>meteor test --driver-package practicalmeteor:mocha
[[[[[ Tests ]]]]]

=> Started proxy.
=> Started MongoDB.
W20180101-11:02:58.874(-6)? (STDERR) Note: you are using a pure-JavaScript implementation of bcrypt.
W20180101-11:02:59.326(-6)? (STDERR) While this implementation will work correctly, it is known to be
W20180101-11:02:59.327(-6)? (STDERR) approximately three times slower than the native implementation.
W20180101-11:02:59.328(-6)? (STDERR) In order to use the native implementation instead, run
W20180101-11:02:59.328(-6)? (STDERR)
W20180101-11:02:59.328(-6)? (STDERR)   meteor npm install --save bcrypt
W20180101-11:02:59.329(-6)? (STDERR)
W20180101-11:02:59.329(-6)? (STDERR) in the root directory of your application.
=> Started your app.

=> App running at: http://localhost:3000/
   Type Control-C twice to stop.
```
