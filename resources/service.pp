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
