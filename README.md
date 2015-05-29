hosts Cookbook
==============
Configure /etc/hosts from template

Requirements
------------
#### packages
None required

Attributes
----------


e.g.
#### hosts::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['hosts']['file']</tt></td>
    <td>string</td>
    <td>location of published file</td>
    <td><tt>/etc/hosts</tt></td>
  </tr>
  <tr>
    <td><tt>['hosts']['owner']</tt></td>
    <td>string</td>
    <td>owner of hosts file</td>
    <td><tt>root</tt></td>
  </tr>
  <tr>
    <td><tt>['hosts']['group']</tt></td>
    <td>string</td>
    <td>group of hosts file</td>
    <td><tt>root</tt></td>
  </tr>
  <tr>
    <td><tt>['hosts']['mode']</tt></td>
    <td>string</td>
    <td>mode of hosts file</td>
    <td><tt>0644</tt></td>
  </tr>
  <tr>
    <td><tt>['hosts']['fqdn']</tt></td>
    <td>strung</td>
    <td>FQDN of client, defaults to chef detected</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['hosts']['fqdn_as_loopback']</tt></td>
    <td>boolean</td>
    <td>use FQDN in loopback entry</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['hosts']['fqdn_as_ipaddress']</tt></td>
    <td>boolean</td>
    <td>Use FQDN with chef ['hosts']['ipaddress']</td>
    <td><tt>false</tt></td>
  </tr>
</table>

Usage
-----
#### hosts::default
Set attributes in roles or environments as needed.

e.g.
Include `hosts` in your node's `run_list` with relevant atttributes:

```json
{
  "name":"my_node",
    "hosts": {
      "entries": {
	"127.0.0.2": "localhost2.localdoman # test for hosts cookbook",
	"www.xxx.yyy.zzz": "foo.example.com foo"
      }
    }
  "run_list": [
    "recipe[hosts]"
  ]
}
```

License and Authors
-------------------
License: Apache v2.0
Authors: Nico Kadel-Garcia <nkadel@skyhookwireless.com>
