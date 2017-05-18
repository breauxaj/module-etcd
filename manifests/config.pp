define etcd::config (
  $content
) {
  include ::etcd

  file { $::etcd::params::etcd_config:
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => $content,
    notify  => Service[$::etcd::params::etcd_service],
    require => Package[$::etcd::params::etcd_package],
  }

}
