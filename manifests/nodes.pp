node 'ip-172-31-8-246' {
  include nginx
  include my-packages
  include users
  include sshd
}
