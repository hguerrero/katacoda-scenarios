The environment has already downloaded AMQ Broker and is located under the jboss-amq-7.0.0.redhat-1 directory.

Navigate into the folder issuing the cd command in the terminal

`cd jboss-amq-7.0.0.redhat-1`{{execute}}

The `artemis` script located in the `bin` folder is the starting point to manage an AMQ installation.

#### Use the script to create a new broker instance

* Execute the following command to create a new broker named `simplebroker` under the instances folder.
`bin/artemis create --no-autotune --host 0.0.0.0 --allow-anonymous --user admin --password password --role admin --http-host 0.0.0.0 instances/simplebroker`{{execute}}

The command avoids a series of questions in order to configure the broker instance:
 * Use `admin` as username and `password` as password for the mandatory user
 * Add the `admin` role to the admin user
 * Allow anonymous

You should see the output:
