# File: 100-puppet_ssh_config.pp

file_line { 'Turn off passwd auth':
  path   => '/etc/ssh/ssh_config',  # Specify the path to your ssh client config file
  line   => 'PasswordAuthentication no',
  match  => '^#?PasswordAuthentication',
}

file_line { 'Declare identity file':
  path   => '/etc/ssh/ssh_config',  # Specify the path to your ssh client config file
  line   => 'IdentityFile ~/.ssh/school',
  match  => '^#?IdentityFile',
}

