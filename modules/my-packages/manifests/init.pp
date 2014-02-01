class my-packages {
  $packages = [ 'tree', 'rsync', 'mtr', 'mc', 'wget' ]
  package { $packages:
    ensure => installed,
  }
}
