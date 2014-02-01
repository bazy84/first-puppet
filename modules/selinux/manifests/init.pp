class selinux {
  require my-packages
  exec { 'Selinux to permissive':
    command     => '/usr/sbin/setenforce Permissive',
    refreshonly => true,
    subscribe   => File['/etc/selinux/config'],
  }
  file { '/etc/selinux/config':
    mode        => '644',
    content     => template('selinux/config.erb'),
  }
}
