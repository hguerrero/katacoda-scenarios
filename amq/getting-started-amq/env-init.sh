ssh root@host01 "oc project openshift"
ssh root@host01 "oc create -f /opt/amq-broker-71-basic.yaml -n openshift"
ssh root@host01 "oc create -f /opt/amq-7-image-streams.json -n openshift"