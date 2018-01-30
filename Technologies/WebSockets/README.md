# WebSockets

Web sockets are defined as a two-way communication between the servers and the clients, which mean both the parties, communicate and exchange data at the same time. This protocol defines a full duplex communication from the ground up. Web sockets take a step forward in bringing desktop rich functionalities to the web browsers. It represents an evolution, which was awaited for a long time in client/server web technology.

## Overview

### Web Sockets – Definition
Web sockets are defined as a two-way communication between the servers and the clients, which mean both the parties communicate and exchange data at the same time.  

The key points of Web Sockets are true concurrency and optimization of performance, resulting in more responsive and rich web applications.  

### Description of Web Socket Protocol
This protocol defines a full duplex communication from the ground up. Web sockets take a step forward in bringing desktop rich functionalities to the web browsers. It represents an evolution, which was awaited for a long time in client/server web technology.  
The main features of web sockets are as follows:  
1. Web socket protocol is being standardized, which means real time communication between web servers and clients is possible with the help of this protocol.  
2. Web sockets are transforming to cross platform standard for real time communication between a client and the server.  
3. This standard enables new kind of the applications. Businesses for real time web application can speed up with the help of this technology.  
4. The biggest advantage of Web Socket is it provides a two-way communication (full duplex) over a single TCP connection.  

### URL
HTTP has its own set of schemas such as http and https. Web socket protocol also has similar schema defined in its URL pattern.

The following image shows the Web Socket URL in tokens.   
![](https://www.tutorialspoint.com/websockets/images/protocol.jpg)

## WebSockets - Duplex Communication
The existing techniques that are used for duplex communication between the server and the client.
- Polling
- Long Polling
- Streaming
- Postback and AJAX
- HTML5


### Why Do We Need Web Sockets?
Internet was conceived to be a collection of Hypertext Mark-up Language (HTML) pages linking one another to form a conceptual web of information. During the course of time, static resources increased in number and richer items, such as images and began to be a part of the web fabric.

Server technologies advanced which allowed dynamic server pages - pages whose content was generated based on a query.

Soon, the requirement to have more dynamic web pages lead to the availability of Dynamic Hypertext Mark-up Language (DHTML). All thanks to JavaScript. Over the following years, we saw cross frame communication in an attempt to avoid page reloads followed by HTTP Polling within frames.

However, none of these solutions offered a truly standardized cross browser solution to real-time bi-directional communication between a server and a client.

This gave rise to the need of Web Sockets Protocol. It gave rise to full-duplex communication bringing desktop-rich functionality to all web browsers.

## WebSockets - Functionalities
Web Socket helps in dynamic flow of the connections that are persistent full duplex. Full duplex refers to the communication from both the ends with considerable fast speed.

It is termed as a game changer because of its efficiency of overcoming all the drawbacks of existing protocols.  

### Web Socket for Developers and Architects
Importance of Web Socket for developers and architects：
1. Web Socket is an independent TCP-based protocol, but it is designed to support any other protocol that would traditionally run only on top of a pure TCP connection.  
2. Web Socket is a transport layer on top of which any other protocol can run. The Web Socket API supports the ability to define sub-protocols: protocol libraries that can interpret specific protocols.  
3. Examples of such protocols include XMPP, STOMP, and AMQP. The developers no longer have to think in terms of the HTTP request-response paradigm.  
4. The only requirement on the browser-side is to run a JavaScript library that can interpret the Web Socket handshake, establish and maintain a Web Socket connection.  
5. On the server side, the industry standard is to use existing protocol libraries that run on top of TCP and leverage a Web Socket Gateway.


Web Socket connections are initiated via HTTP; HTTP servers typically interpret Web Socket handshakes as an Upgrade request.

Web Sockets can both be a complementary add-on to an existing HTTP environment and can provide the required infrastructure to add web functionality. It relies on more advanced, full duplex protocols that allow data to flow in both directions between client and server.

### Functions of Web Sockets
Web Sockets provide a connection between the web server and a client such that both the parties can start sending the data.  
The steps for establishing the connection of Web Socket are as follows:
1. The client establishes a connection through a process known as Web Socket handshake.  
2. The process begins with the client sending a regular HTTP request to the server.  
3. An Upgrade header is requested. In this request, it informs the server that request is for Web Socket connection.   
4. Web Socket URLs use the ws scheme. They are also used for secure Web Socket connections, which are the equivalent to HTTPs.  



## Reference
1. WebSockets Tutorial https://www.tutorialspoint.com/websockets/index.htm
