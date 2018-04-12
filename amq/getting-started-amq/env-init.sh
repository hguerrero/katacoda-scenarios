ssh root@host01 "oc project openshift"
ssh root@host01 "oc create -f https://raw.githubusercontent.com/jboss-container-images/jboss-amq-7-broker-openshift-image/amq-broker-71-dev/templates/amq-broker-71-ssl.yaml -n openshift"
ssh root@host01 "oc create -f /opt/amq-7-image-streams.json -n openshift"