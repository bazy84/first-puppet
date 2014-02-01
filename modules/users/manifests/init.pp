class users {
  user { 'art':
    ensure     => absent,
    managehome => true,
  }
  user { 'nic':
    ensure     => absent,
    managehome => true,
  }
  user { 'upncritu':
    ensure           => 'present',
    gid              => '100',
    groups           => ['wheel'],
    home             => '/home/upncritu',
    managehome       => true,
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/bin/bash',
    uid              => '5101',
  }
  ssh_authorized_key { 'upncritu_ssh':
    user             => 'upncritu',
    type             => 'ssh-rsa',
    key              => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA0rFmJBFh+LpSncKaD39eG/vNa5XL1Lq8YVh5oGzI5aLpDpYDT/P6Y+dOUOiNzMd1T3WJycTn8Cp+RGLZTYqksWuC18ULsKZB/W8lOfubAydA40I0KSINydibmuqOl1oMNCtyUNk4eGzwko87rBjhaJ70WA8Ut3qRG38wiTKFjHuseeB5bH+dCrPJ17NnmgYdTPCFjvXY/zz6m/89QvprKRIFnnWeyhuZe7+m3PsIVvmymHQgCayPmgTZs7E2MrNhEp8qPY+CIz+FCxx60yPz5b+rvn4orhbo+lyEJ7WI88hOfzryhCLJw6zGIAGof6K/SXi/YkleEnfZTjtj+653+Q==',
  }

}
