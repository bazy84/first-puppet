class cron {
require my-packages

require users
  cron { 'Back up cat-pictures':
    command => '/usr/bin/rsync -az /var/www/cat-pictures/ /tmp/cat-pictures-backup/',
    hour    => '05',
    minute  => '00',
    #minute  => '*/5',
    #user    => 'NOTroot',
  }
  cron { 'manifests pull and puppet run':
    command => 'cd /var/lib/puppet/code && git pull --rebase && puppet apply --verbose /var/lib/puppet/code/manifests/site.pp --modulepath=/var/lib/puppet/code/modules/',
    minute  => '*/10',
  }
}
