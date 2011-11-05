define sysctl($value) {
  include sysctl::common

  augeas { "sysctl/${name}":
    context => '/files/etc/sysctl.conf',
    changes => "set ${name} '${value}'",
    onlyif  => "match ${name}[.='${value}'] size == 0",
    notify  => Exec['sysctl/reload'],
  }
}
