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
### Solution: pending
