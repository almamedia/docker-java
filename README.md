
#### Running /path_to_jar/runnable.jar:

```
docker run --rm \
 -e LOCAL_USER_ID=`id -u $USER`\
 -v /path_to_jar:/app \
  conmio/java java -jar runnable.jar
 ```
