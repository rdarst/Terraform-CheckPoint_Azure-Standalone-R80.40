#!/bin/bash
clish -c 'set user admin shell /bin/bash' -s
clish -c 'set static-route 10.95.11.0/24 nexthop gateway address 10.95.1.1 on' -s
config_system -s 'install_security_gw=true&install_ppak=true&gateway_cluster_member=false&install_security_managment=true&install_mgmt_primary=true&install_mgmt_secondary=false&download_info=true&hostname=R80dot40mgmt&mgmt_gui_clients_radio=any&mgmt_admin_radio=gaia_admin'
/opt/CPvsec-R80.40/bin/vsec on
sleep 5
reboot
