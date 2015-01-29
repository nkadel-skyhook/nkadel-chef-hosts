# Store hosts as array of arrays

# Allow alternate /etc/hosts name for NIS, and chroot configs
default['hosts']['file'] = '/etc/hosts'
default['hosts']['owner'] = 'root'
default['hosts']['group'] = 'root'
default['hosts']['mode'] = '064'

# Valid `hostname --fqdn` requires valid fqdn in one of
# loopback, ipaddress, or DNS in that order

# Default debian Debian style loopback fqdn setting
default['hosts']['fqdn_as_loopback'] = true
default['hosts']['fqdn'] = node['fqdn']
# Working junit and some logging tools require ipaddress, not loopback
default['hosts']['fqdn_as_ipaddress'] = false
default['hosts']['ipaddress'] = node['ipaddress']

# Sample host entry
default['hosts']['entries']['127.0.0.2']  = "loopback2.localdomain # test for hosts cookbook"

