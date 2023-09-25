#let us normalize using puppet
file { 'config file':
  command  => '/usr/bin/echo -e "
  IdentityFile ~/.ssh/school\n\
  PasswordAuthentication no\n",
}

