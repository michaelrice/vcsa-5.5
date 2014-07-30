#!/bin/bash

# See the original work from William Lam at http://www.virtuallyghetto.com/

## DO NOT EDIT BEYOND HERE ##

echo "Accepting EULA ..."
/usr/sbin/vpxd_servicecfg eula accept

echo "Setting default ports ..."
/usr/sbin/vpxd_servicecfg 'ports' 'defaults'

echo "Configuring Embedded DB ..."
/usr/sbin/vpxd_servicecfg 'db' 'write' 'embedded'

echo "Configuring SSO..."
/usr/sbin/vpxd_servicecfg 'sso' 'write' 'embedded' 'password'

echo "Starting VCSIM ..."
/usr/bin/vmware-vcsim-start default

#echo "Starting VCSA ..."
#/usr/sbin/vpxd_servicecfg service start

