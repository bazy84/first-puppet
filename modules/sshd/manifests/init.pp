class sshd {
  service { 'sshd':
    ensure => running,
  }
  file { '/etc/ssh/sshd_config':
    source => 'puppet:///modules/sshd/sshd_config',
    notify => Service['sshd'],
    owner  => 'root',
    group  => 'root',
    mode   => '600',
  }
}
