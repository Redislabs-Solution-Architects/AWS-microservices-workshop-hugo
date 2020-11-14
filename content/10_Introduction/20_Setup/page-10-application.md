---
menuTitle: "Example Application"
weight: 10
---
## Installing the Example Application
Execute the following to clone and build the example application (you'll only ever need to do this once):

```sh
git clone https://github.com/redis-developer/redis-microservices-demo &&
cd redis-microservices-demo &&
mvn clean package
```

## Running the example application
Each time you want to run the example application execute the following in the `redis-microservices-demo` directory:

```sh
docker-compose up -d
```

This will start up many services, and you should see them running like this:
```sh
Starting redis-microservices-demo_redis-service_1          ... done
Starting redis-microservices-demo_ws-notifications-service_1      ... done
Starting redis-microservices-demo_streams-to-redisearch-service_1 ... done
Starting redis-microservices-demo_sql-rest-api_1                  ... done
Starting redis-microservices-demo_db-to-streams-service_1         ... done
Starting redis-microservices-demo_caching-service_1               ... done
Starting redis-microservices-demo_streams-to-redisgraph-service_1 ... done
Starting redis-microservices-demo_front-end_1                     ... done
```

These services are all running on the docker bridge network `redis-microservices-demo_redis-microservices-network`. The one we're most interested in is the Redis service, `redis-service`, which exposes port 6379 on localhost. 

## Testing the Example Application

The Example Application should be running on your local host at http://localhost:8080. If all is successful then following that link in your browser will take you to this page:

{{<figure src="rmdb_home_page.png" link="http://localhost:8080">}}

## Configuring the Application Services

The Application is composed from several services, each of which can be activated independently. For now we'll just turn them all on, and add the key to allow access to the OMDB Web Service.

Got to the [Services] part of the application. Start each of the services by pressing the respective 'Start It!' button. You should see something similar to the following:

{{<figure src="services.png">}}

{{% notice tip %}}
In the unlikely event that any services' status is 'Error' then just wait a few minutes to let the underlying system start working and move the status to 'Stopped' before hitting the 'Start It!' button
{{% /notice %}}

## Configuring Access to the OMDB Web Service

We will be using [OMDB] as a web application to demonstrate caching. 

[Get yourself an API key] and retrieve it from your email. Then paste it into the 'OMDB API Key' text entry box and hit 'Save'. 

### Test OMDB Access
To test that the application does indeed have access to OMDB execute the following steps:

1. Go to the [Movies (Legacy)] application
2. Click on the first movie 'Guardians of the Galaxy'

If you see the following:
<p style="color:red";>
Error: OMDBAPI Key is invalid -- see services page
</p>

then there's a problem with the OMDB access via that key. Check it and save it again to see if that fixes the problem.



----------
[OMDB]: http://www.omdbapi.com/

[Get yourself an API key]: http://www.omdbapi.com/apikey.aspx?__EVENTTARGET=freeAcct&__EVENTARGUMENT=&__LASTFOCUS=&__VIEWSTATE=%2FwEPDwUKLTIwNDY4MTIzNWQYAQUeX19Db250cm9sc1JlcXVpcmVQb3N0QmFja0tleV9fFgMFC3BhdHJlb25BY2N0BQhmcmVlQWNjdAUIZnJlZUFjY3R%2Bvsm%2Bxojynz6Dxtmll%2BBPGF5b%2FXF7NfOmXXRKZWa2sA%3D%3D&__VIEWSTATEGENERATOR=5E550F58&__EVENTVALIDATION=%2FwEdAArAHwJn73q7vMcrazXApSldmSzhXfnlWWVdWIamVouVTzfZJuQDpLVS6HZFWq5fYpioiDjxFjSdCQfbG0SWduXFd8BcWGH1ot0k0SO7CfuulF0vVes0SOcL8qM3Jr6aqHyFE%2Bczl1aCyjbLtuPuRU0tIVu1gi3bgvDqS3Gt3lnrv%2FgsVJPMV9tdMU3lWBBf01vN%2BDvxnwFeFeJ9MIBWR693fISlXaHKzP%2BBv%2FK2QEL4NQsLb55%2BhkOC33bZPJ8gt%2Bg%3D&at=freeAcct&Email=&Email2=&FirstName=&LastName=&TextArea1=

[Movies (Legacy)]: http://localhost:8080/movies

[services]: http://localhost:8080/services
