class dns::site {
  $local_dns = $::site ? {
    site1 => '10.255.128.1',
    site2 => '10.255.0.1',
  }
}
