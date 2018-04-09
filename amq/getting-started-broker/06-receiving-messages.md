Now let's try to consume messages from the **testQueue** queue (remember, our Anycast address was bound to testQueue). To receive the 10 messages in the queue issue the following command:

`bin/artemis consumer --message-count 10 --url "tcp://localhost:61616" --destination queue://testQueue`{{execute}}

You should get output similar to this:

```
Consumer:: filter = null                                                                    
Consumer ActiveMQQueue[testQueue], thread=0 wait until 10 messages are consumed             
Consumer ActiveMQQueue[testQueue], thread=0 Received test message: 0                        
Consumer ActiveMQQueue[testQueue], thread=0 Received test message: 1                        
Consumer ActiveMQQueue[testQueue], thread=0 Received test message: 2                        
Consumer ActiveMQQueue[testQueue], thread=0 Received test message: 3                        
Consumer ActiveMQQueue[testQueue], thread=0 Received test message: 4                        
Consumer ActiveMQQueue[testQueue], thread=0 Received test message: 5                        
Consumer ActiveMQQueue[testQueue], thread=0 Received test message: 6                        
Consumer ActiveMQQueue[testQueue], thread=0 Received test message: 7                        
Consumer ActiveMQQueue[testQueue], thread=0 Received test message: 8                        
Consumer ActiveMQQueue[testQueue], thread=0 Received test message: 9                        
Consumer ActiveMQQueue[testQueue], thread=0 Consumed: 10 messages                           
Consumer ActiveMQQueue[testQueue], thread=0 Consumer thread finished
```

You received all the messages from the running broker.
