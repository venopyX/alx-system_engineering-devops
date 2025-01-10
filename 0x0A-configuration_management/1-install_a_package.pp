# Ensure Python3 and pip3 are installed
package { 'python3-pip':
  ensure => present,
}

# Install Flask version 2.1.0
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
