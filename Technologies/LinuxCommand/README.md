# Some linux command useful in work


- 1. When I found lots of ports are took place by threads named chromedri, and I wanted to kill all of them:
```
kill -9 $(ps -ef|grep chromedri |awk '$0 !~/grep/ {print $2}' |tr -s '\n' ' ')
```


- 2. 1. How to detele file .DS_Sore. [Details in Chinese](https://www.jianshu.com/p/fdaa8be7f6c3)
```
find . -name '*.DS_Store' -type f -delete
```