package { 'postfix':
  ensure => installed,
}

file { '/etc/aliases':
  content => 'root: john@mail1.private.lan',
  notify  => Exec['newaliases'],
  require => Package['postfix'],
}

exec { 'newaliases':
  command     => '/usr/bin/newaliases',
  refreshonly => true,
}
