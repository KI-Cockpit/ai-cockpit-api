# API definition

API for AI cockpit breaks down in two main section. The first one aims at explaining how an AI system is working and how it is performing. The second one shall provide insights how decisions are made and how to en-/disable a systems ability to make autonomous decisions.

## Used technologies

API defined here is using [OpenAPI](https://www.openapis.org/) and it follows the principle of [design by contract](https://en.wikipedia.org/wiki/Design_by_contract). Main focus is thus of API definition. However for selected languages code generation shall at least be demonstrated.

For a general introduction to OpenAPI see this [FOSDEM talk](https://fosdem.org/2024/schedule/event/fosdem-2024-2531-introduction-to-openapi/).

## Usage 
To test generated API you can use: https://editor-next.swagger.io/ Next to that this repo also contains a number of sample server/clients.

## Sample Server/Client

### Java 

__Server__

Run the following command to generate code

    cd generators/java-server
    mvn package

When code is generated, server can be run via

    cd target/generated-sources/openapi
    mvn package
    java -jar target/openapi-spring-0.0.1.jar 

Please note, that generated server will respond with sample data, but using response 501 - Not implemented. 

__Client__

Run the following command to generate code

    cd generators/java-client
    mvn package

This will generate a new client project that can be found in folder _target/generated-sources/openapi_. In order to test API calls you can use following code:

```java
package de;

import de.starwit.DefaultApi;

public class App {
    
    public static void main(String[] args) throws Exception {
        DefaultApi api = new DefaultApi();
        api.getAllDecisions(); // your sample API call
    }
}
```