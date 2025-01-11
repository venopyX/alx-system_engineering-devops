# Ensure Python3-pip is installed
package { 'python3-pip':
  ensure => present,
}

# Install Werkzeug 2.1.0 (compatible with Flask 2.1.0)
package { 'Werkzeug':
  ensure   => '2.1.0',
  provider => 'pip3',
}

# Install Flask 2.1.0
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
