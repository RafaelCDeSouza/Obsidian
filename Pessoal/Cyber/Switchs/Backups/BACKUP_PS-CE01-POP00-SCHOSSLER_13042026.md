```yaml

!Software Version V800R011C10SPC100
!Last configuration was updated at 2026-04-01 19:16:48-03:00 by radiusnet1
!Last configuration was saved at 2026-04-01 19:17:48-03:00
#
clock timezone Brazil minus 03:00:00
#
sysname PS-CE01-POP00-SCHOSSLER
#
set neid 72e44a
#
undo FTP server-source all-interface
undo FTP ipv6 server-source all-interface
#
cpu-defend policy 1
 car arp cir 8192
#
fan speed auto
#
ntp-service server disable
ntp-service ipv6 server disable
ntp-service unicast-peer 200.160.0.8
ntp-service unicast-peer 200.189.40.8
#
slot 3
 cpu-defend-policy 1
#
dhcpv6 duid 0001000127cc6083f03f9593b597
#
ipv6 prefix prefix-pd-ce01 delegation
 prefix 2804:4DB4:100::/41 delegating-prefix-length 56
 pd-unshare-only
#
ipv6 prefix prefix-tunnel-ce01 local
 prefix 2804:4DB4:180::/41
#
ipv6 prefix prefix-pd-ce01-cyber delegation
 prefix 2804:8F00:100::/41 delegating-prefix-length 60
 pd-unshare-only
#
ipv6 prefix prefix-tunnel-ce01-cyber local
 prefix 2804:8F00:180::/41
#
ipv6 pool poolv6-prefix-pd-ce01 bas delegation
 dns-server 2001:4860:4860::8888 2001:4860:4860::8844
 prefix prefix-pd-ce01
#
ipv6 pool poolv6-prefix-pd-ce01-cyber bas delegation
 dns-server 2001:4860:4860::8888 2001:4860:4860::8844
 prefix prefix-pd-ce01-cyber
#
ipv6 pool poolv6-prefix-tunnel-ce01 bas local
 dns-server 2001:4860:4860::8888 2001:4860:4860::8844
 prefix prefix-tunnel-ce01
#
ipv6 pool poolv6-prefix-tunnel-ce01-cyber bas local
 dns-server 2001:4860:4860::8888 2001:4860:4860::8844
 prefix prefix-tunnel-ce01-cyber
#
dot1x-template 1
#
user-group group-ce01-pppoe
#
set save-configuration interval 1440 delay 1
set save-configuration backup-to-server server 10.244.244.250 transport-type ftp user backups password %^%#z<fx&-0ygD&B'gOhZ28EVx3B=ku;/L,%Yi#@T6KL%^%# path huawei
#
undo telnet server enable
undo telnet ipv6 server enable
undo telnet server-source all-interface
undo telnet ipv6 server-source all-interface
#
radius-server authorization 10.244.244.210 destination-port 3799 shared-key-cipher %^%#&ATc6#FTAN64gq5Yeri;~w]j,GL1{Tz5UpLKmPK1%^%# server-group radius01
radius-server authorization 172.18.0.1 destination-port 3799 shared-key-cipher %^%#Yyw'UYx*Z:sS3C=W+SIG8`9eF9!Yv~MU{/IB;puR%^%# server-group radius01
radius-server authorization 172.18.10.1 destination-port 3799 shared-key-cipher %^%#&ATc6#FTAN64gq5Yeri;~w]j,GL1{Tz5UpLKmPK1%^%# server-group radius02-cyberweb
#
radius-server group radius01
 radius-server shared-key-cipher %^%#G(n!.J<W-Q%#u`Nz$qT*-!G(#`,I4~aV{ZE4LUO"%^%#
 radius-server authentication 172.18.0.1 1812 weight 0
 radius-server authentication 10.244.244.210 1812 weight 0
 radius-server accounting 172.18.0.1 1813 weight 0
 radius-server accounting 10.244.244.210 1813 weight 0
 radius-server retransmit 5 timeout 10
 radius-server accounting-start-packet resend 3
 radius-server accounting-stop-packet resend 3
 radius-server accounting-interim-packet resend 5
 radius-server source interface LoopBack0
 radius-server user-name originalinterface Eth-Trunk7.133
 description VLAN_133_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 8021p 0
 user-vlan 133
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01-cyberweb
  access-delay 100
 #
#interface Eth-Trunk7.141
 description VLAN_141_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 141
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
 #
#
 radius-server accounting-stop-packet send force
#
radius-server group radius02-cyberweb
 radius-server shared-key-cipher %^%#G(n!.J<W-Q%#u`Nz$qT*-!G(#`,I4~aV{ZE4LUO"%^%#
 radius-server authentication 172.18.10.1 1812 weight 0
 radius-server accounting 172.18.10.1 1813 weight 0
 radius-server retransmit 5 timeout 10
 radius-server source interface LoopBack0
 radius-server user-name original
#
diffserv domain default
#
diffserv domain 5p3d
#
forward alarm cpu-usage multi-core threshold 95
forward alarm vcpu-usage multi-core threshold 95
#
soc
#
ip vpn-instance __LOCAL_OAM_VPN__
 ipv4-family
 ipv6-family
#
mpls lsr-id 10.244.88.1
#
mpls
#
mpls l2vpn
#
ip pool poolce01 bas local
 gateway 100.101.0.1 255.255.128.0
 section 0 100.101.0.2 100.101.3.255
 section 1 100.101.4.0 100.101.7.255
 section 2 100.101.8.0 100.101.11.255
 section 3 100.101.12.0 100.101.15.255
 dns-server 10.244.244.234 8.8.8.8
 domain-search-list domain-ce01
#
ip pool poolce01_bloqueio bas local
 gateway 100.101.128.1 255.255.128.0
 section 0 100.101.128.2 100.101.131.255
 dns-server 10.244.244.234 8.8.8.8
 domain-search-list domain-ce01
#
acl number 2000
 rule 0 deny source 0.0.0.0 0
 rule 5 permit
#
acl number 2001
 description Drop SNMP
 rule 5 permit source 10.244.244.0 0.0.0.255
 rule 6 permit source 201.30.0.0 0.0.255.255
 rule 7 permit source 100.100.100.0 0.0.0.255
 rule 8 permit source 201.76.114.17 0
 rule 9 permit source 187.183.0.0 0.0.255.255
 rule 10 permit source 179.232.0.0 0.0.255.255
 rule 11 permit source 187.112.0.0 0.3.255.255
 rule 12 permit source 10.244.254.0 0.0.0.255
 rule 13 permit source 179.176.0.0 0.3.255.255
 rule 100 deny
#
acl number 3000
 description CGNAT_PREFIXO_ACL_CE01
 rule 5 permit ip source 100.64.0.0 0.63.255.255
#
acl number 3001
 description CGNAT_PREFIXO_ACL_CE01_BYPASS
 rule 5 permit ip source 100.64.0.0 0.63.255.255 destination 45.235.208.0 0.0.3.255
 rule 6 permit ip source 100.64.0.0 0.63.255.255 destination 100.64.0.0 0.63.255.255
 rule 7 permit ip source 100.64.0.0 0.63.255.255 destination 10.0.0.0 0.255.255.255
 rule 8 permit ip source 100.64.0.0 0.63.255.255 destination 186.192.69.0 0.0.0.255
#
traffic classifier CGNAT-PREFIXO-CLASS-CE01 operator or
 if-match acl 3000
#
traffic classifier CGNAT-PREFIXO-CLASS-CE01-BYPASS operator or
 if-match acl 3001
#
traffic behavior CGNAT-PREFIXO-BEHAVIOR-CE01
 redirect ip-nexthop 10.244.111.133
#
traffic behavior CGNAT-PREFIXO-BEHAVIOR-CE01-BYPASS
#
traffic policy CGNAT-PREFIXO-POLICY-CE01
 share-mode
 classifier CGNAT-PREFIXO-CLASS-CE01-BYPASS behavior CGNAT-PREFIXO-BEHAVIOR-CE01-BYPASS precedence 1
 classifier CGNAT-PREFIXO-CLASS-CE01 behavior CGNAT-PREFIXO-BEHAVIOR-CE01 precedence 2
#
security password
 #
 rule admin
  forbidden word changeme_123
#
aaa
 user-block reactive 1
 local-user cyberweb password irreversible-cipher $1c$IpUXHB2k"D$eTmy%|D,_V9dBmWsy)d2FK}w-b=^!"*V6M:<vh}R$
 local-user cyberweb service-type ssh
 local-user cyberweb level 2
 local-user cyberweb state block fail-times 3 interval 5
 local-user admin-cyber password irreversible-cipher $1c$Q78$/%/a5.$zor)+HK{8!I;Xb(~hp1SlD*EW1x'3&oX7pM0;c91$
 local-user admin-cyber service-type ssh
 local-user admin-cyber level 3
 local-user admin-cyber state active
 local-user zandona password irreversible-cipher $1c$U2f{7&wPZ.$O_z-,TidYF)'~PYxsUE$3j{5QrYXG$)b$v!hs@;3$
 local-user zandona service-type ssh
 local-user zandona level 3
 local-user zandona state block fail-times 3 interval 5
 local-user future password irreversible-cipher $1c$^>,7D|I.gV$;enWA{^iUPbi&f96@:=NDE1@Bntir%>k5>4K(lwR$
 local-user future service-type ssh
 local-user future level 3
 local-user future state block fail-times 3 interval 5
 local-user suporte password irreversible-cipher $1c$&!Z9$f0<A$$**(A0AyNsIg`;{&uXQMT8V$/C+"=]-/x:3Ag'R^4$
 local-user suporte service-type ssh
 local-user suporte level 1
 local-user suporte state block fail-times 3 interval 5
 local-user radiusnet1 password irreversible-cipher $1c$;OM(RCZQ>:$u^qw~.d+B$)v3QImX^NO,(rkO>n02Uh.cZTX+nbJ$
 local-user radiusnet1 service-type ssh
 local-user radiusnet1 level 3
 local-user radiusnet1 state active
 #
 authentication-scheme default0
 #
 authentication-scheme default1
 #
 authentication-scheme default
  authentication-mode local radius
 #
 authentication-scheme authentication-scheme01
 #
 authorization-scheme default
 #
 accounting-scheme default0
 #
 accounting-scheme default1
 #
 accounting-scheme accounting-scheme01
 #
 domain default0
 #
 domain default1
 #
 domain default_admin
 #
 domain domain-ce01
  authentication-scheme authentication-scheme01
  accounting-scheme accounting-scheme01
  radius-server group radius01
  ip-pool poolce01_bloqueio
  ipv6-pool poolv6-prefix-pd-ce01-cyber
  ipv6-pool poolv6-prefix-tunnel-ce01-cyber
  user-max-session 1
  dns primary-ip 10.244.244.234
  dns second-ip 8.8.8.8
  dns primary-ipv6 2606:4700:4700::1111
  dns second-ipv6 2001:4860:4860::8844
  user-group group-ce01-pppoe
  ipv6 nd autoconfig managed-address-flag
  qos rate-limit-mode car inbound
  qos rate-limit-mode car outbound
 #
 domain domain-ce01-cyberweb
  authentication-scheme authentication-scheme01
  accounting-scheme accounting-scheme01
  radius-server group radius02-cyberweb
  ipv6-pool poolv6-prefix-pd-ce01-cyber
  ipv6-pool poolv6-prefix-tunnel-ce01-cyber
  user-max-session 1
  dns primary-ip 10.244.244.234
  dns second-ip 8.8.8.8
  dns primary-ipv6 2606:4700:4700::1111
  dns second-ipv6 2001:4860:4860::8844
#
license
 active port-basic slot 3 card 3 port 0-13
 active port-aggregation slot 3 card 3 port 0-13
#
ospfv3 1
 router-id 10.244.88.1
 import-route direct
 import-route static
 import-route unr
 area 0.0.0.0
#
interface Eth-Trunk7
 portswitch
 description LAG7_SW1POP00_P12_P13__PSCE01_P12_P13
#
interface Eth-Trunk7.11
 description VLAN_11_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 11
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
 #
#
interface Eth-Trunk7.12
 description VLAN_12_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 12
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
 #
#
interface Eth-Trunk7.13
 description VLAN_13_POP0_ARQU_OLT1_CYBER
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 13
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01-cyberweb
 #
#
interface Eth-Trunk7.18
 description VLAN_18_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 18
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
 #
#
interface Eth-Trunk7.21
 description VLAN_21_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 21
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
  access-delay 100
 #
#
interface Eth-Trunk7.31
 description VLAN_31_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 31
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
 #
#
interface Eth-Trunk7.39
 description VLAN_39_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 39
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
 #
#
interface Eth-Trunk7.41
 description VLAN_41_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 41
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
  access-delay 100
 #
#
interface Eth-Trunk7.43
 description VLAN_43_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 43
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01-cyberweb
  access-delay 100
 #
#
interface Eth-Trunk7.51
 description VLAN_51_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 51
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
  access-delay 100
 #
#
interface Eth-Trunk7.53
 description VLAN_53_PPPOE_CE01_CYBER
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 53
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01-cyberweb
 #
#
interface Eth-Trunk7.61
 description VLAN_6_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 61
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
  access-delay 100
 #
#
interface Eth-Trunk7.71
 description VLAN_71_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 71
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
  access-delay 100
 #
#
interface Eth-Trunk7.73
 description VLAN_73_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 73
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01-cyberweb
 #
#
interface Eth-Trunk7.81
 description VLAN_81_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 81
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
 #
#
interface Eth-Trunk7.83
 description VLAN_831_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 83
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01-cyberweb
 #
#
interface Eth-Trunk7.91
 description VLAN_91_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 91
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
 #
#
interface Eth-Trunk7.101
 description VLAN_101_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 101
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
  access-delay 100
 #
#
interface Eth-Trunk7.111
 description VLAN_111_PPPOE_CE01_COND_VIVAZ
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 111
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
  access-delay 100
 #
#
interface Eth-Trunk7.113
 description VLAN_113_PPPOE_CE01_COND_VIVAZ
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 113
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01-cyberweb
  access-delay 100
 #
#
interface Eth-Trunk7.121
 description VLAN_121_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 121
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
 #
#
interface Eth-Trunk7.131
 description VLAN_131_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 131
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
  access-delay 100
 #
#
interface Eth-Trunk7.133
 description VLAN_133_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 8021p 0
 user-vlan 133
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01-cyberweb
  access-delay 100
 #
#
interface Eth-Trunk7.141
 description VLAN_141_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 141
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
 #
#
interface Eth-Trunk7.151
 description VLAN_151_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 151
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
  access-delay 100
 #
#
interface Eth-Trunk7.161
 description VLAN_161_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 161
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
  access-delay 100
 #
#
interface Eth-Trunk7.169
 description VLAN_169_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 169
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
  access-delay 100
 #
#
interface Eth-Trunk7.171
 description VLAN_171_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 171
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
  access-delay 100
 #
#
interface Eth-Trunk7.173
 description VLAN_173_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 173
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01-cyberweb
  access-delay 100
 #
#
interface Eth-Trunk7.179
 description VLAN_179_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 179
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
  access-delay 100
 #
#
interface Eth-Trunk7.181
 description VLAN_181_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 181
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01-cyberweb
  access-delay 100
 #
#
interface Eth-Trunk7.191
 description VLAN_191_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 191
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
  access-delay 100
 #
#
interface Eth-Trunk7.193
 description VLAN_193_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 193
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01-cyberweb
 #
#
interface Eth-Trunk7.201
 description VLAN_201_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 201
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
  access-delay 200
 #
#
interface Eth-Trunk7.203
 description VLAN_203_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 203
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01-cyberweb
 #
#
interface Eth-Trunk7.211
 description VLAN_211_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 211
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
 #
#
interface Eth-Trunk7.213
 description VLAN_213_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 213
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01-cyberweb
 #
#
interface Eth-Trunk7.251
 description VLAN_251_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 251
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
  access-delay 100
 #
#
interface Eth-Trunk7.253
 description VLAN_253_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 253
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01-cyberweb
  access-delay 100
 #
#
interface Eth-Trunk7.258
 description VLAN_258_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 258
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
  access-delay 100
 #
#
interface Eth-Trunk7.271
 description VLAN_271_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 271
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
 #
#
interface Eth-Trunk7.273
 description VLAN_273_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 273
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01-cyberweb
 #
#
interface Eth-Trunk7.281
 description VLAN_281_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 281
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
 #
#
interface Eth-Trunk7.283
 description VLAN_281_PPPOE_CE01
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 283
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01-cyberweb
 #
#
interface Eth-Trunk7.1001
 vlan-type dot1q 1001
 description PTP_PS_CE01_BGP1_CYBER
 ip address 10.242.0.130 255.255.255.252
 statistic enable
 ospf cost 2
 ospf network-type p2p
#
interface Eth-Trunk7.1111
 vlan-type dot1q 1111
 description PTP_PS_CE01_CGNAT1_V4
 ip address 10.244.111.134 255.255.255.252
 statistic enable
 ospf network-type p2p
#
interface Eth-Trunk7.3257
 description VLAN_3257_PPPOE_CLIENTES_TELIUM_SAP
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 3257
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
 #
#
interface Eth-Trunk7.3263
 description VLAN_3263_PPPOE_CLIENTES_VILLELA
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 3263
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
  access-delay 1000
 #
#
interface Eth-Trunk7.3541
 description VLAN_3541_R_NEUTRA_MEDIANET
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 3541
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01-cyberweb
 #
#
interface Eth-Trunk7.3571
 description VLAN_3571_R_NEUTRA_LP_SANDRO
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 3571
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
 #
#
interface Eth-Trunk7.3581
 description VLAN_3581_RN_INFRAWEB_PPPOE
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 8021p 0
 user-vlan 3581
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01-cyberweb
 #
#
interface Eth-Trunk7.3602
 description VLAN_3602_PPPOE_CE02
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 3602
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01-cyberweb
 #
#
interface Virtual-Template0
 ppp authentication-mode auto
#
interface Virtual-Template1
 ppp authentication-mode pap
 ppp keepalive interval 10 retransmit 3 response-timeout 10
 pppoe-server service-name-parameter pppoe01
 pppoe-server ac-name CE01_PPPOE
#
interface GigabitEthernet0/0/0
 speed auto
 duplex auto
 description CE01_GERENCIA
 undo shutdown
 ip address 192.168.0.1 255.255.255.0
#
interface GigabitEthernet0/3/4
 shutdown
 undo dcn
#
interface GigabitEthernet0/3/5
#
interface GigabitEthernet0/3/6
#
interface GigabitEthernet0/3/7
 shutdown
 undo dcn
#
interface GigabitEthernet0/3/8
#
interface GigabitEthernet0/3/9
#
interface GigabitEthernet0/3/10
 description PTP_SW1POP00_PX10__NE40_PX10_CE01
 undo shutdown
#
interface GigabitEthernet0/3/10.141
 description VLAN_141_PPPOE_CE01
 shutdown
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 user-vlan 141
 pppoe-server bind Virtual-Template 1
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01
  access-delay 100
 #
#
interface GigabitEthernet0/3/11
 shutdown
#
interface GigabitEthernet0/3/12
 description "PTP1_SW1_CORE_P12_NE40PS_CE01_P12"
 undo shutdown
 eth-trunk 7
#
interface GigabitEthernet0/3/13
 description "PTP1_SW1_CORE_P13_NE40PS_CE01_P13"
 undo shutdown
 eth-trunk 7
#
interface GigabitEthernet0/3/14
 shutdown
#
interface GigabitEthernet0/3/15
 shutdown
#
interface GigabitEthernet0/3/16
#
interface GigabitEthernet0/3/17
 shutdown
#
interface GigabitEthernet0/3/18
 shutdown
#
interface GigabitEthernet0/3/19
 shutdown
#
interface GigabitEthernet0/3/20
 shutdown
#
interface GigabitEthernet0/3/21
 shutdown
#
interface GigabitEthernet0/3/22
 shutdown
#
interface GigabitEthernet0/3/23
 shutdown
#
interface 100GE0/3/0
#
interface 100GE0/3/1
#
interface 100GE0/3/2
 shutdown
 undo dcn
#
interface 100GE0/3/3
 shutdown
 undo dcn
#
interface LoopBack0
 ipv6 enable
 ip address 10.244.88.1 255.255.255.255
 ipv6 address FD00:244:88::1/128
#
interface Virtual-Ethernet0/2/100
 ve-group 100 l2-terminate
#
interface Virtual-Ethernet0/2/100.100
 vlan-type dot1q 100
#
interface Virtual-Ethernet0/2/100.1001
 vlan-type dot1q 1001
#
interface Virtual-Ethernet0/2/101
 mac-address c4b8-b434-ab45
 ve-group 100 l3-access
#
interface Virtual-Ethernet0/2/101.100
 vlan-type dot1q 100
#
interface Virtual-Ethernet0/2/101.1001
 vlan-type dot1q 1001
 description PTP_PS_CE01_VS_BGP1
 ipv6 enable
 ip address 10.242.0.194 255.255.255.252
 ipv6 address FD00:CE01::2/126
 statistic enable
 ospfv3 1 area 0.0.0.0
 ospfv3 network-type p2p
 ospf cost 1
 ospf network-type p2p
#
interface Virtual-Ethernet0/2/200
 ve-group 200 l2-terminate
#
interface Virtual-Ethernet0/2/200.100
 vlan-type dot1q 100
#
interface Virtual-Ethernet0/2/200.1001
 vlan-type dot1q 1001
#
interface Virtual-Ethernet0/2/201
 ve-group 200 l3-access
#
interface Virtual-Ethernet0/2/201.1001
 vlan-type dot1q 1001
#
interface NULL0
#
ccc PTP1_PS_VS1 interface Virtual-Ethernet0/2/100.1001 tagged out-interface Virtual-Ethernet0/2/200.1001 tagged
ccc teste interface Virtual-Ethernet0/2/100.100 tagged out-interface Virtual-Ethernet0/2/200.100 tagged
#
ospf 1 router-id 10.244.88.1
 import-route direct
 import-route static
 import-route unr
 area 0.0.0.0
  network 10.242.0.128 0.0.0.3 description CE01_BGP1_CYBER
  network 10.242.0.192 0.0.0.3 description CE01_BGP1_CYBER
  network 10.244.1.128 0.0.0.3 description PTP_BGP1 <> CE01
  network 10.244.111.132 0.0.0.3 description CE01 <> CGNAT1
  network 10.244.111.136 0.0.0.3 description CE01 <> CGNAT2
#
undo dcn
#
ip route-static 192.168.64.0 255.255.255.0 45.235.209.83
#
snmp-agent
snmp-agent local-engineid 800007DB03F03F9593B597
snmp-agent community read cipher %^%#'0('<}Kiu#t4(0,w#Z'VURFW8HGgr2u77fDZ(mz9Bg=a#:"UiAX`cqEvP-qPB#p=:BxI-HgTr+)KU,O3%^%#
#
snmp-agent sys-info location -29.817331,-51.129948
snmp-agent sys-info version v2c v3
#
lldp enable
#
stelnet server enable
snetconf server enable
ssh ipv4 server port 1097
ssh user admin-cybert
ssh user admin-cybert authentication-type password
ssh user admin-cybert service-type stelnet
ssh user radiusnet
ssh user radiusnet authentication-type password
ssh user radiusnet service-type stelnet
ssh user suporte
ssh user suporte authentication-type password
ssh user suporte service-type stelnet
ssh user zandona
ssh user zandona authentication-type password
ssh user zandona service-type stelnet
ssh server-source all-interface
ssh ipv6 server-source all-interface
ssh authorization-type default aaa
#
ssh server cipher aes256_gcm aes128_gcm aes256_ctr aes192_ctr aes128_ctr
ssh server hmac sha2_512 sha2_256
ssh server key-exchange dh_group_exchange_sha256 dh_group_exchange_sha1 dh_group14_sha1 ecdh_sha2_nistp256 ecdh_sha2_nistp384 ecdh_sha2_nistp521
#
ssh server publickey ecc rsa
#
ssh server dh-exchange min-len 2048
#
ssh client publickey ecc rsa
#
ssh client cipher aes256_gcm aes128_gcm aes256_ctr aes192_ctr aes128_ctr
ssh client hmac sha2_512 sha2_256
ssh client key-exchange dh_group_exchange_sha256 dh_group_exchange_sha1 dh_group14_sha1 ecdh_sha2_nistp256 ecdh_sha2_nistp384 ecdh_sha2_nistp521
#
traffic-policy CGNAT-PREFIXO-POLICY-CE01 inbound global-acl
#
dns resolve
dns server 10.244.244.234
#
user-interface maximum-vty 21
#
user-interface con 0
 authentication-mode password
 set authentication password cipher $1c$H9o+O5D/*O$(-(mD"2+>!hN~o~B27|Aj8D8<K]l0.}qsO$V"ER($
#
user-interface vty 0 4
 authentication-mode aaa
 idle-timeout 35791 0
 protocol inbound ssh
#
local-aaa-server
#
admin
 virtual-system VS_BGP1_ASN_273461 pvmb slot 3
  port-mode port
  resource u4route upper-limit 1048576
  resource m4route upper-limit 16000
  resource u6route upper-limit 1048576
  resource m6route upper-limit 512
  resource vpn-instance upper-limit 512
  resource cpu weight 5
  assign interface 100GE0/3/0
  assign interface 100GE0/3/1
  assign interface GigabitEthernet0/3/5
  assign interface GigabitEthernet0/3/6
  assign interface GigabitEthernet0/3/8
  assign interface GigabitEthernet0/3/9
  assign interface GigabitEthernet0/3/16
  assign interface Virtual-Ethernet0/2/101.100
  assign interface Virtual-Ethernet0/2/201.1001
#
l2tp-group default-lac
 tunnel name HUAWEI
#
l2tp-group default-lns
 tunnel name HUAWEI
#
return
[~PS-CE01-POP00-SCHOSSLER]
```
