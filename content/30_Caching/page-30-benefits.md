---
title: "Redis Caching Benefits"
weight: 30
---
The reduction in latency is the standard use case that most people know Redis for. The conservation of resources is an interesting application of Redis, and leads into a whole area of rate limiting which we won’t get into here, but is well documented elsewhere. (This is just one of many use cases where Redis is surprisingly useful, despite being ‘just’ a **RE**mote **DI**ctionary **S**erver.)

Because Redis is an in-memory datastore it scales very well so, although we aren’t showing it here, the fact that you’ve put Redis in front of OMDB now gives your application massive scale. That scale far exceeds what OMDB can do in terms of queries per second (don’t forget, only 1000 queries per DAY unless you pay more), while maintaining 1 mS latency. 
