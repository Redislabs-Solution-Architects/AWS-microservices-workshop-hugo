---
title: "Generating Events in Redis Streams"
weight: 30
---
Let's generate some change events and see what happens. We’ll update a movie, and see how that is reflected in the stream.

Go back to viewing the ‘Stream Data’ for the ‘movies’ stream.

On the right hand side select ‘View Columns’ and check the box next to ‘Source Operation’. The table will now show what operation caused that event to be added to the stream. 

Likewise, ensure that the ‘release_year’ and ‘before:release_year’ columns are displayed, and that the table is sorted by timestamp with the latest timestamp at the top (do that by clicking on the timestamp column header until you've got the desired sort order). 

Now, in the [Movies (Legacy) application](http://localhost:8080/movies) click on ‘Guardians of the Galaxy’, change the Release Year from 2014 to 2099 and Submit the change. 

Go back to RedisInsight/Streams and you’ll see that the first row of the table has changed to reflect this update (if you’re quick you’ll actually see the update happen before your eyes!)


