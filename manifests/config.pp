class dns::config inherits dns::site {
  case $::osfamily {
    'RedHat' : {
      file { '/etc/resolv.conf':
        ensure => 'file',
        owner  => 'root',
        group  => 'root',
        mode   => '0644',
        content => template('dns/resolv.conf.erb'),
     }
    }
  }
}
