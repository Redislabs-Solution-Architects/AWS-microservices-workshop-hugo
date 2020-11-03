

# AWSWorkshop.io base workshop 

This is a base workshop.  Clone and start from this repo to create your workshop.

You will need to setup hugo properly. In particular the Hugo 0.71 parser reveals a bug in the `hugo-them-learn` submodule.

Clone this repository:

```
git clone https://github.com/TobyHFerguson/AWS-microservices-workshop.git
```
Then initialize, install and update the submodule:
```
cd AWS-microservices-workshop
git submodule init
git submodule update
git submodule update --remote themes/hugo-theme-learn/
```

You can then run hugo:
```
hugo server
```
and if you visit http://localhost:1313 you'll see the pages

