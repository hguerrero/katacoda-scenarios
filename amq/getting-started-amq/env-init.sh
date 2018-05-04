ssh root@host01 "mkdir -p /root/projects && cd /root/projects && git clone https://github.com/hguerrero/amq-examples"
ssh root@host01 "oc project openshift"
ssh root@host01 "oc create -f /opt/amq-broker-71-basic.yaml -n openshift"
ssh root@host01 "oc create -f /opt/amq-7-image-streams.json -n openshift"