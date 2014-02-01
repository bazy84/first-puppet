class iptables {
  file { '/etc/sysconfig/iptables':
    ensure   => 'file',
    content  => template('iptables/iptables.erb'),
    notify   => Service['iptables'],
  }
  service { 'iptables':
    ensure   => running,
    enable   => true,
    require  => File['/etc/sysconfig/iptables'],
  }
}
