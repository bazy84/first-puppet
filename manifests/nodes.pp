node 'ip-172-31-8-246' {
  $site_name = 'cat-pictures'
  $site_domain = 'cat-pictures.com'
  include nginx

  include my-packages
  include users
  include sshd
  include cron

  include motd
}
