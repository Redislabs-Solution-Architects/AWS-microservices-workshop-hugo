---
title: "Search under the covers"
weight: 20
---
Let's look under the covers and get to grips with search using [RedisInsight]

In [RedisInsight] select ‘RediSearch’ on the left hand side. At the top on the middle right you’ll see a drop down showing the first of two indexes: `ms:search:index:movies` (the other being `ms:search:index:actors`).

These indexes were created by the application - we’ll dig into them more shortly.

To execute a search similar to the ‘Search’ page you saw earlier, type ‘marry’ in the search query bar and hit return.

You’ll see the actual underlying redis command (`FT.SEARCH ms:search:index:movies marry`)  that was run, and the results. (Read the [FT.SEARCH] documentation for details.)

Now copy that command to the Redis CLI (you’ll find that in [RedisInsight] as a menu item on the left hand side), paste it in and run it there to see the raw output.



[FT.SEARCH]: https://oss.redislabs.com/redisearch/Commands/#ftsearch
[RedisInsight]: http://localhost:8001
