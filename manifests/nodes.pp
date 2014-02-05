node /^ip+/ {
  notify { "I think my hostname is ${::hostname}": }

  $site_name = 'cat-pictures'
  $site_domain = 'cat-pictures.com'
  include nginx

  include my-packages
  include users
  include sshd
  include cron

  include motd
  include selinux
  include iptables
}
