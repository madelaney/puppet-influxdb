# class to install influxdb
class influxdb::install(
  $package_ensure,
){
  case $facts['os']['name'] {
    'RedHat', 'CentOS':  { include influxdb::repo::yum  }
    /^(Debian|Ubuntu)$/: { include influxdb::repo::apt }
  }

  package { 'influxdb':
    ensure   => $package_ensure,
  }
}
