class users {
  user { 'art':
    ensure     => present,
    comment    => 'Art Vandelay',
    home       => '/home/art',
    managehome => true,
  }
  ssh_authorized_key { 'art_ssh':
    user       => 'art',
    type       => 'rsa',
    key        => 'AAAAB3NzaC1yc2EAAAABIwAAAIEA3ATqENg+GWACa2BzeqTdGnJhNoBer8x6pfWkzNzeM8Zx7/2Tf2pl7kHdbsiTXEUawqzXZQtZzt/j3Oya+PZjcRpWNRzprSmd2UxEEPTqDw9LqY5S2B8og/NyzWaIYPsKoatcgC7VgYHplcTbzEhGu8BsoEVBGYu3IRy5RkAcZik=',
  }
  user { 'nic':
    ensure     => absent,
    managehome => true,
  }
}
