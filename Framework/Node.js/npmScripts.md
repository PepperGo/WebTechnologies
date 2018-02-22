# npm script

## What is npm script?
In package.json, use ```scripts``` define npm script.

```
{
  // ...
  "scripts": {
    "build": "node build.js"
  }
}
```
Use npm run to run this script.
```
$ npm run build
# same to
$ node build.js
```



## Reference
1. [npm scripts 使用指南](http://www.ruanyifeng.com/blog/2016/10/npm_scripts.html)
2. [package.json-Specifics of npm's package.json handling](https://docs.npmjs.com/files/package.json)
