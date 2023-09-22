# a manifest that kills a process named killmenow.

exec { 'killmenow_process':
  command     => 'pkill -f killmenow',
  path        => ['/bin', '/usr/bin'],
  refreshonly => true,
}
notify { 'Process killmenow terminated':
  subscribe => Exec['killmenow_process'],
}
