---
title: "Redis Streams - summary"
weight: 40
---
We've now shown that we can feed changes from a legacy system (in this case a MySQL database) into Redis using Redis Streams, and that by having Consumer Groups process these streams we get ordering and failure guarantees.

This capability is critical to taking Redis beyond a simple cache and turning it into a system that can really enhance the data that users interact with, all at Redis speeds. 

Lets move on and see some of these further use cases.
