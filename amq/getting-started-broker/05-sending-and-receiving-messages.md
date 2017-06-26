Use the previously create queue to send and receive messages.

To send messages go to the terminal tab and use the included script to send 10 messages to the **testQueue** queue.

`bin/artemis producer --message-count 10 --url "tcp://localhost:61616" --destination queue://testQueue`{{execute}}

#### Browse messages

To check the messages were successfully send to the broker, check the queue in the broker web console.

In the left tree navigate to 0.0.0.0 > addresses > haQueue > queues > anycast > haQueue

Click on Browse (refresh if necessary)

You will see the 10 messages send by the producer script.
