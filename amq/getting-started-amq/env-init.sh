ssh root@host01 "oc project openshift"
ssh root@host01 "oc create -f https://raw.githubusercontent.com/jboss-openshift/application-templates/master/amq/amq63-basic.json -n openshift"
ssh root@host01 "oc create -f https://raw.githubusercontent.com/jboss-openshift/application-templates/master/jboss-image-streams.json -n openshift"
ssh root@host01 "docker pull registry.access.redhat.com/jboss-amq-6/amq63-openshift:latest"
ssh root@host01 'for i in {1..200}; do oc policy add-role-to-user system:image-puller system:anonymous && break || sleep 1; done'
ssh root@host01 "oc new-project messaging-queues"
ssh root@host01 "oc new-app amq63-basic -P MQ_PROTOCOL=openwire,amqp,stomp -P MQ_QUEUES=myqueue -P MQ_TOPICS=mytopic -P MQ_USERNAME=amqUser -P MQ_PASSWORD=amqPassword"