#### Run the broker in interactive mode

In the previous step you created a broker named *simplebroker* under the *instances* folder.

Navigate to the broker folder

`cd instances/simplebroker`{{execute}}

Run the **artemis** script under the *bin* folder to start the broker in interactive mode

`bin/artemis run`{{execute}}

The broker will produce output similar to the following:

```
...
13:39:34,531 INFO  [org.apache.activemq.artemis.core.server] AMQ221007: Server is now live                         
13:39:34,532 INFO  [org.apache.activemq.artemis.core.server] AMQ221001: Apache ActiveMQ Artemis Message Broker version 2.0.0.amq-700005-redhat-1 [0.0.0.0, nodeID=e34f98d7-5a74-11e7-a79e-0242ac110058]                               
INFO  | main | Initialized artemis-plugin plugin                                                                   
INFO  | main | Initialized dispatch-hawtio-console plugin
23:54:24,475 INFO  [org.apache.activemq.artemis] AMQ241001: HTTP Server started at http://0.0.0.0:8161
23:54:24,475 INFO  [org.apache.activemq.artemis] AMQ241002: Artemis Jolokia REST API available at http://0.0.0.0:8161/jolokia
```
