echo -n "Configuring messaging... "
oc project openshift > /dev/null 2>&1
oc create -f https://raw.githubusercontent.com/jboss-openshift/application-templates/ose-v1.4.5/amq/amq63-basic.json -n openshift > /dev/null 2>&1
oc create -f https://raw.githubusercontent.com/jboss-openshift/application-templates/master/jboss-image-streams.json -n openshift > /dev/null 2>&1
oc new-project messaging-queues > /dev/null 2>&1
oc policy add-role-to-user admin developer -n messaging-queues > /dev/null 2>&1
oc new-app amq63-basic -p MQ_PROTOCOL=openwire,amqp,stomp -p MQ_QUEUES=myqueue -p MQ_TOPICS=mytopic -p MQ_USERNAME=amqUser -p MQ_PASSWORD=amqPassword > /dev/null 2>&1
until $(oc get svc broker-amq-tcp &> /dev/null); do sleep 1; done
echo "Messaging Ready"