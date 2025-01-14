# Solution to 0x0C. Web server

This project focuses on setting up and configuring a web server using Nginx on an Ubuntu 16.04 LTS machine.

## Tasks

### 0. Transfer a file to your server
- **File:** `0-transfer_file`
- **Description:** Write a Bash script that transfers a file from the client to a server using `scp`.

### 1. Install nginx web server
- **File:** `1-install_nginx_web_server`
- **Description:** Write a Bash script that installs Nginx on the `web-01` server.

### 2. Setup a domain name
- **File:** `2-setup_a_domain_name`
- **Description:** Provide a domain name and configure DNS records with an A entry pointing to your `web-01` IP address.

### 3. Redirection
- **File:** `3-redirection`
- **Description:** Configure your Nginx server so that `/redirect_me` redirects to another page.

### 4. Not found page 404
- **File:** `4-not_found_page_404`
- **Description:** Configure your Nginx server to have a custom 404 page containing the string "Ceci n'est pas une page".
