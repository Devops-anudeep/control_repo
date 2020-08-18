node default {
  file {'/root/README':
    ensure  => file,
    content => 'Hello Puppet',
    owner   => 'root',
  }
}

node 'master.puppet.vm' {
  include role::master_server
}
