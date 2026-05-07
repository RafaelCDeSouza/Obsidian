```undefined




router id 10.244.189.19
#
vlan batch 16 200 to 201 203 1000 1003 1111 1120 1147 1160 1167
vlan batch 1220 1247 1320 3000 3105 to 3107 3110 3120 to 3121 3148 3205 to 3206 3220
vlan batch 3350 3353 3560 3570 to 3571 3573 3801 4094
#
authentication-profile name default_authen_profile
 authentication ipv6-control enable
authentication-profile name dot1x_authen_profile
 authentication ipv6-control enable
authentication-profile name dot1xmac_authen_profile
 authentication ipv6-control enable
authentication-profile name mac_authen_profile
 authentication ipv6-control enable
authentication-profile name multi_authen_profile
 authentication ipv6-control enable
authentication-profile name portal_authen_profile
 authentication ipv6-control enable
#
set save-configuration delay 1
set save-configuration backup-to-server server 10.244.244.250 transport-type ftp user backups password %^%#z<fx&-0ygD&B'gOhZ28EVx3B=ku;/L,%Yi#@T6KL%^%# path huawei












```
