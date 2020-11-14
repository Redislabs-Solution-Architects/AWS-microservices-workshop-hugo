---
title: "Caching Issues"
weight: 10
---
The [OMDB] service will help motivate us to think about caching and what it can do for us.

Visiting [OMDB]
- go on! try it out! - one soon observes two immediate issues:

1. The response time over the network isn't great - its of the order of 100mS for me, but is highly variable. 
1. The number of requests being made to the service (we only have 1000 requests per day permitted) - each time I go access OMDB, even for something I've already seen, costs me one of those limited requests.

We can see both of these values in our example application:

1. Go to http://localhost:8080/movies
1. Click on any movie
1. Click on the green button <span>{{<figure src="refresh.png" height="10">}}</span>

Review the latency and number of calls figures, shown just under the movie:

![call_figures]

This latency (approx 625ms) is unacceptable. Clicking the button a few more times brings it down to under 100ms (your numbers might be very different). However one only has a total of around 500 ms from the time users click on the interface to get the response back  before they start dropping off, according to [research by Google]. Giving up ⅕ of your time budget at the very first step is expensive and unnecessary!

Furthermore, each and every time a user looks at this data that action depletes a limited resource: the number of calls to the OMDB service permitted in this 24 hour period. (You can see the number used steadily increasing each time you click the green arrow!)

Redis is a perfect solution here. By enabling caching one can:

* substantially lower latency numbers
* conserve the limited resource (API Calls) to only those necessary


----------
[call_figures]:call-figures.png

[OMDB]: http://omdbapi.com
[refresh]: refresh.png
[research by Google]: http://glinden.blogspot.com/2006/11/marissa-mayer-at-web-20.html
