class dns (
  $module_enable = $dns::params::module_enable,
)  
inherits dns::params {
  if $module_enable {
    include dns::site
    include dns::config
    include dns::hosts
  }
  elsif $module_enable == false {
    notice("DNS Module is disabled")
  }
}
