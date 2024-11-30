# Web Infrastructure Design

## Task 0: Simple Web Stack

### Design Explanation
- **Server**: Hosts the web application.
- **Domain Name**: Translates to the server's IP address.
- **Web Server (Nginx)**: Handles HTTP requests.
- **Application Server**: Processes application logic.
- **Database (MySQL)**: Stores and retrieves data.

### Issues
- **Single Point of Failure (SPOF)**: If the server fails, the website is down.
- **Downtime During Maintenance**: Server restarts can cause downtime.
- **Scalability**: Limited by single server capacity.

### Diagram
![Simple Web Stack](#)

## Task 1: Distributed Web Infrastructure

### Design Explanation
- **Load Balancer (HAProxy)**: Distributes traffic to prevent overload.
- **Database Cluster**: Provides redundancy and load distribution.

### Issues
- **SPOF**: Load balancer can be a single point of failure.
- **Security**: No firewalls or HTTPS.
- **Monitoring**: Lack of monitoring tools.

### Diagram
![Distributed Web Infrastructure](#)

## Task 2: Secured and Monitored Web Infrastructure

### Design Explanation
- **Firewalls**: Protect against unauthorized access.
- **SSL**: Encrypts data for secure communication.
- **Monitoring Tools**: Track performance and detect issues.

### Issues
- **SSL Termination**: At the load balancer can be a security risk.
- **Database Write Limitation**: Only one MySQL server for writes.

### Diagram
![Secured and Monitored Web Infrastructure](#)

## Task 3: Scale Up

### Design Explanation
- **Component Separation**: Improves scalability and reliability.

### Diagram
![Scale Up](#)
