---
title: "Caching Issues"
weight: 10
---
To demonstrate caching, we'll take the [OMDB] service and figure out how to make it better.

Visiting [OMDB] one soon observes two immediate issues:

1. The response time over the network - its of the order of 150mS
1. The number of requests being made to the service (we only have 1000 requests per day permitted)

We can see both of these values thus:

- Go to http://localhost:8080/movies
- Click on any movie
- Click on the green button ![alt green button][refresh]

Review the latency and number of calls figures

At the moment that latency (approx 150ms) is reasonable, but if one wants to enhance what is shown to the user then one only has a total of around 500 ms to do that before users might start dropping off, according to (research by Google)[http://glinden.blogspot.com/2006/11/marissa-mayer-at-web-20.html]. Giving up ⅕ of your time budget at the very first step is expensive and unnecessary!

Furthermore, each and every time a user looks at this data that action depletes a limited resource - the number of calls to the OMDB service permitted in this 24 hour period.

Redis is a perfect solution here - enabling caching results in:

* substantially lower latency numbers
* conservation of the limited resource





[OMDB]: http://omdbapi.com
[refresh]: refresh.png
