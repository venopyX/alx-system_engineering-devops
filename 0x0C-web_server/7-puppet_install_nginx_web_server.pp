# Puppet manifest to configure Nginx with a custom index page, 301 redirect, and a custom 404 error page

# Update system packages
exec { 'update_system':
  command => '/usr/bin/apt-get update -qq',
  path    => ['/bin', '/usr/bin'],
}

# Install Nginx package
package { 'nginx':
  ensure  => installed,
  require => Exec['update_system'],
}

# Configure the custom index page
file { '/var/www/html/index.html':
  ensure  => file,
  content => 'Hello World!',
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0644',
  require => Package['nginx'],
}

# Configure the custom 404 error page
file { '/var/www/html/error_404.html':
  ensure  => file,
  content => "Ceci n'est pas une page\n",
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0644',
  require => Package['nginx'],
}

# Configure Nginx to include custom rules
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => @(END),
server {
    listen 80 default_server;
    listen [::]:80 default_server;

    root /var/www/html;
    index index.html;

    server_name _;

    # Default location block
    location / {
        try_files \$uri \$uri/ =404;
    }

    # Custom 301 redirect for /redirect_me
    location /redirect_me {
        return 301 https://scorpidev.me;
    }

    # Custom error page for 404
    error_page 404 /error_404.html;
    location = /error_404.html {
        internal;
    }
}
END
  require => Package['nginx'],
  notify  => Service['nginx'],
}

# Ensure Nginx service is running
service { 'nginx':
  ensure    => running,
  enable    => true,
  subscribe => File['/etc/nginx/sites-available/default'],
}
