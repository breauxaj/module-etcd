# Class: etcd::params
#
# This class set parameters used in this module
#
# Actions:
#   - Defines numerous parameters used by other classes
#
class etcd::params {
  $etcd_package_ensure = 'latest'

  case $::operatingsystem {
    'CentOS', 'OracleLinux', 'RedHat', 'Scientific': {
      case $::operatingsystemmajrelease {
        '7': {
          $etcd_config  = '/etc/etcd/etcd.conf'
          $etcd_package = 'etcd'
          $etcd_service = 'etcd'
        }
        default: {
          fail("The ${module_name} module is not supported on an ${::operatingsystem} ${::operatingsystemmajrelease} distribution.")
        }
      }
    }
    default: {
      fail("The ${module_name} module is not supported on an ${::osfamily} based system.")
    }
  }

}
