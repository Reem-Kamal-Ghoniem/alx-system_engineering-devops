#let us normalize using puppet
exec {'config file':
  command  => '/usr/bin/echo -e "    PasswordAuthentication no\n    IdentityFile ~/.ssh/school" >>  /etc/ssh/ssh_config',
}
