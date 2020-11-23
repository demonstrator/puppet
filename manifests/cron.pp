cron { 'update the locate database':
  command     => '/usr/bin/updatedb',
  user        => 'root',
  environment => ['MAILTO=john@mail1.private.lan', 'PATH=/bin'],
  hour        => '*',
  minute      => '*',
  weekday     => ['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday', 'Sunday'],
}
