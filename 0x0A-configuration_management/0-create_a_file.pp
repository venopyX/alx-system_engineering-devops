# This manifest creates a file /tmp/school with specific permissions, ownership, and content.
file { '/tmp/school':
  ensure  => 'file',
  content => "I love Puppet\n",
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0744',
}
