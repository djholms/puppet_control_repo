class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => 'present',
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDkiK67s6IjbcYYS50GTheYCyvzyiGDvv3CszZtGtEYYW/D3KYcT9LBDhnlZRJFZL3Hi2aEqpS1jDhE12N7PVxthuyQ7uBgDRKuh3bttkZKTE4RyuG4c/zw2PLnqVTcAJgkd9psVfNCodhQTOon13WQVWhQGYDVKJqUGA9LaheOGUUDTfkCqsLaPng4ZYJn5R7FTGBYWsdke9wbWXjYxKTH/XCwlHE4bW09gobcUWxKmW6QZyY/tdbaAv/PRbLMj0SiwcG+MInL/cKLIOm8keHVS1NkNnCDb7NYreiflZ4JLOyri9Oh4DkHB2M5IQQ9Fksqt6C2X5jR2ej2Z0v4m6tH',
  }
}

