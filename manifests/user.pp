group { 'john':
  ensure => present,
  gid    => 1001,
}

user { 'john':
  ensure => present,
  uid    => '1001',
  home   => '/home/john',
  shell  => '/bin/bash',
# groups => ['john'],
}
