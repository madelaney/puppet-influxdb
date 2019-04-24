class influxdb::repo::apt() {
  apt::source {
    'influxdb':
      ensure   => 'present',
      location => 'https://repos.influxdata.com/ubuntu',
      repos    => 'stable',
      release  => $facts['os']['distro']['codename'],
      include  => {
        'src' => true,
      },
      key      => {
        'id'     => '05CE15085FC09D18E99EFB22684A14CF2582E0C5',
        'source' => 'https://repos.influxdata.com/influxdb.key',
      }
  }
}
