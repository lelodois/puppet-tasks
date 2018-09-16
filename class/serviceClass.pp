# Criação do serviço de ntd
class ntpdemo {
  package { 'ntp':
    ensure => 'present'
  }

  file { '/etc/ntp.conf':
    ensure  => 'present',
    content => 'server anyserver'
  }

  service { 'ntpd':
    ensure => 'running'
  }
}

# Declaração da classe
include ntpdemo
