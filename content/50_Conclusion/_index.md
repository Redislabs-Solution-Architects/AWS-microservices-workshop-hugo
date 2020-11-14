---
title: "Conclusion"
weight: 50
---
# Conclusion
In this workshop you have:

* Examined how basic Redis Caching can add value to an external application
* Used [RedisInsight] to interact directly with Redis
* Learned about more sophisticated use of [Redis Streams] and CDC
* Discovered that [RediSearch] is the gateway to really enhancing your application, making it much more interesting and useful to your users

But this is only the beginning. Redis can do much more! For example:

* Redis can count very [large numbers of distinct items in constant space] (great for determining if a user has every logged in before, or if an IP address has ever been used before); 
* Redis can provide [synchronous messaging] between clients (think of game servers, each serving thousands of users, but needing to rapidly send messages about user's status etc. from one server to another)
* Redis can [implement leaderboards] very efficiently; something that SQL really struggles to do!
* Redis supports [geospatial] indexes, so you can easily provide sophisticated mapping interfaces to users

I hope that this has persuaded you to think more about Redis and maybe consider looking it at as so much more than a cache!

----------
[Redisinsight]: https://redislabs.com/redis-enterprise/redis-insight/
[redis streams]: https://redis.io/topics/streams-intro
[redisearch]: https://oss.redislabs.com/redisearch/
[large numbers of distinct items in constant space]: https://redislabs.com/redis-best-practices/counting/hyperloglog/
[synchronous messaging]: https://redis.io/topics/pubsub
[implement leaderboards]: https://redislabs.com/solutions/use-cases/leaderboards/
[geospatial]: https://redislabs.com/redis-best-practices/indexing-patterns/geospatial/
