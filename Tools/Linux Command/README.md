# Some linux command useful in work

- 4. How to kill a process running on particular port in Linux?
```
lsof -i:8080

kill -9 16085

```
[How to kill a process running on particular port in Linux?](https://stackoverflow.com/questions/11583562/how-to-kill-a-process-running-on-particular-port-in-linux)  


- 3. How do I find all files containing specific text on Linux?
```
grep -rnw '/path/to/somewhere/' -e 'pattern'
```   
[How do I find all files containing specific text on Linux?](https://stackoverflow.com/questions/16956810/how-do-i-find-all-files-containing-specific-text-on-linux)  


- 2. When I found lots of ports are took place by threads named chromedri, and I wanted to kill all of them:
```
kill -9 $(ps -ef|grep chromedri |awk '$0 !~/grep/ {print $2}' |tr -s '\n' ' ')
```


- 1. 1. How to detele file .DS_Sore. [Details in Chinese](https://www.jianshu.com/p/fdaa8be7f6c3)
```
find . -name '*.DS_Store' -type f -delete
```
