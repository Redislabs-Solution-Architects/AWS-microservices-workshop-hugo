

# AWSWorkshop.io base workshop 

This is a base workshop that requires [Hugo](https://gohugo.io/).  Clone and start from this repo to create your workshop.

## Install Hugo
Install Hugo by following [these instructions](https://gohugo.io/getting-started/installing/)

(Note that the Hugo 0.71 the parser reveals a bug in the `hugo-theme-learn` submodule.)

## Install this workshop
Clone this repository:

```
git clone https://github.com/TobyHFerguson/AWS-microservices-workshop.git
```
### Install and Update the `hugo-theme-learn` submodule
This workshop relies on the `hugo-theme-learn` submodule. Install it and then update it (the second update is required to ensure that the very latest version is installed because there's a bug in the current version.)
```
cd AWS-microservices-workshop
git submodule init
git submodule update
git submodule update --remote themes/hugo-theme-learn/
```

## Run Hugo

You can then run hugo:
```
hugo server
```
and if you visit http://localhost:1313 you'll see the pages

