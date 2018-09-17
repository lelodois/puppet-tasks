# Class config do ntp
class ntpdemo {

  $message = 'Finish install'

  # install ntp
  package  {
    'ntp':
      ensure => 'present',
  }

  # ntp config file
  file {
    '/etc/ntp.conf':
      ensure  => 'present',
      content => 'server 0.centos.pool.ntp.org iburst\n',
  }

  # start ntpd service
  service {
    'ntpd':
      ensure  => 'running',
      enable  => true,
      content => '$message',
  }
}

include ntpdemo
