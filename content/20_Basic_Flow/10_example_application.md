---
menuTitle: "Example Application"
weight: 10
---
## Example Application
The example application shows: 
- How to improve both access to and latency of an external service using caching
- Modernizing your legacy database:
  - How to use streams to capture data changes
  - Making it easy to find what you want
  - Assisting users in real time
  - Gaining new insights


The domain we’ve chosen is movies, but this is simply to make the experience easy to understand; what we will learn here is applicable to many other domains with similar issues and concerns. 

Purely for teaching purposes we’re going to have two data sources:
The first is an external web service, OMDB, that provides data about movies, albeit relatively slowly (a latency of 150mS or so), and with access limits (1,000 requests a day to the API). This is a useful vehicle to show the caching story. 
The second data source is a local MySQL database many of whose movies originated from OMDB (although not all). Our story here is where the modernization aspect of using Redis really takes off. 
