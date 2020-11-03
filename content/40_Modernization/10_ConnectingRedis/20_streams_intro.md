---
title: "Introducing Redis Streams"
weight: 20
---
Let's dive under the covers and see Redis Streams through the lens of [RedisInsight].

Go to the Streams section of [RedisInsight]. You will see three streams defined there. Make sure ‘Stream Data’ is selected (it should be black) and select any one of the streams. You’ll see a table showing data in that stream along with a timestamp of when each entry was added.

To see the processing side of the stream select ‘Consumer Groups’  at the top. You’ll see that for the movies and actors streams there are active consumer groups, but that the theaters stream has no consumer group. This means that events in the movies and actors streams are being consumed, but that nothing is consuming any event in the theaters stream



[RedisInsight]: http://localhost:8001
