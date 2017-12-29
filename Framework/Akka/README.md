# Akka 

Akka is a set of open-source libraries for designing scalable, resilient systems that span processor cores and networks.  

## Goal
Distributed systems must cope in an environment where components crash without responding, messages get lost without a trace on the wire, and network latency fluctuates. These problems occur regularly in carefully managed intra-datacenter environments - even more so in virtualized architectures.  

**Akka provides:**
- Multi-threaded behavior without the use of low-level concurrency constructs like atomics or locks — relieving you from even thinking about memory visibility issues.
- Transparent remote communication between systems and their components — relieving you from writing and maintaining difficult networking code.
- A clustered, high-availability architecture that is elastic, scales in or out, on demand — enabling you to deliver a truly reactive system.

Akka’s use of the actor model provides a level of abstraction that makes it easier to write correct concurrent, parallel and distributed systems.  

## New To Akka
Read the official tutorial [Akka Quickstart with Java](https://developer.lightbend.com/guides/akka-quickstart-java/?_ga=2.242574986.900790249.1514412953-1749038404.1513753107?_ga=2.242574986.900790249.1514412953-1749038404.1513753107?_ga=2.242574986.900790249.1514412953-1749038404.1513753107?_ga=2.242574986.900790249.1514412953-1749038404.1513753107) for instructions on downloading and running the Hello World example.     

1. Download and try this akka-quickstart-java example.  
2. Read and comprehend what happened under the covers.  

## Why modern systems need a new programming model

### The challenge of encapsulation
- Objects can only guarantee encapsulation (protection of invariants) in the face of single-threaded access, multi-thread execution almost always leads to corrupted internal state. Every invariant can be violated by having two contending threads in the same code segment.
- While locks seem to be the natural remedy to uphold encapsulation with multiple threads, in practice they are inefficient and easily lead to deadlocks in any application of real-world scale.
- Locks work locally, attempts to make them distributed exist, but offer limited potential for scaling out.

### The illusion of shared memory on modern computer architectures
- There is no real shared memory anymore, CPU cores pass chunks of data (cache lines) explicitly to each other just as computers on a network do. Inter-CPU communication and network communication have more in common than many realize. Passing messages is the norm now be it across CPUs or networked computers.
- Instead of hiding the message passing aspect through variables marked as shared or using atomic data structures, a more disciplined and principled approach is to keep state local to a concurrent entity and propagate data or events between concurrent entities explicitly via messages.

### The illusion of a call stack
- To achieve any meaningful concurrency and performance on current systems, threads must delegate tasks among each other in an efficient way without blocking. With this style of task-delegating concurrency (and even more so with networked/distributed computing) call stack-based error handling breaks down and new, explicit error signaling mechanisms need to be introduced. Failures become part of the domain model.
- Concurrent systems with work delegation needs to handle service faults and have principled means to recover from them. Clients of such services need to be aware that tasks/messages might get lost during restarts. Even if loss does not happen, a response might be delayed arbitrarily due to previously enqueued tasks (a long queue), delays caused by garbage collection, etc. In face of these, concurrent systems should handle response deadlines in the form of timeouts, just like networked/distributed systems.


## How the Actor Model Meets the Needs of Modern, Distributed Systems
For [details](https://doc.akka.io/docs/akka/current/guide/actors-intro.html)
### Actor Model
Please refer to [Actor Model](https://github.com/PepperGo/WebTechnologies/blob/master/Technologies/ActorModel/READMe.md)


### Benefits of using the Actor Model
The following characteristics of Akka allow you to solve difficult concurrency and scalability challenges in an intuitive way:

- Event-driven model — Actors perform work in response to messages. Communication between Actors is asynchronous, allowing Actors to send messages and continue their own work without blocking to wait for a reply.
- Strong isolation principles — Unlike regular objects in Java, an Actor does not have a public API in terms of methods that you can invoke. Instead, its public API is defined through messages that the actor handles. This prevents any sharing of state between Actors; the only way to observe another actor’s state is by sending it a message asking for it.
- Location transparency — The system constructs Actors from a factory and returns references to the instances. Because location doesn’t matter, Actor instances can start, stop, move, and restart to scale up and down as well as recover from unexpected failures.
Lightweight — Each instance consumes only a few hundred bytes, which realistically allows millions of concurrent Actors to exist in a single application.

Use of actors allows us to:
- Enforce encapsulation without resorting to locks.
- Use the model of cooperative entities reacting to signals, changing state, and sending signals to each other to drive the whole application forward.
- Stop worrying about an executing mechanism which is a mismatch to our world view.


### Usage of message passing avoids locking and blocking
Instead of calling methods, actors send messages to each other. Sending a message does not transfer the thread of execution from the sender to the destination. An actor can send a message and continue without blocking. Therefore, it can accomplish more in the same amount of time.  

An important difference between passing messages and calling methods is that messages have no return value. By sending a message, an actor delegates work to another actor. As we saw in The illusion of a call stack, if it expected a return value, the sending actor would either need to block or to execute the other actor’s work on the same thread. Instead, the receiving actor delivers the results in a reply message.  

In summary, this is what happens when an actor receives a message:
- The actor adds the message to the end of a queue.
- If the actor was not scheduled for execution, it is marked as ready to execute.
- A (hidden) scheduler entity takes the actor and starts executing it.
- Actor picks the message from the front of the queue.
- Actor modifies internal state, sends messages to other actors.
- The actor is unscheduled.


To accomplish this behavior, actors have:
- A mailbox (the queue where messages end up).
- A behavior (the state of the actor, internal variables etc.).
- Messages (pieces of data representing a signal, similar to method calls and their parameters).
- An execution environment (the machinery that takes actors that have messages to react to and invokes their message handling code).
- An address (more on this later).


### Actors handle error situations gracefully 



## Reference
1. Akka Official Documentation https://akka.io/docs/
