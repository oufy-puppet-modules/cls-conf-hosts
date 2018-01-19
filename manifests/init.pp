# == Class: cls_conf_hosts
#
# Full description of class cls_conf_hosts here.
#
# === Parameters
#
# Document parameters here.
#
# [hsh_hosts]
#   default value : {}
#   Hash of host entries of type host (example below)
#     'server.domain.local' = {
#	ip:'1.2.3.4',
#	host_aliases:['server','mygoodalias']
#	}
#
#  [bln_purge]
#    default value : true
#    boolean to purge /etc/hosts file before setting it
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'cls_conf_hosts':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Sebastien LONGO <sebastien.longo@oufy.net>
#
# === Licensing :  2017 GPLv3 Sebastien LONGO
#
class cls_conf_hosts($hsh_hosts={},$bln_purge=true) {

  class {'hosts':
    purge_hosts			=>	$bln_purge,
    host_entries		=>	$hsh_hosts,
    enable_fqdn_entry		=>	false,
    enable_ipv4_localhost	=>	true,
    enable_ipv6_localhost	=>	true,
#    localhost_aliases		=>	['localhost',
#					'localhost.localdomain',
#					'localhost4',
#					'localhost4.localdomain4'],
    localhost6_aliases		=>	['localhost',
					'localhost.localdomain',
					'localhost6'],
  }

}
