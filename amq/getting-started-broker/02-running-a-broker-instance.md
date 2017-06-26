In the previous step you created a broker named *simplebroker* under the *instances* folder.

Navigate to the broker folder

`cd instances/simplebroker`{{execute}}

Run the **artemis** script under the *bin* folder to start the broker in service mode

`bin/artemis-service start`{{execute}}

The broker will produce output similar to the following:
```
Starting artemis-service
artemis-service is now running (18889)
```

Wait a moment and then check the **artemis.log** file under the *log* folder.

`tail -100 log/artemis.log`{{execute}}

It should look like this (wait a moment and try again if it's still loading):

```
14:07:31,490 INFO  [org.apache.activemq.artemis.integration.bootstrap] AMQ101000: Starting ActiveMQ Artemis Server
14:07:31,540 INFO  [org.apache.activemq.artemis.core.server] AMQ221000: live Message Broker is starting with configuration Broker Configuration (clustered=false,journalDirectory=./data/journal,bindingsDirectory=./data/bindings,largeMessagesDirectory=./data/large-messages,pagingDirectory=./data/paging)
14:07:31,578 INFO  [org.apache.activemq.artemis.core.server] AMQ221013: Using NIO Journal
14:07:31,671 INFO  [org.apache.activemq.artemis.core.server] AMQ221043: Protocol module found: [artemis-server]. Adding protocol support for: CORE
14:07:31,671 INFO  [org.apache.activemq.artemis.core.server] AMQ221043: Protocol module found: [artemis-amqp-protocol]. Adding protocol support for: AMQP
14:07:31,671 INFO  [org.apache.activemq.artemis.core.server] AMQ221043: Protocol module found: [artemis-hornetq-protocol]. Adding protocol support for: HORNETQ
14:07:31,672 INFO  [org.apache.activemq.artemis.core.server] AMQ221043: Protocol module found: [artemis-mqtt-protocol]. Adding protocol support for: MQTT
14:07:31,672 INFO  [org.apache.activemq.artemis.core.server] AMQ221043: Protocol module found: [artemis-openwire-protocol]. Adding protocol support for: OPENWIRE
14:07:31,672 INFO  [org.apache.activemq.artemis.core.server] AMQ221043: Protocol module found: [artemis-stomp-protocol]. Adding protocol support for: STOMP
14:07:31,716 INFO  [org.apache.activemq.artemis.core.server] AMQ221034: Waiting indefinitely to obtain live lock
14:07:31,717 INFO  [org.apache.activemq.artemis.core.server] AMQ221035: Live Server Obtained live lock
14:07:31,865 INFO  [org.apache.activemq.artemis.core.server] AMQ221003: Deploying queue DLQ
14:07:31,931 INFO  [org.apache.activemq.artemis.core.server] AMQ221003: Deploying queue ExpiryQueue
14:07:32,733 INFO  [org.apache.activemq.artemis.core.server] AMQ221020: Started NIO Acceptor at 0.0.0.0:61616 for protocols [CORE,MQTT,AMQP,STOMP,HORNETQ,OPENWIRE]
14:07:32,735 INFO  [org.apache.activemq.artemis.core.server] AMQ221020: Started NIO Acceptor at 0.0.0.0:5445 for protocols [HORNETQ,STOMP]
14:07:32,737 INFO  [org.apache.activemq.artemis.core.server] AMQ221020: Started NIO Acceptor at 0.0.0.0:5672 for protocols [AMQP]
14:07:32,739 INFO  [org.apache.activemq.artemis.core.server] AMQ221020: Started NIO Acceptor at 0.0.0.0:1883 for protocols [MQTT]
14:07:32,741 INFO  [org.apache.activemq.artemis.core.server] AMQ221020: Started NIO Acceptor at 0.0.0.0:61613 for protocols [STOMP]
14:07:32,741 INFO  [org.apache.activemq.artemis.core.server] AMQ221007: Server is now live
14:07:32,742 INFO  [org.apache.activemq.artemis.core.server] AMQ221001: Apache ActiveMQ Artemis Message Broker version 2.0.0.amq-700005-redhat-1 [0.0.0.0, nodeID=ae7bf278-35c4-11e7-97d9-0a0027000001]
INFO  | main | Initialized artemis-plugin plugin
INFO  | main | Initialized dispatch-hawtio-console plugin
23:54:24,475 INFO  [org.apache.activemq.artemis] AMQ241001: HTTP Server started at http://0.0.0.0:8161
23:54:24,475 INFO  [org.apache.activemq.artemis] AMQ241002: Artemis Jolokia REST API available at http://0.0.0.0:8161/jolokia
```

Take a quick glance at the log output and note a few things:

* The location of our transaction logs and cluster configuration
* We're using the NIO Journal for persistence
* We have a single port, 61616 that can accept connections for multiple protocols (ie, CORE, MQTT, AMQP, STOMP, HORNETQ, OPENWIRE
* We have individual ports for each protocol as well
* We see that the web console has been started at http://0.0.0.0:8161
* We see that the Jolokia (a JMX over REST) service has been started at http://0.0.0.0:8161/jolokia

You've got our broker running! In the next step you will be able to check the broker console.
