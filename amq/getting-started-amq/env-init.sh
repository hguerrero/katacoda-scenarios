ssh root@host01 "oc project openshift"
ssh root@host01 "oc create -f https://raw.githubusercontent.com/jboss-openshift/application-templates/ose-v1.4.5/amq/amq63-persistent-ssl.json -n openshift"
