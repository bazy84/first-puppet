# Manage ngix web server
class nginx {
  package { 'httpd':
    ensure    => absent,
  }
  package { 'nginx':
    ensure    => installed,
    require   => Package['httpd'],
  }
  service { 'nginx':
    ensure    => running,
    enable    => true,
    #hasstatus => false,
    #pattern   => 'nginx:',
    #status   => 'grep running /var/lib/myservice/status.txt',
    require   => Package['nginx'],
  }
  file { '/etc/nginx/conf.d/vhosts.conf':
    #source    => 'puppet:///modules/nginx/cat-pictures.conf',
    content   => template('nginx/vhosts.conf.erb'),
    notify    => Service[nginx],
    require   => Package['nginx'],
  }
}
