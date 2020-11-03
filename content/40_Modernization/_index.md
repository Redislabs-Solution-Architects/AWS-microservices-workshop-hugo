---
title: "Modernizing your Legacy Application"
chapter: true
weight: 40
---
The [Movies (Legacy)](http://localhost:8080/movies) application was written to show the kind of legacy application that so many users have to deal with. The application is just a bare minimum wrapper around the database fields, and it manages the amount of data shown to a user by dividing the output into pages of a certain number of database records. To find a specific record a user has to scroll through the pages which is both tedious and error-prone. The application does hide the underlying database schema and associated technology, which is better than nothing, but it offers little further value to the user. 

What kind of value do we want to bring to the user? From the user’s perspective, these areas can be seen as:

1. Finding what you want 
1. Gaining Insights

In a short while we’ll see how Redis can assist in these end-user requirements. 

But first we have another problem to solve: We can’t modify the legacy application. So how do we connect the legacy application (MySQL database) to Redis so that we can use Redis to add value?
