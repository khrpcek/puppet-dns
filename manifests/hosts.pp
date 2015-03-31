class dns::hosts {
  host { 'localhostv4':
    name => 'localhost',
    ensure => 'present',
    host_aliases => ['localhost.localdomain', 'localhost4', 'localhost4.localdomain4'],
    ip           => '127.0.0.1',
  }
  host { $::fqdn:
    name => $::fqdn,
    ensure => 'present',
    host_aliases => $::hostname,
    ip           => $::ipaddress,
  }
}
