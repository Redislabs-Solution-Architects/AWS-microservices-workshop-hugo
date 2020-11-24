---
menuTitle: "Example Application"
weight: 10
---
## Installing the Example Application
With AWS' Cloudformation installing the example application and getting it to run is simply done by following this link:

<a href="https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create/review?stackName=aws-cfn&templateURL=https://s3.amazonaws.com/aws-workshop-cfn.redislabs.com/cfn.json" target="_blank"><img src="https://s3.amazonaws.com/cloudformation-examples/cloudformation-launch-stack.png"></a>

This link uses the AWS region `us-east-1`. If you wish to launch your ECS cluster in a different region then use the region selection menu to choose the region:

![region selector]


* The web front end, `redis-microservices-demo_front-end_1`, on port 8080;
* The Redis database, `redis-service`, on port 6379.

## Testing the Example Application

The Example Application should be running on your local host at http://localhost:8080. If all is successful then following that link in your browser will take you to this page:

{{<figure src="rmdb_home_page.png" link="http://localhost:8080">}}


{{% notice warning %}}
The top black banner contains various menu items which offer different services. Although you can go explore right now they won't work until you complete the following steps! Once the following steps are completed then please do go explore the full application - we don't cover every aspect of this application in this workshop, but by playing around a bit you should get some understanding of what it does, if not how it does it!
{{% /notice %}}

## Configuring the Application Services

The Application is composed from several services, each of which can be activated independently. For now we'll just turn them all on, and add the key to allow access to the OMDB Web Service.

Got to the [Services] part of the application. Start each of the services by pressing the respective 'Start It!' button. You should see something similar to the following:

{{<figure src="services.png">}}

{{% notice tip %}}
You might initially see a status of 'Error'. Don't be alarmed! That's just the underlying services waiting for Docker to get all the networking etc. setup. Just wait a few moments to let the underlying system start working and once the status is 'Stopped' then go press the 'Start It!' button
{{% /notice %}}

## Configuring Access to the OMDB Web Service

We will be using [OMDB] as a web application to demonstrate caching. 

[Get yourself an API key] and retrieve it from your email. Then paste it into the 'OMDB API Key' text entry box on the [services] page and hit 'Save'. 

### Test OMDB Access
To test that the application does indeed have access to OMDB execute the following steps:

1. Go to the [Movies (Legacy)] application
2. Click on the first movie 'Guardians of the Galaxy'

If you see the following:
<p style="color:red";>
Error: OMDBAPI Key is invalid -- see services page
</p>

then there's a problem with the OMDB access via that key. Check it and save it again to see if that fixes the problem.

Of course, if you _don't_ see that red text then things are working and you're good to go!



----------
[OMDB]: http://www.omdbapi.com/

[Get yourself an API key]: http://www.omdbapi.com/apikey.aspx?__EVENTTARGET=freeAcct&__EVENTARGUMENT=&__LASTFOCUS=&__VIEWSTATE=%2FwEPDwUKLTIwNDY4MTIzNWQYAQUeX19Db250cm9sc1JlcXVpcmVQb3N0QmFja0tleV9fFgMFC3BhdHJlb25BY2N0BQhmcmVlQWNjdAUIZnJlZUFjY3R%2Bvsm%2Bxojynz6Dxtmll%2BBPGF5b%2FXF7NfOmXXRKZWa2sA%3D%3D&__VIEWSTATEGENERATOR=5E550F58&__EVENTVALIDATION=%2FwEdAArAHwJn73q7vMcrazXApSldmSzhXfnlWWVdWIamVouVTzfZJuQDpLVS6HZFWq5fYpioiDjxFjSdCQfbG0SWduXFd8BcWGH1ot0k0SO7CfuulF0vVes0SOcL8qM3Jr6aqHyFE%2Bczl1aCyjbLtuPuRU0tIVu1gi3bgvDqS3Gt3lnrv%2FgsVJPMV9tdMU3lWBBf01vN%2BDvxnwFeFeJ9MIBWR693fISlXaHKzP%2BBv%2FK2QEL4NQsLb55%2BhkOC33bZPJ8gt%2Bg%3D&at=freeAcct&Email=&Email2=&FirstName=&LastName=&TextArea1=

[Movies (Legacy)]: http://localhost:8080/movies

[services]: http://localhost:8080/services
[region selector]: region-selector.png
