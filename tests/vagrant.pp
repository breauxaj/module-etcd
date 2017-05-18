node default {
  include ::etcd

  etcd::config { 'default':
    content => 'ETCD_NAME=default
ETCD_DATA_DIR="/var/lib/etcd/default.etcd"
ETCD_LISTEN_CLIENT_URLS="http://localhost:2379"
ETCD_ADVERTISE_CLIENT_URLS="http://localhost:2379"'
  }

}
