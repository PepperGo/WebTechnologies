# Play Framework
Play is a series of libraries available in Maven Repository, so you can use any Java build tool to build a Play project.   
However, much of the development experience Play is known for (routes, templates compilation and auto-reloading) is provided by SBT


## Install

Refer to the [SBT download page](http://www.scala-sbt.org/download.html) to install the SBT launcher on your system, which provides the sbt command.  
./sbt and sbt.bat launchers for Unix and Windows environments   

## SBT
Refer to [SBT Section](https://github.com/PepperGo/WebTechnologies/new/master/Technologies) for more details.


# Create a new application using SBT
If you have sbt 0.13.13 or higher installed, you can create your own Play project using sbt new using a minimal giter8 template (roughly like a maven archetype). This is a good choice if you already know Play and want to create a new project immediately.  

```
Note: If running Windows, you may need to run sbt using sbt.bat instead of sbt. This documentation assumes the command is sbt.
```  

Note that the seed templates are already configured with CSRF and security headers filters, whereas the other projects are not specifically set up for security out of the box.  

## Play Java Seed
```sbt new playframework/play-java-seed.g8```
## Play Scala Seed
```sbt new playframework/play-scala-seed.g8```
After that, use sbt run and then go to http://localhost:9000 to see the running server.

# Using the SBT console
## Launching the console
The SBT console is a development console based on sbt that allows you to manage a Play application’s complete development cycle.  

To launch the Play console, change to the directory of your project, and run sbt:
```
$ cd my-first-app
$ sbt
```  
You will see:
```
D:\Workspace\WorkspaceWeb\Play\play-java-starter-example>.\sbt-dist\bin\sbt.bat
Java HotSpot(TM) 64-Bit Server VM warning: ignoring option MaxPermSize=256m; support was removed in 8.0
[info] Loading settings from plugins.sbt ...
[info] Loading project definition from D:\Workspace\WorkspaceWeb\Play\play-java-starter-example\project
[info] Loading settings from build.sbt ...
[info] Set current project to play-java-starter-example (in build file:/D:/Workspace/WorkspaceWeb/Play/play-java-starter-example/)
[info] sbt server started at 127.0.0.1:5719

```

## Running the server in development mode
To run the current application in development mode, use the run command:  
```
[my-first-app] $ run
```
You will see:
```

--- (Running the application, auto-reloading is enabled) ---

[info] p.c.s.AkkaHttpServer - Listening for HTTP on /0:0:0:0:0:0:0:0:9000

(Server started, use Enter to stop and go back to the console...)

[info] application - ApplicationTimer demo: Starting application at 2017-12-22T05:59:58.704Z
[warn] application - Using the following cache for assets configuration:
         enabledCaching = false
         enabledCacheControl = false
         defaultCacheControl = public, max-age=3600
         aggressiveCacheControl = public, max-age=31536000, immutable
         configuredCacheControl:


[info] p.a.h.EnabledFilters - Enabled Filters (see <https://www.playframework.com/documentation/latest/Filters>):

    play.filters.csrf.CSRFFilter
    play.filters.headers.SecurityHeadersFilter
    play.filters.hosts.AllowedHostsFilter
    filters.ExampleFilter

[info] play.api.Play - Application started (Dev)
[info] p.c.s.AkkaHttpServer - Stopping server...
[info] application - ApplicationTimer demo: Stopping application at 2017-12-22T06:00:59.036Z after 61s.

```
To stop the server, type Ctrl+D key (or Enter key), and you will be returned to the Play console prompt.  

## Compiling
In Play you can also compile your application without running the server. Just use the compile command. It shows any compilation problems your app may have:  
``` [my-first-app] $ compile ```
You will see  
```
[play-java-starter-example] $ compile
[success] Total time: 1 s, completed Dec 22, 2017 9:16:10 AM
```

## Running the tests
```[my-first-app] $ test```
You will see  
```
[info] Compiling 3 Java sources to D:\Workspace\WorkspaceWeb\Play\play-java-starter-example\target\scala-2.12\test-classes ...
[info] Done compiling.
[info] Test run started
[info] Test UnitTest.simpleCheck started
[info] Test UnitTest.testAsync started
[info] Test UnitTest.testCount started
[info] Test run finished: 0 failed, 0 ignored, 3 total, 2.099s
[info] Test run started
[info] Test BrowserTest.test started
[info] application - ApplicationTimer demo: Starting application at 2017-12-22T15:17:31.591Z
[warn] application - Using the following cache for assets configuration:
         enabledCaching = true
         enabledCacheControl = false
         defaultCacheControl = public, max-age=3600
         aggressiveCacheControl = public, max-age=31536000, immutable
         configuredCacheControl:


[info] application - ApplicationTimer demo: Stopping application at 2017-12-22T15:17:35.004Z after 4s.
[info] Test run finished: 0 failed, 0 ignored, 1 total, 4.634s
[info] Test run started
[info] Test FunctionalTest.renderTemplate started
[info] application - ApplicationTimer demo: Starting application at 2017-12-22T15:17:35.123Z
[warn] application - Using the following cache for assets configuration:
         enabledCaching = true
         enabledCacheControl = false
         defaultCacheControl = public, max-age=3600
         aggressiveCacheControl = public, max-age=31536000, immutable
         configuredCacheControl:


[info] application - ApplicationTimer demo: Stopping application at 2017-12-22T15:17:35.164Z after 0s.
[info] Test run finished: 0 failed, 0 ignored, 1 total, 0.154s
[info] Passed: Total 5, Failed 0, Errors 0, Passed 5
[success] Total time: 12 s, completed Dec 22, 2017 9:17:35 AM
```   

## Launch the interactive console

Type console to enter the interactive Scala console, which allows you to test your code interactively:  
```[my-first-app] $ console```  

To start application inside scala console (e.g. to access database):  
```
import play.api._
val env = Environment(new java.io.File("."), this.getClass.getClassLoader, Mode.Dev)
val context = ApplicationLoader.createContext(env)
val loader = ApplicationLoader(context)
val app = loader.load(context)
Play.start(app)

```  

## Debugging
You can ask Play to start a JPDA debug port when starting the console. You can then connect using Java debugger. Use the sbt -jvm-debug <port> command to do that:  
 ```$ sbt -jvm-debug 9999```   
 
## Using the play commands directly
 You can also run commands directly without entering the Play console. For example, enter ```sbt run:```


# Setting up your preferred IDE

For Eclipse:
1. Add sbteclipse to your plugin definition file (or create one if doesn't exist). You can use either:
```
the global file (for version 0.13 and up) at ~/.sbt/0.13/plugins/plugins.sbt
the project-specific file at PROJECT_DIR/project/plugins.sbt
```   

For the latest version:
After a first successful compile, a Play application looks like this:
```
addSbtPlugin("com.typesafe.sbteclipse" % "sbteclipse-plugin" % "5.2.4")
```   

2. In sbt use the command eclipse to create Eclipse project files  
```
> eclipse
```  

3. In Eclipse use the Import Wizard to import Existing Projects into Workspace  


Please refer to [Official Document](https://www.playframework.com/documentation/2.6.x/IDE)

# Anatomy of a Play application
```
app                      → Application sources
 └ assets                → Compiled asset sources
    └ stylesheets        → Typically LESS CSS sources
    └ javascripts        → Typically CoffeeScript sources
 └ controllers           → Application controllers
 └ models                → Application business layer
 └ views                 → Templates
build.sbt                → Application build script
conf                     → Configurations files and other non-compiled resources (on classpath)
 └ application.conf      → Main configuration file
 └ routes                → Routes definition
dist                     → Arbitrary files to be included in your projects distribution
public                   → Public assets
 └ stylesheets           → CSS files
 └ javascripts           → Javascript files
 └ images                → Image files
project                  → sbt configuration files
 └ build.properties      → Marker for sbt project
 └ plugins.sbt           → sbt plugins including the declaration for Play itself
lib                      → Unmanaged libraries dependencies
logs                     → Logs folder
 └ application.log       → Default log file
target                   → Generated stuff
 └ resolution-cache      → Info about dependencies
 └ scala-2.11
    └ api                → Generated API docs
    └ classes            → Compiled class files
    └ routes             → Sources generated from routes
    └ twirl              → Sources generated from templates
 └ universal             → Application packaging
 └ web                   → Compiled web assets
test                     → source folder for unit or functional tests

```
For more details of each directory, please refer to [Official Document](https://www.playframework.com/documentation/2.6.x/Anatomy)  


# Play Tutorials
Please refer to [Play Tutorials](https://github.com/PepperGo/WebTechnologies/new/master/Framework/Play%20framework)


# Reference
1. Play 2.6.x documentation https://playframework.com/documentation/2.6.x/Home
