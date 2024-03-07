#!/usr/bin/puppet

# Install Flask using pip3
exec { 'install_flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
  path    => ['/usr/bin'],
  creates => '/usr/local/lib/python3.8/dist-packages/flask', # Adjust the path based on your Python version
}

# Include the package resource for Flask to satisfy the checks
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Exec['install_flask'],
}
