# MQTT-Demo

## Demo

### Prerequisites
Make sure you have installed:
- Docker
- Docker Compose

### Build and Start the containers
From the project root:

```bash
make start
```

This will build and start the `writer`, `reader`, `mapper`, and `Mosquitto broker` images.

### Open the Applications
After startup, open in your browser:
| Component | URL |
|-----------|-----|
| Writer 1 | http://localhost:8081 |
| Writer 2 | http://localhost:8082 |
| Reader 1 | http://localhost:8091 |
| Reader 2 | http://localhost:8092 |
| Writer 1 | http://localhost:8100 |

### Test the flow

#### Verify Readers Connected
Open the `readers`. You should see:
- MAC address displayed
- "Connected to localhost:9001" in log

#### Assign Topics in Mapper
Open the `mapper` and assign topics to each reader. Click `Apply`.

#### Send Messages from Writters
Open the `writers` and choose a topic. Send a message and the corresponding `reader` should receive it immediately.

### Stopping the demo
To stop the containers run:

```bash
make stop
```

## Swimlanes Diagram
![Swimlane](https://static.swimlanes.io/8871bb1028c530ecef53c073f6b04a33.png)