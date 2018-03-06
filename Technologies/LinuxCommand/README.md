# Some linux command useful in work


- 1. When I found lots of ports are took place by threads named chromedri, and I wanted to kill all of them:
```
kill -9 $(ps -ef|grep chromedri |awk '$0 !~/grep/ {print $2}' |tr -s '\n' ' ')
```
