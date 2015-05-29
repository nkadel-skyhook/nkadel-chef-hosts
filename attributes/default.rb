# Store hosts as array of arrays

# Allow alternate /etc/hosts name for NIS, and chroot configs
default['hosts']['file'] = '/etc/hosts'
default['hosts']['owner'] = 'root'
default['hosts']['group'] = 'root'
default['hosts']['mode'] = '064'

default['hosts']['fqdn'] = node['fqdn']
default['hosts']['ipaddress'] = node['ipaddress']

# Valid `hostname --fqdn` requires valid fqdn in one of
# loopback, ipaddress, or DNS, in that order

# Default debian Debian style loopback fqdn setting
# Not compatible wih Cloudera hosts
default['hosts']['fqdn_as_loopback'] = true
# Working junit and some logging tools require only IP address enabled
default['hosts']['fqdn_as_ipaddress'] = false

default['hosts']['entries'] = {}
# Sample host entry
#default['hosts']['entries']['127.0.0.2']  = "loopback2.localdomain # test for hosts cookbook"
