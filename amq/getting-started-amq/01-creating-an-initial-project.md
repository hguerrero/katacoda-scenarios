To get started, first we need to login to OpenShift.

To login to the OpenShift cluster use the following commmand in your **_Terminal_**:

``oc login -u developer -p developer [[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com --insecure-skip-tls-verify=true``{{execute}}

This will log you in using the credentials:

* **Username:** ``developer``
* **Password:** ``developer``

You should see the output:

```
Login successful.

Now we need to create a Project space in OpenShift for our API.  In OpenShift we can create a new project by running

    oc new-project <projectname>
```

For out project lets create a project called ``messaging`` by running the command:

``oc new-project messaging``{{execute}}

You should see output similar to:

```
Now using project "messaging" on server "https://172.17.0.41:8443".

You can add applications to this project with the 'new-app' command. For example, try:

    oc new-app centos/ruby-22-centos7~https://github.com/openshift/ruby-ex.git

to build a new example application in Ruby.
```