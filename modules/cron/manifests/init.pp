class cron {
require users
  cron { 'Back up cat-pictures':
    command => '/usr/bin/rsync -az /var/www/cat-pictures/ /tmp/cat-pictures-backup/',
    hour    => '05',
    minute  => '00',
    #minute  => '*/5',
    #user    => 'NOTroot',
  }
}
