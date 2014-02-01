class my-packages {
  $packages = [ 'tree', 'rsync', 'mtr', 'mc', 'wget', 'lsof', 'vim-enhanced' ]
  package { $packages:
    ensure => installed,
  }
}
