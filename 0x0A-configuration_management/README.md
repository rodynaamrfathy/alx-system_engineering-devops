**Repository: alx-system_engineering-devops**

## 0x0A-configuration_management

### 0-create_a_file.pp

```puppet
# Puppet Manifest to Create a File
# File path: /tmp/school
# File permission: 0744
# File owner: www-data
# File group: www-data
# File content: I love Puppet

file { '/tmp/school':
  ensure => file,
  mode   => '0744',
  owner  => 'www-data',
  group  => 'www-data',
  content => 'I love Puppet',
}
```

**Usage:**
```bash
root@6712bef7a528:~# puppet apply 0-create_a_file.pp
```

### 1-install_a_package.pp

```puppet
# Puppet Manifest to Install Flask Package
# Package: flask
# Version: 2.1.0

package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
```

**Usage:**
```bash
root@9665f0a47391:/# puppet apply 1-install_a_package.pp
```

### 2-execute_a_command.pp

```puppet
# Puppet Manifest to Execute a Command
# Command: pkill killmenow

exec { 'killmenow':
  command => 'pkill killmenow',
  onlyif  => 'pgrep killmenow',
}
```
