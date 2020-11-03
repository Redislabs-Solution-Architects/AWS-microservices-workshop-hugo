---
title: "Connecting to Redis"
chapter: true
weight: 10
---
We're assuming our MySQL database cannot be altered, but we can get some kind of access to it but we want to use Redis to add value to the data in the database. How do we do that?

The way this is done here, and would be done in production, is to link up a Change Data Capture (CDC) system with the MySQL database, and to feed its output into Redis as a stream. The reason to use a CDC is because that’s a minimally invasive technology, well understood in the industry, by which any change to some legacy database results in a time ordered sequence of changes being made available externally. Thus loading data into the database, or changing data in the database becomes visible to external systems such as Redis. 

By feeding these changes into Redis Streams they are made available for processing in a variety of ways, which will provide the value added benefits above. 

Redis Streams provides a robust, durable, ordered communication mechanism whereby stream clients (known as Consumer Groups) can reliably operate on entries of the stream achieving At Least Once semantics. In the rest of the workshop the source of data is a Redis Stream. 
