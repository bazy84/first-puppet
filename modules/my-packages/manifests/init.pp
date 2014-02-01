class my-packages {
  package { [ 'tree',
              'rsync',
              'mtr',
              'mc',
              'wget',
              'lsof',
              'php-cli',
              'vim-enhanced' ]:
    ensure => installed,
  }
}
