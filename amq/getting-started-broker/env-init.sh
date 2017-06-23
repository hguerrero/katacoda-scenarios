ssh root@host01 "mkdir /opt/amq && chown scrapbook:scrapbook /opt/amq"
wget https://raw.githubusercontent.com/hguerrero/katacoda-scenarios/master/amq/getting-started-broker/assets/jboss-amq-7.0.0.redhat-1-bin.zip
unzip jboss-amq-7.0.0.redhat-1-bin.zip -d /opt/amq/
rm jboss-amq-7.0.0.redhat-1-bin.zip
