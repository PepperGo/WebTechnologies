# Akka 

Akka is a set of open-source libraries for designing scalable, resilient systems that span processor cores and networks.  

## Goal
Distributed systems must cope in an environment where components crash without responding, messages get lost without a trace on the wire, and network latency fluctuates. These problems occur regularly in carefully managed intra-datacenter environments - even more so in virtualized architectures.  

**Akka provides:**
- Multi-threaded behavior without the use of low-level concurrency constructs like atomics or locks — relieving you from even thinking about memory visibility issues.
- Transparent remote communication between systems and their components — relieving you from writing and maintaining difficult networking code.
- A clustered, high-availability architecture that is elastic, scales in or out, on demand — enabling you to deliver a truly reactive system.

Akka’s use of the actor model provides a level of abstraction that makes it easier to write correct concurrent, parallel and distributed systems.  

