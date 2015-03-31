class dns::site {
  $local_dns = $::site ? {
    wa => '10.255.128.1',
    sx => '10.255.0.1',
    hf => '172.24.126.1',
    lm => '10.3.200.10',
    ss => '10.4.200.1',
    wv => '10.5.200.1',
    rk => '10.6.200.20',
    ok => '10.7.200.1',
    ny => '10.11.200.1',
    lax2 => '10.200.10.252',
  }
}