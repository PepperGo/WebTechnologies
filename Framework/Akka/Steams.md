# Streams

## Introduction
Regarding data as a stream of elements instead of in its entirety is very useful because it matches the way computers send and receive them (for example via TCP), but it is often also a necessity because data sets frequently become too large to be handled as a whole.   

Actors can be seen as dealing with streams as well: they send and receive series of messages in order to transfer knowledge (or data) from one place to another. However, when dealing with streams of elements of a fixed given type, Actors also do not currently offer good static guarantees that no wiring errors are made: type-safety could be improved in this case.   

For these reasons akka decided to bundle up a solution to these problems as an Akka Streams API. The purpose is to offer an intuitive and safe way to formulate stream processing setups such that we can then execute them efficiently and with bounded resource usage—no more OutOfMemoryErrors.

## Streams Quickstart Guide

A stream usually begins at a source, so this is also how we start an Akka Stream.  

## Design Principles behind Akka Streams

## Basics and working with Flows
### Core concepts

#### Stream
An active process that involves moving and transforming data.

#### Element
An element is the processing unit of streams. All operations transform and transfer elements from upstream to downstream. Buffer sizes are always expressed as number of elements independently from the actual size of the elements.

#### Back-pressure
A means of flow-control, a way for consumers of data to notify a producer about their current availability, effectively slowing down the upstream producer to match their consumption speeds. In the context of Akka Streams back-pressure is always understood as non-blocking and asynchronous.

#### Non-Blocking
Means that a certain operation does not hinder the progress of the calling thread, even if it takes a long time to finish the requested operation.


#### Graph
A description of a stream processing topology, defining the pathways through which elements shall flow when the stream is running.


#### Processing Stage
The common name for all building blocks that build up a Graph. Examples of a processing stage would be operations like map(), filter(), custom GraphStage s and graph junctions like Merge or Broadcast. 


### Defining and running streams

#### Source
A processing stage with exactly one output, emitting data elements whenever downstream processing stages are ready to receive them. 

#### Sink
A processing stage with exactly one input, requesting and accepting data elements possibly slowing down the upstream producer of elements.

#### Flow
A processing stage which has exactly one input and output, which connects its upstream and downstream by transforming the data elements flowing through it.   

#### RunnableGraph
A Flow that has both ends “attached” to a Source and Sink respectively, and is ready to be run().  
It is possible to attach a Flow to a Source resulting in a composite source, and it is also possible to prepend a Flow to a Sink to get a new sink. After a stream is properly terminated by having both a source and a sink, it will be represented by the RunnableGraph type, indicating that it is ready to be executed.


## Reference
1. Akka Streams Official Documentation https://doc.akka.io/docs/akka/current/stream/stream-introduction.html


