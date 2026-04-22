```yaml
User Authentication
(admin@10.244.189.10) Password:

Info: The max number of VTY users is 10, and the number
      of current VTY users on line is 1.
      The current login time is 2026-04-22 10:12:22-03:00.
Info: Lastest accessed IP: 45.235.208.39  Time: 2026-04-20 17:11:50-03:00  Password will expire in: -

Info: Smart-upgrade is currently disabled. Enable Smart-upgrade to get recommended version information.
<SW1POP10_P_EUCALIPTOS>sys
Enter system view, return user view with Ctrl+Z.
[SW1POP10_P_EUCALIPTOS]displ
[SW1POP10_P_EUCALIPTOS]display cu
[SW1POP10_P_EUCALIPTOS]display current-configuration
!Software Version V200R023C00SPC500
#
sysname SW1POP10_P_EUCALIPTOS
#
vlan batch 90 to 91 100 to 101 1110 1127 1151 1203 1207 1209 3151 3550
vlan batch 4094
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
#
http server-source all-interface
#
clock timezone Brasilia minus 03:00:00
#
ddr isolation disable
#
undo mac-address learning self-healing enable
#
capwap unknown-unicast cir 0
#
diffserv domain default
#
radius-server template default
#
bfd
#
mpls lsr-id 10.244.189.10
mpls
 mpls te
 mpls rsvp-te
 mpls te cspf
#
mpls l2vpn
#
vsi VSI_91_SC_POP2_POP10-9_ITA_OLT1 static
 pwsignal ldp
  vsi-id 91
  peer 10.244.188.2
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_90_SC_POP0_POP10-9_ITA_MGNT static
 pwsignal ldp
  vsi-id 90
  peer 10.244.188.2
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI100_SC_POP00-2_POP10_PQ_MGNT static
 pwsignal ldp
  vsi-id 100
  peer 10.244.188.2
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI101_SC_POP00-2_POP10_PQ_OLT1 static
 pwsignal ldp
  vsi-id 101
  peer 10.244.188.2
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3550_R_NEUTRA_LM_NA_REDE_CY static
 pwsignal ldp
  vsi-id 3550
  peer 10.244.188.27
 mtu 9000
 encapsulation ethernet
#
vsi VSI3151_CY_POP00_PROV_UPNET_L1 static
 pwsignal ldp
  vsi-id 3151
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
mpls ldp
#
#
mpls ldp remote-peer 10.244.188.2
 remote-ip 10.244.188.2
#
mpls ldp remote-peer 10.244.188.27
 remote-ip 10.244.188.27
#
mpls ldp remote-peer 10.244.189.0
 remote-ip 10.244.189.0
#
pki realm default
 certificate-check none
#
free-rule-template name default_free_rule
#
portal-access-profile name portal_access_profile
#
drop-profile default
#
vlan 90
 description VLAN_90_POP09_ITACOLOMI_MGNT
vlan 91
 description VLAN_91_POP09_ITACOLOMI_OLT1
vlan 100
 description VLAN_100_POP10_PQ_EUCAL_MGNT
vlan 101
 description VLAN_101_POP10_PQ_EUCAL_OLT1
vlan 1110
 description VLAN1110_SW1POP00_SW1POP10_MPLS
vlan 1127
 description VLAN1127_SW1POP10_SW1POP27_MPLS
vlan 1151
 description VLAN1151_SW1POP10_SW1POP51_OSPF
vlan 1203
 description VL1203_SW1POP10-9_SW1POP03_MPLS
vlan 1207
 description VL1107_SW1POP10-9_SW1POP07_MPLS
vlan 1209
 description VLAN1209_SW1POP10_SW1POP09_OSPF
vlan 3151
 description VLAN_3151_CYBER_BGP1_UPNET_L1
vlan 3550
 description VLAN_3550_R_NEUTRA_LM_NA_REDE_CYBER
vlan 4094
 description VLAN_4094_BLACKHOLE
#
aaa
 authentication-scheme default
  authentication-mode local
 authentication-scheme radius
  authentication-mode radius
 authorization-scheme default
  authorization-mode local
 accounting-scheme default
  accounting-mode none
 local-aaa-user password policy administrator
  password history record number 0
  password expire 0
 domain default
  authentication-scheme radius
  accounting-scheme default
  radius-server default
 domain default_admin
  authentication-scheme default
  accounting-scheme default
 local-user admin password irreversible-cipher $1c$'"nOV,d``)$HlZ9FVk@$0K;eCF3,F20vr-d%i%5R:p<]y-}\9A/$
 local-user admin privilege level 15
 local-user admin service-type ssh http
 local-user zandona password irreversible-cipher $1c$oqXJ.)3x+I$cxDNIPIw~Yx!;N,vi[N4Zx}X6-Z1OQpge7"`_<eC$
 local-user zandona privilege level 15
 local-user zandona service-type ssh http
#
ntp-service server disable
ntp-service ipv6 server disable
ntp-service unicast-server 200.189.40.8
ntp-service unicast-server 200.160.0.8
#
interface Vlanif90
 description VSI90_SC_POP00_POP09_ITACO_MGNT
 l2 binding vsi VSI_90_SC_POP0_POP10-9_ITA_MGNT
#
interface Vlanif91
 description VSI91_SC_POP00-2_POP09_ITA_OLT1
 l2 binding vsi VSI_91_SC_POP2_POP10-9_ITA_OLT1
#
interface Vlanif100
 description VSI100_SC_POP00-2_POP10_PQ_MGNT
 l2 binding vsi VSI100_SC_POP00-2_POP10_PQ_MGNT
#
interface Vlanif101
 description VSI101_SC_POP00-2_POP10_PQ_OLT1
 l2 binding vsi VSI101_SC_POP00-2_POP10_PQ_OLT1
#
interface Vlanif1110
 description VLAN1110_SW1POP12_SW1POP10_MPLS
 mtu 9216
 ip address 10.244.110.2 255.255.255.252
 ospf cost 1
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif1127
 description VLAN1127_SW1POP10_SW1POP27_MPLS
 mtu 9216
 ip address 10.244.127.1 255.255.255.252
 ospf cost 1
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif1203
 description VLAN1203_SW1POP10_SW1POP03_MPLS
 shutdown
 ip address 10.244.103.5 255.255.255.252
 ospf cost 1
 ospf network-type p2p
 mpls
 mpls ldp
#
interface Vlanif1207
 description VL1107_SW1POP10-9_SW1POP07_MPLS
 mtu 9216
 ip address 10.244.107.5 255.255.255.252
 ospf cost 1
 ospf network-type p2p
 mpls
 mpls ldp
#
interface Vlanif1209
 description VLAN1209_SW1POP10_SW1POP09_OSPF
 mtu 9216
 ip address 10.244.109.5 255.255.255.252
 ospf cost 10
 ospf network-type p2p
#
interface Vlanif3151
 description VLAN3151_CYBER_BGP1_SRNET_L1
 shutdown
 l2 binding vsi VSI3151_CY_POP00_PROV_UPNET_L1
#
interface Vlanif3550
 description VLAN_3550_R_NEUTRA_LM_NA_REDE_CYBER
 l2 binding vsi VSI_3550_R_NEUTRA_LM_NA_REDE_CY
#
interface MEth0/0/1
 ip address 192.168.1.253 255.255.255.0
#
interface XGigabitEthernet0/0/1
 description SW1POP10_PX01_SW1SRNET_PX11
 shutdown
 port link-type trunk
 port trunk pvid vlan 4094
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 3151
 stp bpdu-filter enable
 stp edged-port enable
 undo lldp enable
 jumboframe enable 12288
 storm-control broadcast min-rate 64 max-rate 2048
 storm-control multicast min-rate 64 max-rate 2048
 storm-control unicast min-rate 64 max-rate 2048
 storm-control interval 10
 storm-control enable trap
 storm-control enable log
#
interface XGigabitEthernet0/0/2
 description SW1POP10_PX02_SW1POP09_PX02
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 90 to 91 1203 1207 1209
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/3
 description SW1POP10_PX03_TC_TELECOM_PX00
 port link-type trunk
 undo port trunk allow-pass vlan 1
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/4
 shutdown
#
interface XGigabitEthernet0/0/5
 shutdown
#
interface XGigabitEthernet0/0/6
 shutdown
#
interface XGigabitEthernet0/0/7
 shutdown
#
interface XGigabitEthernet0/0/8
 shutdown
#
interface XGigabitEthernet0/0/9
 shutdown
#
interface XGigabitEthernet0/0/10
 shutdown
#
interface XGigabitEthernet0/0/11
 shutdown
#
interface XGigabitEthernet0/0/12
 shutdown
#
interface XGigabitEthernet0/0/13
 shutdown
#
interface XGigabitEthernet0/0/14
 shutdown
#
interface XGigabitEthernet0/0/15
 shutdown
#
interface XGigabitEthernet0/0/16
 shutdown
#
interface XGigabitEthernet0/0/17
 shutdown
#
interface XGigabitEthernet0/0/18
 shutdown
#
interface XGigabitEthernet0/0/19
 shutdown
#
interface XGigabitEthernet0/0/20
 shutdown
#
interface XGigabitEthernet0/0/21
 shutdown
#
interface XGigabitEthernet0/0/22
 shutdown
#
interface XGigabitEthernet0/0/23
 shutdown
#
interface XGigabitEthernet0/0/24
 description PTP_SW1POP10_PX24__OLT1_XSFP1
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 100 to 101 109 3550
 stp disable
 jumboframe enable 12288
#
interface 100GE0/0/1
 description PTP_SW1POP10_PCX01__SW1POP27_PCX01
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1127
 jumboframe enable 12288
#
interface 100GE0/0/2
 description PTP_SW1POP10_PCX02__SW1POP12_PCX02
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1110
 jumboframe enable 12288
#
interface 100GE0/0/3
 shutdown
#
interface 100GE0/0/4
 shutdown
#
interface 100GE0/0/5
 shutdown
#
interface 100GE0/0/6
 shutdown
#
interface NULL0
#
interface LoopBack0
 ip address 10.244.189.10 255.255.255.255
#
ospf 1 router-id 10.244.189.10
 bfd all-interfaces enable
 import-route direct cost 15 type 1
 import-route static cost 15 type 1
 silent-interface all
 undo silent-interface Vlanif1110
 undo silent-interface Vlanif1209
 undo silent-interface Vlanif1127
 undo silent-interface Vlanif1203
 undo silent-interface Vlanif1207
 opaque-capability enable
 area 0.0.0.0
  network 10.244.103.4 0.0.0.3 description Vlanif1203
  network 10.244.107.4 0.0.0.3 description Vlanif1207
  network 10.244.109.4 0.0.0.3 description Vlanif1209
  network 10.244.110.0 0.0.0.3 description Vlanif1110
  network 10.244.110.4 0.0.0.3 description Vlanif1210
  network 10.244.127.0 0.0.0.3 description Vlanif1127
  network 10.244.189.10 0.0.0.0 description LOOPBACK
  mpls-te enable
#
undo icmp name timestamp-request receive
#
snmp-agent
snmp-agent local-engineid 800007DB03F44588AAB900
snmp-agent community read cipher %^%#N/%4YF8T+IWr6zP[U|J!wJ,Y~6bfM7BAq`<j"fd)QRR:2\j,Z~NbNF11\B*,:,3EDaa&>4:54rFHbvcS%^%#
snmp-agent sys-info contact Cyberweb
snmp-agent sys-info location -29.914629,-51.035335
snmp-agent sys-info version v2c v3
snmp-agent protocol source-status all-interface
undo snmp-agent protocol source-status ipv6 all-interface
#
stelnet server enable
ssh server-source all-interface
ssh server cipher aes256_ctr aes128_ctr
ssh server hmac sha2_256
ssh server key-exchange dh_group16_sha512 dh_group15_sha512 dh_group14_sha256 dh_group_exchange_sha256
ssh client cipher aes256_ctr aes128_ctr
ssh client hmac sha2_256
ssh client key-exchange dh_group16_sha512 dh_group15_sha512 dh_group14_sha256 dh_group_exchange_sha256
ssh server dh-exchange min-len 2048
ssh server publickey rsa_sha2_512 rsa_sha2_256
#
user-interface con 0
 authentication-mode password
 set authentication password cipher $1c$e:^a-XJN'!$GlvJ~[$N4US{Z:SAIm`HRXa.K1>r(>Dq\dHibfCR$
user-interface vty 0 4
 authentication-mode aaa
 idle-timeout 3600 0
 protocol inbound all
user-interface vty 16 20
#
wlan
 traffic-profile name default
 security-profile name default
 security-profile name default-wds
 security-profile name default-mesh
 ssid-profile name default
 vap-profile name default
 wds-profile name default
 mesh-handover-profile name default
 mesh-profile name default
 regulatory-domain-profile name default
 air-scan-profile name default
 rrm-profile name default
  smart-roam snr-margin high-level-margin 15 low-level-margin 10
 radio-2g-profile name default
 radio-5g-profile name default
 wids-spoof-profile name default
 wids-whitelist-profile name default
 wids-profile name default
 ap-system-profile name default
 port-link-profile name default
 wired-port-profile name default
 ap-group name default
  radio 2
   frequency 5g
 provision-ap
#
dot1x-access-profile name dot1x_access_profile
#
mac-access-profile name mac_access_profile
#
ops
#
remote-unit
#
return
[SW1POP10_P_EUCALIPTOS]
```
