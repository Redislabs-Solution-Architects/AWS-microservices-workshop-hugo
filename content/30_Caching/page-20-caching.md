---
title: "Turning on Caching"
weight: 20
---
In our application we've made it so you can turn caching on and off simply by operating the slider where it says 'Redis Cache'. If the slider is white then caching is off; if the slider is blue then caching is on.

With caching off hit the refresh button a couple of times and observe whatever latency you get (could be as low as 60mS, or as high as several hundred; it all depends on your network). You'll also see that each time you hit the refresh button the API count goes up - you're consuming those precious resources!

Now slide caching on, and hit the refresh button **ONCE** only. You'll see little to no change in the latency figure, and you'll see that the API count has increased. 

Hit the refresh button again, as many times as you like. You should see two things:

* Firstly, the latency has dropped dramatically to 0 or 1mS - that's very quick!
* Secondly, you're no longer consuming those precious API calls!

The reduction in latency is the standard use case that most people know Redis for. The conservation of resources is an interesting application of Redis, and leads into a whole area of rate limiting which we won’t get into here, but is well documented elsewhere. (This is just one of many use cases where Redis is surprisingly useful, despite being ‘just’ a REmote DIctionary Server.)

