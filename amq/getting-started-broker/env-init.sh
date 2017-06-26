wget https://raw.githubusercontent.com/hguerrero/katacoda-scenarios/master/amq/getting-started-broker/assets/jboss-amq-7.0.0.redhat-1-bin.zip
unzip jboss-amq-7.0.0.redhat-1-bin.zip
rm jboss-amq-7.0.0.redhat-1-bin.zip
cd jboss-amq-7.0.0.redhat-1
bin/artemis create --host 0.0.0.0 --allow-anonymous --user admin --password password --http-host 0.0.0.0 instances/simplebroker
cd instances/simplebroker
