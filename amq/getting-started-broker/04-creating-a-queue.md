In the previous labs we've configured our broker. Now let's create a Queue to send some messages

Go back to the terminal tab and issue the following command to create an *anycast* queue on the **test** address:

`bin/artemis queue create --auto-create-address --address test.queue --name testQueue --preserve-on-no-consumers --durable --anycast --url tcp://localhost:61616`{{execute}}

If you go back to the console tab, you will see the create address on the left side of the console and under that address, the *testQueue*.
