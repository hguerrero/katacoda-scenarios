ssh root@host01 "oc project openshift"
ssh root@host01 "oc create -f https://raw.githubusercontent.com/jboss-openshift/application-templates/master/amq/amq63-basic.json"
ssh root@host01 "oc replace -f https://raw.githubusercontent.com/jboss-openshift/application-templates/master/jboss-image-streams.json"
ssh root@host01 "docker pull registry.access.redhat.com/jboss-amq-6/amq63-openshift:latest"
ssh root@host01 'for i in {1..200}; do oc policy add-role-to-user system:image-puller system:anonymous && break || sleep 1; done'