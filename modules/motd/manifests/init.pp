class motd {
  file { '/etc/motd':
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    backup  => false,
    content => template('motd/motd.erb'),
  }
}
