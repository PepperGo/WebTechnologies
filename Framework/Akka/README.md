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


### How the Actor Model Meets the Needs of Modern, Distributed Systems


## Reference
1. Akka Official Documentation https://akka.io/docs/
