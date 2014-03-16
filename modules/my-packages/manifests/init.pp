class my-packages {
  package { [ 'tree',
              'cronie',
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
