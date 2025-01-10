# This manifest kills the process named 'killmenow' using pkill.
exec { 'kill_process':
  command => '/usr/bin/pkill -f killmenow',
  path    => ['/usr/bin', '/bin'],
  onlyif  => '/usr/bin/pgrep -f killmenow',
}
