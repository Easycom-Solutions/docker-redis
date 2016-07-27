# Custom docker image for redis

Add a custom configuration file to redis default image to use redis for cache.

## Test

To test the server by CLI, use this command:

```bash
docker run --rm --link redis:redis -it easycom/redis redis-cli -h redis -p 6379
```
