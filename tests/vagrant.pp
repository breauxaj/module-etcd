node default {
  include ::etcd

  etcd::config {
    'ETCD_NAME':                  value => 'default';
    'ETCD_DATA_DIR':              value => '"/var/lib/etcd/default.etcd"';
    'ETCD_LISTEN_CLIENT_URLS':    value => '"http://localhost:2379"';
    'ETCD_ADVERTISE_CLIENT_URLS': value => '"http://localhost:2379"';
  }

}
