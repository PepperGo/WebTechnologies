# Gradle
Gradle is an open source, advanced general purpose build management system.  


## Features of Gradle
- Declarative builds and build-by-convention
- Language for dependency based programming
- Structure your build 
- Deep API
- Gradle scales
- Multi-project builds 
- Different ways to manage your builds
- First build integration tool 
- Ease of migration
- Gradle Wrapper
- Free open source
- Groovy

## Gradle - Build Script
Gradle builds a script file for handling two things; one is projects and another one is tasks.
A project is made up of different tasks. A task means a piece of work which a build performs. A task might be compiling some classes, creating a JAR, generating Javadoc, or publishing some archives to a repository.

### build.gradle
You can run a Gradle build using the Gradle command. This command looks for a file called build.gradle. 
The Gradle script mainly uses two real Objects; one is Project Object and another one is Script Object.
- Project Object 
Each script describes about one or multiple projects. While in the execution, this script configures the Project Object. You can call some methods and use property in your build script which are delegated to the Project Object.
- Script Object
Gradle takes script code into classes, which implements Script Interface and then executes. This means that of all the properties and methods declared by the script interface are available in your script.


## Gradle - Tasks

## Gradle - Dependency Management
Gradle build script defines a process to build projects; each project contains some dependencies and some publications.   

Gradle takes care of **building** and **publishing** the outcomes somewhere. 

### Declaring Your Dependencies
e.g. Use this code in build.gradle file.
```
apply plugin: 'java'

repositories {
   mavenCentral()
}

dependencies {
   compile group: 'org.hibernate', name: 'hibernate-core', version: '3.6.7.Final'
   testCompile group: 'junit', name: 'junit', version: '4.+'
}

```

### Dependency Configurations
- Compile 
The dependencies required to compile the production source of the project.

- Runtime
The dependencies required by the production classes at runtime. By default, also includes the compile time dependencies.

- Test Compile
The dependencies required to compile the test source of the project. By default, it includes compiled production classes and the compile time dependencies.

- Test Runtime
The dependencies required to run the tests. By default, it includes runtime and test compile dependencies.

### External Dependencies
External dependencies is a type of dependency. This is a dependency on some files that is built outside the current build, and is stored in a repository of some kind, such as Maven central, corporate Maven or lvy repository, or a directory in the local file system.


### Repositories
While adding external dependencies. Gradle looks for them in a repository. A repository is just a collection of files, organized by group, name and version. 

The following code snippet defines how to define maven repository. Use this code in build.gradle file.  
```
repositories {
   mavenCentral()
}
```  

Following code is to define remote maven. Use this code in build.gradle file.  
```
repositories {
   maven {
      url "http://repo.mycompany.com/maven2"
   }
}
```

### Publishing Artifacts  
Dependency configurations are also used to publish files. These published files are called artifacts. Usually, we use plug-ins to define artifacts. However, you do need to tell Gradle where to publish the artifacts. 

```
apply plugin: 'maven'

uploadArchives {
   repositories {
      mavenDeployer {
         repository(url: "file://localhost/tmp/myRepo/")
      }
   }
}
```


## Reference
1. tutorialspoint-Gradle Tutorial https://www.tutorialspoint.com/gradle/index.htm
2. The Gradle build system- Tutorial http://www.vogella.com/tutorials/Gradle/article.html
