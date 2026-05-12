```yaml

PID [3349]:   Init Supp of scrnd .... Done
PID [3349]:   Init device Hal Parameter.... Done
PID [3349]:   Init OEM .... Done
PID [3349]:   Init device Hal Driver.... Done
PID [3349]:   Init IDB+ .... Done
PID [3349]:   Init moduleCbcMibStartup Manager .... Done
PID [3349]:   Init TACACS+ .... Done
PID [3349]:   Init RADIUS .... Done
COMMON



       ############################################################
       #                                                          #
       #                    Welcome to ROAP                       #
       #                                                          #
       #    Press 'RETURN' to connect and config this system      #
       #                                                          #
       ############################################################


            ROAP Version ISCOM6820-GPSC_ROAP_3.12.SP6.2_20230921






Login:cyberweb
Password:

Hello, Welcome to Raisecom Optical Access Platform(ROAP) software.
Copyright (c) 2007-2013 Raisecom Technology Co., Ltd ..

POP01_OLT1_SA>cyber2018*
Error : % " cyber2018* "  Unknown command.
POP01_OLT1_SA>
POP01_OLT1_SA>
POP01_OLT1_SA>
POP01_OLT1_SA>en
Password:
POP01_OLT1_SA#displ
POP01_OLT1_SA#displ
Error : % " displ "  Unknown command.
POP01_OLT1_SA#sho
POP01_OLT1_SA#show runn

System current configuration:
!Software  Version ISCOM6820-GPSC_ROAP_3.12.SP6.2_20230921
!command in view_mode
terminal time-out disable
!
!command in config_first_mode
create card slot 4 type gp16
logging console severity 1
logging monitor severity 3
auto-write time 0
create vlan 10-13,905-907,912-917,919,920,922-924,926-928,931,934,936-942,945-949,952,953,956-958,960,963,965,966,968,970-974,977,982,985,986,990,1009,1195,1295,1299,3005,3101,3102,3107,3119,3256,3540,3560,3580,3964 active
create vlan 3965 active
management-port ip address 10.244.1.254 255.255.255.252
create policing-profile 100 name 100MB
policing-profile 100 cir 102400 pir 102400 cbs 256 pbs 256
create policing-profile 300 name 300MB
policing-profile 300 cir 307200 pir 307200 cbs 256 pbs 256
create policing-profile 400 name 400MB
policing-profile 400 cir 409600 pir 409600 cbs 256 pbs 256
create dba-profile 100 name 100MB type4 max 102400
create dba-profile 300 name 300MB type4 max 307200
create dba-profile 400 name 400MB type4 max 409600
snmp-trap-gpon-olt-profile 11
snmp-trap-gpon-olt-profile 12
!
!command in enable_mode
terminal page-break disable
clock timezone - 3 0
ftp 10.244.244.250 backup cyber2019
hostname POP01_OLT1_SA
!
!command in mstp_region_mode
!
!command in vlan_mode
vlan 905
name VL905_PREF_SAP
quit
vlan 906
name VL906_PREF_SAP
quit
vlan 907
name VL907_PREF_SAP
quit
vlan 912
name VL912_PREF_SAP
quit
vlan 913
name VL913_PREF_SAP
quit
vlan 914
name VL914_PREF_SAP
quit
vlan 915
name VL915_PREF_SAP
quit
vlan 916
name VL916_PREF_SAP
quit
vlan 917
name VL917_PREF_SAP
quit
vlan 919
name VL919_PREF_SAP
quit
vlan 920
name VL920_PREF_SAP
quit
vlan 922
name VL922_PREF_SAP
quit
vlan 923
name VL923_PREF_SAP
quit
vlan 924
name VL924_PREF_SAP
quit
vlan 926
name VL926_PREF_SAP
quit
vlan 927
name VL927_PREF_SAP
quit
vlan 928
name VL928_PREF_SAP
quit
vlan 931
name VL931_PREF_SAP
quit
vlan 934
name VL934_PREF_SAP
quit
vlan 936
name VL936_PREF_SAP
quit
vlan 937
name VL937_PREF_SAP
quit
vlan 938
name VL938_PREF_SAP
quit
vlan 939
name VL939_PREF_SAP
quit
vlan 940
name VL940_PREF_SAP
quit
vlan 941
name VL941_PREF_SAP
quit
vlan 942
name VL942_PREF_SAP
quit
vlan 945
name VL945_PREF_SAP
quit
vlan 946
name VL946_PREF_SAP
quit
vlan 947
name VL947_PREF_SAP
quit
vlan 948
name VL948_PREF_SAP
quit
vlan 949
name VL949_PREF_SAP
quit
vlan 952
name VL952_PREF_SAP
quit
vlan 953
name VL953_PREF_SAP
quit
vlan 956
name VL956_PREF_SAP
quit
vlan 957
name VL957_PREF_SAP
quit
vlan 958
name VL958_PREF_SAP
quit
vlan 960
name VL960_PREF_SAP
quit
vlan 963
name VL963_PREF_SAP
quit
vlan 966
name VL966_PREF_SAP
quit
vlan 968
name VL968_PREF_SAP
quit
vlan 970
name VL970_PREF_SAP
quit
vlan 971
name VL971_PREF_SAP
quit
vlan 972
name VL972_PREF_SAP
quit
vlan 973
name VL973_PREF_SAP
quit
vlan 977
name VL977_PREF_SAP
quit
vlan 982
name VL982_PREF_SAP
quit
vlan 985
name VL985_PREF_SAP
quit
vlan 986
name VL986_PREF_SAP
quit
vlan 990
name VL990_PREF_SAP
quit
vlan 1195
name VLAN1195_DGTSSP
quit
vlan 1295
name VLAN1295_DGTSSP
quit
vlan 3005
name VL3005_L2_TELIU
quit
vlan 3119
name VL3119_NEGETTI
quit
vlan 3540
name VLAN3540_MIDIAN
quit
vlan 3560
name VL3560_POWERNET
quit
vlan 3580
name VL3580_INFRAWEB
quit
vlan 3964
name VL3964_TEST_ALT
quit
vlan 3965
name VL3965_TEST_ALT
quit
!
!command in l2_acl_mode
l2-access-list 1

rule 1
access-type deny
match mac source 7085.c27d.e591
quit

rule 2
access-type deny
match mac source 18d6.c768.2ea3
quit

rule 3
access-type deny
match mac source 7085.c27d.dabb
quit
quit
l2-access-list 2

rule 1
access-type deny
match mac source 18d6.c768.2ea3
quit
quit
l2-access-list 3

rule 1
access-type deny
match mac source a0bd.1de2.40b5
quit
quit
!
!command in ip_acl_mode
ip-access-list 1001

rule 1
quit
quit
!
!command in ipv6_acl_mode
ipv6-access-list 2001

rule 1
quit
quit
!
!command in hybrid_acl_mode
!
!command in ipv6_hybrid_acl_mode
!
!command in user_acl_mode
!
!command in qinq_acl_mode
!
!command in port_channel_mode
interface port-channel 1
interface ten-gigabitethernet 1/1
port-channel mode lacp-static
port-channel loading-sharing mode smac
quit
!
!command in gigabitethernet_mode
!
!command in ten-gigabitethernet_mode
interface ten-gigabitethernet 1/1
storm-control multicast pps 100
transceiver ddm enable
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
quit
interface ten-gigabitethernet 1/2
storm-control multicast pps 100
no mac-address-table station move
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
quit
!
!command in onu-ftp-profile
!
!command in interface vlanif_mode
!
!command in gpon-onu-line-profile_mode
gpon-onu-line-profile 100
name Down_UP_100MB
fec upstream disable
omcc encryption disable
create tcont 1 dba-profile 100
create gem 1 tcont 1
gem 1 downstream policing-profile 100
quit
gpon-onu-line-profile 300
name Down_UP_300MB
fec upstream disable
omcc encryption disable
create tcont 1 dba-profile 300
create gem 1 tcont 1
gem 1 downstream policing-profile 300
quit
gpon-onu-line-profile 400
name Down_UP_400MB
fec upstream disable
omcc encryption disable
create tcont 1 dba-profile 400
create gem 1 tcont 1
gem 1 downstream policing-profile 400
quit
!
!command in gpon-onu-service-profile_mode
gpon-onu-service-profile 1
name profile-1
quit
gpon-onu-service-profile 2
name Cameras3101_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 3101
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 3
name Camera_New
port-num ethernet 1
uni ethernet 1 vlan mode tagged
uni ethernet 1 native vlan 3101
uni ethernet 1 multicast mode transparent
quit
gpon-onu-service-profile 4
name Huawei_ONU
port-num ethernet 4
uni ethernet 1 vlan mode tagged
uni ethernet 1 native vlan 11
uni ethernet 2 vlan mode tagged
uni ethernet 2 native vlan 11
uni ethernet 3 vlan mode tagged
uni ethernet 3 native vlan 3101
uni ethernet 4 vlan mode tagged
uni ethernet 4 native vlan 3101
quit
gpon-onu-service-profile 5
name ONU_Brigada
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 3102
iphost 2 native vlan 11
iphost 1 service mode bridge cos 0 portlist 1
iphost 2 service mode bridge cos 0 portlist 2
quit
gpon-onu-service-profile 7
name CENTRAL_BRIGADA
port-num ethernet 2
uni ethernet 1 vlan mode tagged
uni ethernet 1 native vlan 3102
uni ethernet 2 vlan mode tagged
uni ethernet 2 native vlan 13
quit
gpon-onu-service-profile 9
name 3005_L2_TELIUM01
port-num ethernet 1
uni ethernet 1 vlan mode tagged
uni ethernet 1 native vlan 3005
uni ethernet 1 max-frame-size 2000
uni ethernet 1 vlan dot1q-tunnel enable
uni ethernet 1 multicast mode transparent
quit
gpon-onu-service-profile 10
name Router_v4_v6_AC
port-num veip 1
port-num pots 2
iphost-num 4
iphost 1 type both
quit
gpon-onu-service-profile 11
name Internet
port-num ethernet 1
uni ethernet 1 vlan mode tagged
uni ethernet 1 native vlan 11
uni ethernet 1 multicast mode transparent
quit
gpon-onu-service-profile 12
name profile-12
port-num ethernet 2
uni ethernet 1 vlan mode tagged
uni ethernet 1 native vlan 11
uni ethernet 2 vlan mode tagged
uni ethernet 2 native vlan 11
quit
gpon-onu-service-profile 13
name VLAN13_CYBER
port-num ethernet 1
uni ethernet 1 vlan mode tagged
uni ethernet 1 native vlan 13
uni ethernet 1 multicast mode transparent
quit
gpon-onu-service-profile 19
name ONU_DUPLA_V
port-num ethernet 2 pots 1 veip 1
iphost 1 type both
quit
gpon-onu-service-profile 20
name RC-W_WS2
port-num veip 1
port-num pots 2
iphost-num 4
quit
gpon-onu-service-profile 40
name 3540_MIDIANET_P2
port-num ethernet 2 veip 1
iphost 1 native vlan 3540
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 42
name profile-42
port-num ethernet 1
uni ethernet 1 vlan mode trunk
uni ethernet 1 vlan trunk allowed 3542
uni ethernet 1 max-frame-size 1700
uni ethernet 1 multicast mode transparent
quit
gpon-onu-service-profile 100
name 3964_L2_ALT_CX
port-num ethernet 1
uni ethernet 1 vlan mode tagged
uni ethernet 1 native vlan 3964
uni ethernet 1 max-frame-size 2000
uni ethernet 1 vlan dot1q-tunnel enable
uni ethernet 1 multicast mode transparent
quit
gpon-onu-service-profile 101
name 3965_L2_ALT_CX
port-num ethernet 1
uni ethernet 1 vlan mode tagged
uni ethernet 1 native vlan 3965
uni ethernet 1 max-frame-size 1600
uni ethernet 1 vlan dot1q-tunnel enable
uni ethernet 1 multicast mode transparent
quit
gpon-onu-service-profile 111
name profile-111
quit
gpon-onu-service-profile 119
name Vlan3119
port-num ethernet 1
uni ethernet 1 vlan mode tagged
uni ethernet 1 native vlan 3119
quit
gpon-onu-service-profile 195
name V1195_DGT_SSP
port-num ethernet 1
uni ethernet 1 vlan mode trunk
uni ethernet 1 vlan trunk allowed 1195
uni ethernet 1 max-frame-size 1700
uni ethernet 1 multicast mode transparent
quit
gpon-onu-service-profile 256
name VLAN3256_TELIUM
port-num ethernet 1
uni ethernet 1 vlan mode tagged
uni ethernet 1 native vlan 3256
quit
gpon-onu-service-profile 295
name V1295_DGT_SSP
port-num ethernet 1
uni ethernet 1 vlan mode trunk
uni ethernet 1 vlan trunk allowed 1295
uni ethernet 1 max-frame-size 1700
uni ethernet 1 multicast mode transparent
quit
gpon-onu-service-profile 299
name V1299_DGT_SSP
port-num ethernet 1
uni ethernet 1 vlan mode trunk
uni ethernet 1 vlan trunk allowed 1299
uni ethernet 1 max-frame-size 1600
uni ethernet 1 multicast mode transparent
quit
gpon-onu-service-profile 540
name 3540_MIDIAN_TRUN
port-num ethernet 1
uni ethernet 1 vlan mode trunk
uni ethernet 1 vlan trunk allowed 3540
uni ethernet 1 max-frame-size 1700
uni ethernet 1 multicast mode transparent
quit
gpon-onu-service-profile 560
name RouterPowerNeutr
port-num veip 1
port-num pots 2
iphost-num 4
iphost 1 type both
quit
gpon-onu-service-profile 569
name BridgePowerNeutr
port-num ethernet 1
uni ethernet 1 vlan mode tagged
uni ethernet 1 native vlan 3560
quit
gpon-onu-service-profile 580
name BriINFRANeutra
port-num ethernet 1
uni ethernet 1 vlan mode tagged
uni ethernet 1 native vlan 3580
quit
gpon-onu-service-profile 905
name Vlan905_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 905
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 906
name Vlan906_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 906
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 907
name Vlan907_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 907
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 912
name profile-912
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 912
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 913
name Vlan913_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 913
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 914
name Vlan914_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 914
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 915
name Vlan915_BR
port-num ethernet 1
uni ethernet 1 vlan mode tagged
uni ethernet 1 native vlan 915
uni ethernet 1 max-frame-size 1550
quit
gpon-onu-service-profile 916
name Vlan916_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 916
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 917
name Vlan917_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 917
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 919
name Vlan919_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 919
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 920
name Vlan920_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 920
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 922
name Vlan922_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 922
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 923
name Vlan923_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 923
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 924
name Vlan924_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 924
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 926
name Vlan926_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 926
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 927
name VL927_PREF_SAP
port-num ethernet 1
uni ethernet 1 vlan mode tagged
uni ethernet 1 native vlan 927
quit
gpon-onu-service-profile 928
name VL928_PREF_SAP
port-num ethernet 1
uni ethernet 1 vlan mode tagged
uni ethernet 1 native vlan 928
quit
gpon-onu-service-profile 931
name VL931_PREF_SAP
port-num ethernet 1
uni ethernet 1 vlan mode tagged
uni ethernet 1 native vlan 931
quit
gpon-onu-service-profile 934
name VL934_PREF_SAP
port-num ethernet 1
uni ethernet 1 vlan mode tagged
uni ethernet 1 native vlan 934
quit
gpon-onu-service-profile 936
name Vlan936_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 936
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 938
name Vlan938_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 938
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 939
name Vlan939_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 939
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 940
name Vlan940_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 940
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 941
name Vlan941_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 941
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 942
name Vlan942_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 942
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 945
name Vlan945_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 945
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 946
name Vlan946_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 946
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 947
name Vlan947_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 947
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 948
name Vlan948_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 948
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 949
name Vlan949_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 949
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 952
name Vlan952_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 952
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 953
name Vlan953_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 953
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 956
name Vlan956_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 956
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 957
name Vlan957_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 957
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 958
name Vlan958_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 958
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 960
name Vlan960_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 960
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 963
name Vlan963_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 963
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 965
name Vlan965_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 965
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 966
name Vlan966_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 966
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 968
name Vlan968_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 968
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 970
name Vlan970_1P
port-num ethernet 1 pots 1 veip 1
uni ethernet 1 vlan mode tagged
uni ethernet 1 native vlan 970
quit
gpon-onu-service-profile 971
name Vlan971_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 971
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 972
name Vlan972_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 972
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 973
name Vlan973_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 973
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 974
name Vlan974
port-num ethernet 1
uni ethernet 1 vlan mode tagged
uni ethernet 1 native vlan 974
quit
gpon-onu-service-profile 977
name Vlan977_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 977
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 982
name Vlan982_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 982
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 985
name Vlan985_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 985
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 986
name Vlan986_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 986
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu-service-profile 990
name Vlan990_2P
port-num ethernet 2 pots 1 veip 1
iphost 1 native vlan 990
iphost 1 service mode bridge cos 0 portlist 1,2
quit
!
!command in gpon-auto-auth-rule_mode
!
!command in snmp-trap-gpon-olt-profile_mode
snmp-trap-gpon-olt-profile 1
pon-upstream-frame-loss enable
onu-upstream-frame-loss enable
onu-signal-loss enable
onu-window-drift enable
onu-remote-defect-indication enable
onu-ploam-loss enable
onu-gem-channel-delineatin-loss enable
onu-acknowledge-loss enable
onu-signal-degraded enable
onu-signal-failure enable
onu-signal-failure threshold 4
onu-physical-equipment-error enable
onu-key-loss enable
onu-transmission-interference-warning enable
onu-transmission-interference-alarm enable
onu-laser-always-on enable
quit
snmp-trap-gpon-olt-profile 11
name profile-11
all-trap disable
onu-laser-always-on enable
quit
snmp-trap-gpon-olt-profile 12
name profile-12
all-trap disable
quit
!
!command in gpon-onu-snmp-trap-profile_mode
!
!command in gpon-olt_mode
interface gpon-olt 3/1
snmp-trap-gpon-olt-profile 11
create gpon-onu 1 sn RCMG3A602330 line-profile-id 1024 service-profile-id 10
create gpon-onu 2 sn RCMG3AB8397A line-profile-id 1024 service-profile-id 10
create gpon-onu 3 sn RCMG3A982B08 line-profile-id 1024 service-profile-id 10
create gpon-onu 4 sn RCMG19B88641 line-profile-id 1024 service-profile-id 11
create gpon-onu 5 sn RCMG3B980081 line-profile-id 1024 service-profile-id 10
create gpon-onu 6 sn RCMG3B9010F4 line-profile-id 1024 service-profile-id 10
create gpon-onu 8 sn RCMG198995AF line-profile-id 1024 service-profile-id 914
create gpon-onu 9 sn RCMG1998B194 line-profile-id 1024 service-profile-id 11
create gpon-onu 10 sn RCMG1998BADB line-profile-id 1024 service-profile-id 40
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
quit
interface gpon-olt 3/2
snmp-trap-gpon-olt-profile 11
create gpon-onu 1 sn RCMG3B901632 line-profile-id 1024 service-profile-id 10
create gpon-onu 2 sn RCMG1998DDA0 line-profile-id 1024 service-profile-id 10
create gpon-onu 3 sn RCMG1998CF5D line-profile-id 1024 service-profile-id 10
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 905 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
vlan 3102 isolate-group 1
quit
interface gpon-olt 3/3
snmp-trap-gpon-olt-profile 11
create gpon-onu 1 sn RCMG3A981ACC line-profile-id 1024 service-profile-id 10
create gpon-onu 2 sn ITBSE8FEE03E line-profile-id 1024 service-profile-id 11
create gpon-onu 3 sn ITBS2C9F73BE line-profile-id 1024 service-profile-id 11
create gpon-onu 4 sn RCMG1998D34F line-profile-id 1024 service-profile-id 20
create gpon-onu 5 sn RCMG3A9806DE line-profile-id 1024 service-profile-id 10
create gpon-onu 6 sn RCMG1998C73C line-profile-id 1024 service-profile-id 11
create gpon-onu 7 sn RCMG3A981AD7 line-profile-id 1024 service-profile-id 10
create gpon-onu 8 sn ITBS0D354D7C line-profile-id 1024 service-profile-id 11
create gpon-onu 9 sn RCMG3A60001E line-profile-id 1024 service-profile-id 10
create gpon-onu 10 sn RCMG3A98048D line-profile-id 1024 service-profile-id 10
create gpon-onu 11 sn ITBS0DD6608D line-profile-id 1024 service-profile-id 11
create gpon-onu 13 sn DD1BB3D74B08 line-profile-id 1024 service-profile-id 11
create gpon-onu 14 sn ZNTS2C06167E line-profile-id 1024 service-profile-id 11
create gpon-onu 15 sn RCMG1998877F line-profile-id 1024 service-profile-id 11
create gpon-onu 20 sn RCMG19989171 line-profile-id 1024 service-profile-id 11
create gpon-onu 23 sn RCMG1998DDC1 line-profile-id 1024 service-profile-id 10
create gpon-onu 24 sn RCMG3AA038F3 line-profile-id 1024 service-profile-id 10
create gpon-onu 26 sn RCMG3AB88C3A line-profile-id 1024 service-profile-id 10
create gpon-onu 28 sn RCMG3B980466 line-profile-id 1024 service-profile-id 10
create gpon-onu 29 sn RCMG19988EA9 line-profile-id 1024 service-profile-id 11
create gpon-onu 30 sn RCMG3B9014A1 line-profile-id 1024 service-profile-id 10
create gpon-onu 31 sn RCMG1998822E line-profile-id 1024 service-profile-id 11
create gpon-onu 32 sn RCMG1998C983 line-profile-id 1024 service-profile-id 10
create gpon-onu 33 sn RCMG3BA01DF8 line-profile-id 1024 service-profile-id 20
create gpon-onu 35 sn RCMG3A600F47 line-profile-id 1024 service-profile-id 10
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 905 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
quit
interface gpon-olt 3/4
snmp-trap-gpon-olt-profile 11
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 905 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
quit
interface gpon-olt 3/5
snmp-trap-gpon-olt-profile 11
create gpon-onu 2 sn RCMG1998FC1F line-profile-id 100 service-profile-id 256
create gpon-onu 5 sn RCMG193011BA line-profile-id 1024 service-profile-id 11
create gpon-onu 6 sn RCMG3A982EBB line-profile-id 1024 service-profile-id 10
create gpon-onu 8 sn RCMG3AA0226F line-profile-id 1024 service-profile-id 10
create gpon-onu 9 sn RCMG19B87EEE line-profile-id 1024 service-profile-id 11
create gpon-onu 10 sn RCMG1998C450 line-profile-id 1024 service-profile-id 10
create gpon-onu 11 sn RCMG3BA01E32 line-profile-id 1024 service-profile-id 10
create gpon-onu 13 sn RCMG198995A8 line-profile-id 400 service-profile-id 946
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 10 isolate-group 1
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
quit
interface gpon-olt 3/6
snmp-trap-gpon-olt-profile 11
create gpon-onu 1 sn RCMG3BA01D1C line-profile-id 1024 service-profile-id 10
create gpon-onu 2 sn RCMG3BA01E73 line-profile-id 1024 service-profile-id 11
create gpon-onu 3 sn RCMG3A581CAE line-profile-id 1024 service-profile-id 10
create gpon-onu 4 sn RCMG3A6003A9 line-profile-id 1024 service-profile-id 10
create gpon-onu 5 sn RCMG19988069 line-profile-id 1024 service-profile-id 3
create gpon-onu 6 sn RCMG3A603A23 line-profile-id 1024 service-profile-id 10
create gpon-onu 7 sn RCMG1998C1FA line-profile-id 1024 service-profile-id 20
create gpon-onu 8 sn RCMG19B833FA line-profile-id 1024 service-profile-id 10
create gpon-onu 9 sn RCMG1998DDCB line-profile-id 1024 service-profile-id 949
create gpon-onu 20 sn RCMG3A9804E2 line-profile-id 1024 service-profile-id 10
create gpon-onu 26 sn RCMG3A6024F3 line-profile-id 1024 service-profile-id 10
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 905 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
quit
interface gpon-olt 3/7
snmp-trap-gpon-olt-profile 11
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 905 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
quit
interface gpon-olt 3/8
snmp-trap-gpon-olt-profile 11
create gpon-onu 1 sn RCMG19B80D0B line-profile-id 1024 service-profile-id 11
create gpon-onu 2 sn RCMG1998CC39 line-profile-id 1024 service-profile-id 916
create gpon-onu 3 sn RCMG3A9802A4 line-profile-id 1024 service-profile-id 10
create gpon-onu 4 sn RCMG19B8871B line-profile-id 400 service-profile-id 963
create gpon-onu 5 sn RCMG3AB8866A line-profile-id 1024 service-profile-id 10
create gpon-onu 6 sn RCMG3BA0195E line-profile-id 1024 service-profile-id 10
create gpon-onu 7 sn ITBS5B5E15C6 line-profile-id 1024 service-profile-id 11
create gpon-onu 8 sn RCMG3A602C2B line-profile-id 1024 service-profile-id 10
create gpon-onu 9 sn RCMG3A982C61 line-profile-id 1024 service-profile-id 10
create gpon-onu 10 sn RCMG3B9007E7 line-profile-id 1024 service-profile-id 10
create gpon-onu 11 sn RCMG3AB88A33 line-profile-id 1024 service-profile-id 10
create gpon-onu 14 sn RCMG3A602AC1 line-profile-id 1024 service-profile-id 10
create gpon-onu 20 sn RCMG3AA01FEC line-profile-id 1024 service-profile-id 10
create gpon-onu 21 sn RCMG1998C7FB line-profile-id 1024 service-profile-id 11
create gpon-onu 22 sn RCMG1998863B line-profile-id 1024 service-profile-id 11
create gpon-onu 23 sn RCMG1998E79F line-profile-id 1024 service-profile-id 10
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 905 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
quit
interface gpon-olt 3/9
snmp-trap-gpon-olt-profile 11
create gpon-onu 1 sn RCMG3A5814C4 line-profile-id 1024 service-profile-id 10
create gpon-onu 2 sn RCMG3A581AAB line-profile-id 1024 service-profile-id 10
create gpon-onu 3 sn RCMG3A602DFB line-profile-id 1024 service-profile-id 10
create gpon-onu 4 sn RCMG1998CBFB line-profile-id 1024 service-profile-id 11
create gpon-onu 5 sn RCMG3A581624 line-profile-id 1024 service-profile-id 10
create gpon-onu 6 sn ITBS2CD49F87 line-profile-id 1024 service-profile-id 11
create gpon-onu 7 sn RCMG3A580E77 line-profile-id 1024 service-profile-id 10
create gpon-onu 8 sn RCMG3A603D3F line-profile-id 1024 service-profile-id 20
create gpon-onu 9 sn RCMG3A58197B line-profile-id 1024 service-profile-id 10
create gpon-onu 10 sn RCMG3A58170A line-profile-id 1024 service-profile-id 10
create gpon-onu 11 sn RCMG3A5817E6 line-profile-id 1024 service-profile-id 10
create gpon-onu 12 sn RCMG3A581D49 line-profile-id 1024 service-profile-id 10
create gpon-onu 13 sn RCMG3A600269 line-profile-id 1024 service-profile-id 10
create gpon-onu 14 sn RCMG3A6027B5 line-profile-id 1024 service-profile-id 10
create gpon-onu 15 sn RCMG3B901BD4 line-profile-id 1024 service-profile-id 10
create gpon-onu 16 sn RCMG19987551 line-profile-id 1024 service-profile-id 10
create gpon-onu 17 sn RCMG1998DDF8 line-profile-id 1024 service-profile-id 11
create gpon-onu 18 sn RCMG3AB83942 line-profile-id 1024 service-profile-id 10
create gpon-onu 19 sn RCMG3A581B3B line-profile-id 1024 service-profile-id 10
create gpon-onu 20 sn ITBS440AC0B9 line-profile-id 1024 service-profile-id 11
create gpon-onu 21 sn RCMG19987714 line-profile-id 1024 service-profile-id 10
create gpon-onu 22 sn RCMG3A581CDF line-profile-id 1024 service-profile-id 10
create gpon-onu 23 sn RCMG3A581D8C line-profile-id 1024 service-profile-id 10
create gpon-onu 24 sn RCMG3A581CE3 line-profile-id 1024 service-profile-id 10
create gpon-onu 25 sn RCMG3AA01F40 line-profile-id 1024 service-profile-id 10
create gpon-onu 26 sn RCMG3A581B82 line-profile-id 1024 service-profile-id 1006
create gpon-onu 27 sn RCMG19B837E7 line-profile-id 1024 service-profile-id 10
create gpon-onu 28 sn RCMG3A5811A6 line-profile-id 1024 service-profile-id 10
create gpon-onu 29 sn RCMG19B8371E line-profile-id 1024 service-profile-id 10
create gpon-onu 30 sn RCMG3A600683 line-profile-id 1024 service-profile-id 10
create gpon-onu 31 sn RCMG3AB88998 line-profile-id 1024 service-profile-id 10
create gpon-onu 32 sn RCMG3A60045A line-profile-id 1024 service-profile-id 10
create gpon-onu 33 sn RCMG3A581158 line-profile-id 1024 service-profile-id 10
create gpon-onu 34 sn RCMG3A9801D6 line-profile-id 1024 service-profile-id 10
create gpon-onu 35 sn RCMG3A6002C7 line-profile-id 1024 service-profile-id 10
create gpon-onu 36 sn RCMG3A9821F9 line-profile-id 1024 service-profile-id 10
create gpon-onu 37 sn RCMG3AA022AD line-profile-id 1024 service-profile-id 10
create gpon-onu 38 sn RCMG1998BAFC line-profile-id 1024 service-profile-id 11
create gpon-onu 39 sn RCMG3A602135 line-profile-id 1024 service-profile-id 10
create gpon-onu 40 sn RCMG19987E7E line-profile-id 1024 service-profile-id 11
create gpon-onu 41 sn RCMG3A581CB6 line-profile-id 1024 service-profile-id 10
create gpon-onu 42 sn RCMG3AA02004 line-profile-id 1024 service-profile-id 10
create gpon-onu 43 sn RCMG1998E76B line-profile-id 1024 service-profile-id 10
create gpon-onu 44 sn RCMG3A603022 line-profile-id 1024 service-profile-id 10
create gpon-onu 45 sn RCMG3A6008F7 line-profile-id 1024 service-profile-id 10
create gpon-onu 46 sn RCMG3B90111D line-profile-id 1024 service-profile-id 10
create gpon-onu 47 sn RCMG19B880A3 line-profile-id 1024 service-profile-id 11
create gpon-onu 48 sn RCMG1998BA8E line-profile-id 1024 service-profile-id 11
create gpon-onu 49 sn RCMG1998CDAC line-profile-id 1024 service-profile-id 11
create gpon-onu 50 sn RCMG193010F1 line-profile-id 1024 service-profile-id 11
create gpon-onu 51 sn RCMG19B87E1E line-profile-id 1024 service-profile-id 20
create gpon-onu 52 sn RCMG3BA010D4 line-profile-id 1024 service-profile-id 10
create gpon-onu 53 sn RCMG3BA01C74 line-profile-id 1024 service-profile-id 10
create gpon-onu 54 sn RCMG1998DE4E line-profile-id 1024 service-profile-id 10
create gpon-onu 55 sn RCMG3B901115 line-profile-id 1024 service-profile-id 10
create gpon-onu 56 sn ITBSAC4D0CAA line-profile-id 1024 service-profile-id 11
create gpon-onu 57 sn RCMG1998D223 line-profile-id 1024 service-profile-id 10
create gpon-onu 58 sn RCMG3B90166A line-profile-id 1024 service-profile-id 10
create gpon-onu 59 sn RCMG1998FF24 line-profile-id 1024 service-profile-id 11
create gpon-onu 60 sn RCMG3B9015A2 line-profile-id 1024 service-profile-id 10
create gpon-onu 61 sn RCMG3B9014A1 line-profile-id 1024 service-profile-id 10
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 905 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
quit
interface gpon-olt 3/10
mirror source-port both
snmp-trap-gpon-olt-profile 11
create gpon-onu 1 sn ITBSE8F6E3DC line-profile-id 1024 service-profile-id 11
create gpon-onu 2 sn RCMG3A982A88 line-profile-id 1024 service-profile-id 10
create gpon-onu 3 sn RCMG19B88704 line-profile-id 1024 service-profile-id 11
create gpon-onu 4 sn RCMG3BA01DDE line-profile-id 1024 service-profile-id 10
create gpon-onu 5 sn RCMG19988621 line-profile-id 1024 service-profile-id 11
create gpon-onu 6 sn RCMG3AA02DDB line-profile-id 1024 service-profile-id 20
create gpon-onu 7 sn RCMG3A9821CE line-profile-id 1024 service-profile-id 10
create gpon-onu 8 sn RCMG19987FA6 line-profile-id 1024 service-profile-id 11
create gpon-onu 9 sn RCMG1998E5C4 line-profile-id 1024 service-profile-id 10
create gpon-onu 10 sn RCMG3B980683 line-profile-id 1024 service-profile-id 10
create gpon-onu 12 sn RCMG3A603D17 line-profile-id 1024 service-profile-id 10
create gpon-onu 13 sn RCMG3AA022C7 line-profile-id 1024 service-profile-id 10
create gpon-onu 14 sn RCMG3A602548 line-profile-id 1024 service-profile-id 10
create gpon-onu 15 sn ITBSE8FEE15D line-profile-id 1024 service-profile-id 11
create gpon-onu 16 sn RCMG3A602566 line-profile-id 1024 service-profile-id 10
create gpon-onu 17 sn RCMG3A600EDC line-profile-id 1024 service-profile-id 10
create gpon-onu 18 sn ITBS5B0E71F4 line-profile-id 1024 service-profile-id 11
create gpon-onu 19 sn RCMG3A980431 line-profile-id 1024 service-profile-id 10
create gpon-onu 20 sn ZNTS2C173BD6 line-profile-id 1024 service-profile-id 11
create gpon-onu 21 sn RCMG1998DD90 line-profile-id 1024 service-profile-id 20
create gpon-onu 22 sn RCMG3A60280E line-profile-id 1024 service-profile-id 10
create gpon-onu 23 sn RCMG3A982BB7 line-profile-id 1024 service-profile-id 10
create gpon-onu 24 sn RCMG3A980EDE line-profile-id 1024 service-profile-id 10
create gpon-onu 25 sn RCMG1998C68E line-profile-id 1024 service-profile-id 11
create gpon-onu 26 sn RCMG1998DD6B line-profile-id 1024 service-profile-id 10
create gpon-onu 27 sn RCMG3A581CDF line-profile-id 1024 service-profile-id 10
create gpon-onu 29 sn ZNTS2C12B019 line-profile-id 1024 service-profile-id 11
create gpon-onu 30 sn RCMG19B80F63 line-profile-id 1024 service-profile-id 11
create gpon-onu 31 sn RCMG19B8210F line-profile-id 1024 service-profile-id 11
create gpon-onu 32 sn RCMG1998EEF1 line-profile-id 1024 service-profile-id 11
create gpon-onu 33 sn RCMG3A603AA0 line-profile-id 1024 service-profile-id 10
create gpon-onu 34 sn RCMG3A602B88 line-profile-id 1024 service-profile-id 11
create gpon-onu 35 sn RCMG3A603C1E line-profile-id 1024 service-profile-id 10
create gpon-onu 36 sn RCMG3AA02E89 line-profile-id 1024 service-profile-id 10
create gpon-onu 37 sn RCMG3AB881D2 line-profile-id 1024 service-profile-id 10
create gpon-onu 39 sn RCMG3AA031A7 line-profile-id 1024 service-profile-id 10
create gpon-onu 40 sn RCMG3A602A79 line-profile-id 1024 service-profile-id 10
create gpon-onu 41 sn RCMG1998C89F line-profile-id 1024 service-profile-id 20
create gpon-onu 42 sn RCMG3AA03204 line-profile-id 1024 service-profile-id 10
create gpon-onu 43 sn RCMG3AA02C32 line-profile-id 1024 service-profile-id 10
create gpon-onu 44 sn RCMG3A982245 line-profile-id 1024 service-profile-id 10
create gpon-onu 45 sn RCMG3AB87DD8 line-profile-id 1024 service-profile-id 10
create gpon-onu 46 sn RCMG3AB88153 line-profile-id 1024 service-profile-id 10
create gpon-onu 47 sn RCMG1998CA4C line-profile-id 1024 service-profile-id 11
create gpon-onu 48 sn RCMG3AB88AE6 line-profile-id 1024 service-profile-id 10
create gpon-onu 49 sn RCMG3B90052D line-profile-id 1024 service-profile-id 10
create gpon-onu 50 sn RCMG3BA01811 line-profile-id 1024 service-profile-id 11
create gpon-onu 51 sn RCMG3AB88E48 line-profile-id 1024 service-profile-id 10
create gpon-onu 52 sn RCMG3AB838E6 line-profile-id 1024 service-profile-id 10
create gpon-onu 53 sn RCMG1930111C line-profile-id 1024 service-profile-id 11
create gpon-onu 55 sn RCMG3A602A07 line-profile-id 1024 service-profile-id 10
create gpon-onu 56 sn RCMG198995E3 line-profile-id 1024 service-profile-id 10
create gpon-onu 57 sn RCMG1998E5C5 line-profile-id 1024 service-profile-id 10
create gpon-onu 58 sn RCMG1998E4C4 line-profile-id 1024 service-profile-id 10
create gpon-onu 59 sn RCMG3A982237 line-profile-id 1024 service-profile-id 10
create gpon-onu 60 sn RCMG3AA016B1 line-profile-id 1024 service-profile-id 10
create gpon-onu 62 sn RCMG1998E80D line-profile-id 1024 service-profile-id 10
create gpon-onu 63 sn RCMG19988025 line-profile-id 1024 service-profile-id 11
create gpon-onu 64 sn ITBS8B69BBAD line-profile-id 1024 service-profile-id 11
create gpon-onu 65 sn ITBS5B5CFB97 line-profile-id 1024 service-profile-id 11
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 905 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
quit
interface gpon-olt 3/11
snmp-trap-gpon-olt-profile 11
create gpon-onu 1 sn RCMG3A581C77 line-profile-id 1024 service-profile-id 10
create gpon-onu 2 sn RCMG3A58174A line-profile-id 1024 service-profile-id 10
create gpon-onu 3 sn ITBSD91E12D6 line-profile-id 1024 service-profile-id 11
create gpon-onu 4 sn RCMG3A980421 line-profile-id 1024 service-profile-id 10
create gpon-onu 5 sn RCMG3A982FA7 line-profile-id 1024 service-profile-id 10
create gpon-onu 6 sn RCMG3A581D73 line-profile-id 1024 service-profile-id 10
create gpon-onu 7 sn RCMG1998F873 line-profile-id 1024 service-profile-id 11
create gpon-onu 8 sn RCMG19B83B6C line-profile-id 1024 service-profile-id 10
create gpon-onu 9 sn RCMG3A581A46 line-profile-id 1024 service-profile-id 10
create gpon-onu 10 sn ITBS440DA9AF line-profile-id 1024 service-profile-id 11
create gpon-onu 11 sn RCMG3BA01C97 line-profile-id 1024 service-profile-id 20
create gpon-onu 12 sn RCMG3B901114 line-profile-id 1024 service-profile-id 10
create gpon-onu 13 sn RCMG3A58173C line-profile-id 1024 service-profile-id 10
create gpon-onu 14 sn RCMG3A600BAD line-profile-id 1024 service-profile-id 10
create gpon-onu 15 sn RCMG19988EF4 line-profile-id 1024 service-profile-id 11
create gpon-onu 16 sn RCMG3A603D9D line-profile-id 1024 service-profile-id 10
create gpon-onu 17 sn RCMG3A581B92 line-profile-id 1024 service-profile-id 10
create gpon-onu 18 sn RCMG3B900ECB line-profile-id 1024 service-profile-id 10
create gpon-onu 19 sn RCMG1998E03B line-profile-id 1024 service-profile-id 20
create gpon-onu 20 sn RCMG3AA02AA3 line-profile-id 1024 service-profile-id 10
create gpon-onu 21 sn ITBS2C658FCC line-profile-id 1024 service-profile-id 11
create gpon-onu 22 sn RCMG3A602154 line-profile-id 1024 service-profile-id 10
create gpon-onu 23 sn RCMG19B83426 line-profile-id 1024 service-profile-id 10
create gpon-onu 24 sn RCMG19B8371C line-profile-id 1024 service-profile-id 10
create gpon-onu 25 sn ZNTS2C6EE227 line-profile-id 1024 service-profile-id 11
create gpon-onu 26 sn RCMG3A603223 line-profile-id 1024 service-profile-id 10
create gpon-onu 27 sn RCMG1998DDE8 line-profile-id 1024 service-profile-id 10
create gpon-onu 28 sn RCMG3A60224C line-profile-id 1024 service-profile-id 10
create gpon-onu 29 sn RCMG3AA02010 line-profile-id 1024 service-profile-id 10
create gpon-onu 30 sn RCMG3A9806DD line-profile-id 1024 service-profile-id 10
create gpon-onu 31 sn RCMG3A982F56 line-profile-id 1024 service-profile-id 10
create gpon-onu 32 sn ITBS4438910E line-profile-id 1024 service-profile-id 11
create gpon-onu 33 sn RCMG3AA027F7 line-profile-id 1024 service-profile-id 10
create gpon-onu 34 sn ITBS0A6E6EC4 line-profile-id 1024 service-profile-id 11
create gpon-onu 35 sn RCMG3A98028A line-profile-id 1024 service-profile-id 10
create gpon-onu 36 sn RCMG19B886A7 line-profile-id 1024 service-profile-id 11
create gpon-onu 37 sn RCMG19B88648 line-profile-id 1024 service-profile-id 11
create gpon-onu 38 sn RCMG3A9804C8 line-profile-id 1024 service-profile-id 10
create gpon-onu 39 sn ITBSD91E12B0 line-profile-id 1024 service-profile-id 11
create gpon-onu 40 sn RCMG19B88606 line-profile-id 1024 service-profile-id 20
create gpon-onu 41 sn RCMG3A982B62 line-profile-id 1024 service-profile-id 10
create gpon-onu 42 sn RCMG3A602227 line-profile-id 1024 service-profile-id 10
create gpon-onu 43 sn RCMG1930115F line-profile-id 1024 service-profile-id 11
create gpon-onu 44 sn RCMG3A9827A5 line-profile-id 1024 service-profile-id 10
create gpon-onu 45 sn RCMG1998C4CE line-profile-id 1024 service-profile-id 10
create gpon-onu 46 sn RCMG3AB83961 line-profile-id 1024 service-profile-id 10
create gpon-onu 47 sn RCMG3AA022C2 line-profile-id 1024 service-profile-id 10
create gpon-onu 48 sn RCMG3A98046E line-profile-id 1024 service-profile-id 10
create gpon-onu 49 sn RCMG1998BFA8 line-profile-id 1024 service-profile-id 11
create gpon-onu 50 sn ITBSF1A924D0 line-profile-id 1024 service-profile-id 11
create gpon-onu 51 sn ITBSD91E1344 line-profile-id 1024 service-profile-id 11
create gpon-onu 52 sn ITBS0A6E6FD8 line-profile-id 1024 service-profile-id 11
create gpon-onu 53 sn RCMG1998C1E8 line-profile-id 1024 service-profile-id 20
create gpon-onu 54 sn RCMG19B88429 line-profile-id 1024 service-profile-id 20
create gpon-onu 55 sn RCMG19988ECE line-profile-id 1024 service-profile-id 11
create gpon-onu 56 sn RCMG3BA01908 line-profile-id 1024 service-profile-id 20
create gpon-onu 57 sn RCMG3AA0189F line-profile-id 1024 service-profile-id 11
create gpon-onu 58 sn RCMG19B88609 line-profile-id 1024 service-profile-id 11
create gpon-onu 59 sn RCMG3A980603 line-profile-id 1024 service-profile-id 10
create gpon-onu 60 sn RCMG3AB87969 line-profile-id 1024 service-profile-id 10
create gpon-onu 61 sn RCMG3AA0388D line-profile-id 1024 service-profile-id 10
create gpon-onu 62 sn RCMG3B901C7C line-profile-id 1024 service-profile-id 10
create gpon-onu 63 sn RCMG19B88799 line-profile-id 1024 service-profile-id 11
create gpon-onu 64 sn RCMG1998C204 line-profile-id 1024 service-profile-id 20
create gpon-onu 65 sn RCMG1998A1BD line-profile-id 1024 service-profile-id 11
create gpon-onu 67 sn ITBS2CBEE5B1 line-profile-id 1024 service-profile-id 11
create gpon-onu 68 sn RCMG19988112 line-profile-id 1024 service-profile-id 11
create gpon-onu 69 sn ZNTS2C350F89 line-profile-id 1024 service-profile-id 11
create gpon-onu 70 sn RCMG3B9013DA line-profile-id 1024 service-profile-id 10
create gpon-onu 71 sn RCMG3A980267 line-profile-id 1024 service-profile-id 11
create gpon-onu 72 sn ITBS5B412B69 line-profile-id 1024 service-profile-id 11
create gpon-onu 73 sn RCMG3AA02F02 line-profile-id 1024 service-profile-id 10
create gpon-onu 74 sn RCMG3A980BE2 line-profile-id 1024 service-profile-id 10
create gpon-onu 75 sn RCMG1998EE10 line-profile-id 1024 service-profile-id 10
create gpon-onu 76 sn ITBS5B5CFB7E line-profile-id 1024 service-profile-id 11
create gpon-onu 77 sn ITBSD91E130C line-profile-id 1024 service-profile-id 11
create gpon-onu 79 sn RCMG3A98028B line-profile-id 1024 service-profile-id 10
create gpon-onu 80 sn RCMG3AB882CF line-profile-id 1024 service-profile-id 10
create gpon-onu 81 sn RCMG1998BEAD line-profile-id 1024 service-profile-id 20
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 905 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
quit
interface gpon-olt 3/12
snmp-trap-gpon-olt-profile 11
create gpon-onu 1 sn RCMG19988A5C line-profile-id 1024 service-profile-id 11
create gpon-onu 2 sn ITBS3272E740 line-profile-id 1024 service-profile-id 11
create gpon-onu 4 sn RCMG1998DE2E line-profile-id 400 service-profile-id 905
create gpon-onu 5 sn RCMG3AB8398A line-profile-id 1024 service-profile-id 10
create gpon-onu 7 sn RCMG3AB83909 line-profile-id 1024 service-profile-id 10
create gpon-onu 8 sn RCMG3A602201 line-profile-id 1024 service-profile-id 10
create gpon-onu 9 sn RCMG3A603982 line-profile-id 1024 service-profile-id 10
create gpon-onu 11 sn RCMG3B901583 line-profile-id 1024 service-profile-id 10
create gpon-onu 12 sn RCMG3AA0075A line-profile-id 1024 service-profile-id 10
create gpon-onu 13 sn RCMG3A98235F line-profile-id 1024 service-profile-id 10
create gpon-onu 15 sn RCMG3AA02DE3 line-profile-id 1024 service-profile-id 10
create gpon-onu 18 sn RCMG1998827E line-profile-id 1024 service-profile-id 11
create gpon-onu 23 sn RCMG194020C3 line-profile-id 100 service-profile-id 3
create gpon-onu 25 sn RCMG199882BB line-profile-id 1024 service-profile-id 11
create gpon-onu 29 sn RCMG19987E83 line-profile-id 1024 service-profile-id 11
create gpon-onu 30 sn RCMG3A602C18 line-profile-id 1024 service-profile-id 10
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 905 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
quit
interface gpon-olt 3/13
snmp-trap-gpon-olt-profile 11
create gpon-onu 1 sn RCMG3A6008B0 line-profile-id 1024 service-profile-id 10
create gpon-onu 2 sn ITBS0D2B85D5 line-profile-id 1024 service-profile-id 11
create gpon-onu 3 sn RCMG199882B4 line-profile-id 1024 service-profile-id 11
create gpon-onu 4 sn RCMG199883C0 line-profile-id 1024 service-profile-id 11
create gpon-onu 5 sn RCMG3A60320D line-profile-id 1024 service-profile-id 10
create gpon-onu 6 sn RCMG19988307 line-profile-id 1024 service-profile-id 11
create gpon-onu 7 sn RCMG3A982B73 line-profile-id 1024 service-profile-id 10
create gpon-onu 8 sn RCMG19B80D89 line-profile-id 1024 service-profile-id 11
create gpon-onu 9 sn RCMG1998ED93 line-profile-id 1024 service-profile-id 11
create gpon-onu 10 sn RCMG1998FEA6 line-profile-id 1024 service-profile-id 11
create gpon-onu 11 sn ITBSD91E12CB line-profile-id 1024 service-profile-id 11
create gpon-onu 12 sn ITBS3F81F2F1 line-profile-id 1024 service-profile-id 11
create gpon-onu 13 sn RCMG3A9802C3 line-profile-id 1024 service-profile-id 10
create gpon-onu 14 sn RCMG1998CB22 line-profile-id 1024 service-profile-id 11
create gpon-onu 15 sn RCMG19988271 line-profile-id 1024 service-profile-id 11
create gpon-onu 16 sn RCMG19988389 line-profile-id 1024 service-profile-id 11
create gpon-onu 17 sn ITBS2CE8A783 line-profile-id 1024 service-profile-id 11
create gpon-onu 18 sn ITBS441CB609 line-profile-id 1024 service-profile-id 11
create gpon-onu 19 sn RCMG3A60050A line-profile-id 1024 service-profile-id 10
create gpon-onu 21 sn RCMG199884A9 line-profile-id 1024 service-profile-id 10
create gpon-onu 23 sn RCMG3BA01E7C line-profile-id 1024 service-profile-id 10
create gpon-onu 24 sn RCMG3A603973 line-profile-id 1024 service-profile-id 10
create gpon-onu 31 sn RCMG199880F4 line-profile-id 1024 service-profile-id 11
create gpon-onu 35 sn RCMG3A603A4A line-profile-id 1024 service-profile-id 10
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 905 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
quit
interface gpon-olt 3/14
snmp-trap-gpon-olt-profile 11
create gpon-onu 1 sn RCMG19988A5E line-profile-id 1024 service-profile-id 11
create gpon-onu 2 sn RCMG3BA01C27 line-profile-id 1024 service-profile-id 10
create gpon-onu 3 sn DD1BB3D74D58 line-profile-id 1024 service-profile-id 11
create gpon-onu 4 sn RCMG3AB886CD line-profile-id 1024 service-profile-id 10
create gpon-onu 5 sn RCMG3AB83994 line-profile-id 1024 service-profile-id 10
create gpon-onu 6 sn RCMG19987E94 line-profile-id 1024 service-profile-id 11
create gpon-onu 7 sn RCMG3A60287B line-profile-id 1024 service-profile-id 10
create gpon-onu 8 sn RCMG199890BD line-profile-id 1024 service-profile-id 11
create gpon-onu 9 sn RCMG3A602977 line-profile-id 1024 service-profile-id 10
create gpon-onu 10 sn RCMG19B88443 line-profile-id 1024 service-profile-id 11
create gpon-onu 11 sn RCMG3AA02284 line-profile-id 1024 service-profile-id 10
create gpon-onu 12 sn RCMG3A98175D line-profile-id 1024 service-profile-id 10
create gpon-onu 13 sn RCMG19988020 line-profile-id 1024 service-profile-id 11
create gpon-onu 14 sn RCMG3AA02829 line-profile-id 1024 service-profile-id 10
create gpon-onu 15 sn RCMG19989309 line-profile-id 1024 service-profile-id 11
create gpon-onu 16 sn RCMG1998FE05 line-profile-id 1024 service-profile-id 11
create gpon-onu 17 sn RCMG1998D25B line-profile-id 1024 service-profile-id 11
create gpon-onu 18 sn RCMG3BA01EB2 line-profile-id 1024 service-profile-id 10
create gpon-onu 20 sn RCMG3A60026F line-profile-id 1024 service-profile-id 10
create gpon-onu 21 sn RCMG19988805 line-profile-id 1024 service-profile-id 11
create gpon-onu 22 sn RCMG3A581CD7 line-profile-id 1024 service-profile-id 10
create gpon-onu 23 sn RCMG19988615 line-profile-id 1024 service-profile-id 11
create gpon-onu 24 sn RCMG3A60065E line-profile-id 1024 service-profile-id 11
create gpon-onu 26 sn ITBS5B0E7203 line-profile-id 1024 service-profile-id 11
create gpon-onu 27 sn RCMG3BA01CEE line-profile-id 1024 service-profile-id 10
create gpon-onu 28 sn RCMG3A581961 line-profile-id 1024 service-profile-id 10
create gpon-onu 29 sn RCMG3A603972 line-profile-id 1024 service-profile-id 10
create gpon-onu 30 sn RCMG19988280 line-profile-id 1024 service-profile-id 11
create gpon-onu 42 sn RCMG3A581E17 line-profile-id 1024 service-profile-id 10
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 905 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
quit
interface gpon-olt 3/15
snmp-trap-gpon-olt-profile 11
create gpon-onu 1 sn RCMG3A6022A2 line-profile-id 1024 service-profile-id 10
create gpon-onu 2 sn RCMG3A60224B line-profile-id 1024 service-profile-id 10
create gpon-onu 3 sn RCMG19987E89 line-profile-id 1024 service-profile-id 11
create gpon-onu 4 sn ITBSE8A49388 line-profile-id 1024 service-profile-id 119
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 905 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
quit
interface gpon-olt 3/16
snmp-trap-gpon-olt-profile 11
create gpon-onu 1 sn RCMG19B886A4 line-profile-id 1024 service-profile-id 11
create gpon-onu 2 sn RCMG19B88117 line-profile-id 400 service-profile-id 957
create gpon-onu 3 sn RCMG3AB88A2D line-profile-id 1024 service-profile-id 10
create gpon-onu 4 sn ITBS0D58FA53 line-profile-id 1024 service-profile-id 11
create gpon-onu 5 sn RCMG19B80D0B line-profile-id 1024 service-profile-id 11
create gpon-onu 6 sn FHTC01060746 line-profile-id 1024 service-profile-id 11
create gpon-onu 7 sn RCMG1998FE40 line-profile-id 400 service-profile-id 917
create gpon-onu 8 sn RCMG1998D4C0 line-profile-id 1024 service-profile-id 11
create gpon-onu 9 sn RCMG3A98174F line-profile-id 1024 service-profile-id 10
create gpon-onu 10 sn RCMG1998DE56 line-profile-id 1024 service-profile-id 10
create gpon-onu 11 sn RCMG19B87F21 line-profile-id 1024 service-profile-id 11
create gpon-onu 12 sn ITBSAC9AC728 line-profile-id 1024 service-profile-id 11
create gpon-onu 13 sn RCMG3A602237 line-profile-id 1024 service-profile-id 10
create gpon-onu 14 sn RCMG1998837E line-profile-id 1024 service-profile-id 11
create gpon-onu 15 sn RCMG3AB83697 line-profile-id 1024 service-profile-id 10
create gpon-onu 16 sn RCMG199881A5 line-profile-id 1024 service-profile-id 11
create gpon-onu 17 sn RCMG3B900BD5 line-profile-id 1024 service-profile-id 10
create gpon-onu 18 sn RCMG3AA02C92 line-profile-id 1024 service-profile-id 10
create gpon-onu 19 sn ITBSD91E137D line-profile-id 1024 service-profile-id 11
create gpon-onu 20 sn RCMG3B98019A line-profile-id 1024 service-profile-id 10
create gpon-onu 21 sn RCMG3B900859 line-profile-id 1024 service-profile-id 10
create gpon-onu 22 sn RCMG3A581A3C line-profile-id 1024 service-profile-id 10
create gpon-onu 23 sn ITBS0A6E7036 line-profile-id 1024 service-profile-id 11
create gpon-onu 24 sn RCMG3AA0302E line-profile-id 1024 service-profile-id 10
create gpon-onu 25 sn RCMG199886F6 line-profile-id 1024 service-profile-id 11
create gpon-onu 26 sn RCMG3AA02DEC line-profile-id 1024 service-profile-id 10
create gpon-onu 27 sn RCMG3B901C68 line-profile-id 1024 service-profile-id 10
create gpon-onu 28 sn RCMG1998A3A1 line-profile-id 1024 service-profile-id 11
create gpon-onu 29 sn ITBS8BBC47A3 line-profile-id 1024 service-profile-id 11
create gpon-onu 31 sn ITBS2C658FD4 line-profile-id 1024 service-profile-id 11
create gpon-onu 32 sn RCMG3AA0229B line-profile-id 1024 service-profile-id 11
create gpon-onu 34 sn RCMG19B81AD3 line-profile-id 1024 service-profile-id 11
create gpon-onu 35 sn RCMG3AA0286F line-profile-id 1024 service-profile-id 10
create gpon-onu 36 sn RCMG1999029E line-profile-id 1024 service-profile-id 11
create gpon-onu 37 sn RCMG3A6001FA line-profile-id 1024 service-profile-id 10
create gpon-onu 38 sn RCMG3A9821F8 line-profile-id 1024 service-profile-id 10
create gpon-onu 40 sn RCMG3B980195 line-profile-id 1024 service-profile-id 10
create gpon-onu 41 sn RCMG3AB838C5 line-profile-id 1024 service-profile-id 11
create gpon-onu 126 sn ITBS321C8533 line-profile-id 1024 service-profile-id 560
create gpon-onu 127 sn ZNTS2C185E06 line-profile-id 1024 service-profile-id 569
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 905 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
quit
interface gpon-olt 4/1
snmp-trap-gpon-olt-profile 11
create gpon-onu 1 sn RCMG3AB89469 line-profile-id 1024 service-profile-id 10
create gpon-onu 2 sn RCMG3BA01892 line-profile-id 1024 service-profile-id 10
create gpon-onu 3 sn RCMG3BA01A7F line-profile-id 1024 service-profile-id 10
create gpon-onu 4 sn RCMG3A9836B0 line-profile-id 1024 service-profile-id 10
create gpon-onu 5 sn RCMG3A982E82 line-profile-id 1024 service-profile-id 10
create gpon-onu 6 sn FHTC01060729 line-profile-id 1024 service-profile-id 11
create gpon-onu 7 sn RCMG1930104F line-profile-id 1024 service-profile-id 11
create gpon-onu 8 sn RCMG3A602DD8 line-profile-id 1024 service-profile-id 10
create gpon-onu 9 sn RCMG3AB88618 line-profile-id 1024 service-profile-id 10
create gpon-onu 16 sn ZNTS3F81EDFB line-profile-id 1024 service-profile-id 11
create gpon-onu 20 sn RCMG19988D31 line-profile-id 1024 service-profile-id 11
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 905 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
quit
interface gpon-olt 4/2
snmp-trap-gpon-olt-profile 11
create gpon-onu 1 sn RCMG19990225 line-profile-id 400 service-profile-id 945
create gpon-onu 2 sn RCMG3AB88847 line-profile-id 1024 service-profile-id 10
create gpon-onu 4 sn RCMG3A983337 line-profile-id 1024 service-profile-id 10
create gpon-onu 5 sn RCMG198995B3 line-profile-id 1024 service-profile-id 10
create gpon-onu 6 sn ITBS5B5E15BF line-profile-id 1024 service-profile-id 11
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 905 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
quit
interface gpon-olt 4/3
snmp-trap-gpon-olt-profile 11
create gpon-onu 1 sn ITBS5B5CFB98 line-profile-id 1024 service-profile-id 11
create gpon-onu 2 sn RCMG19B8876C line-profile-id 400 service-profile-id 913
create gpon-onu 3 sn RCMG3A603C32 line-profile-id 1024 service-profile-id 10
create gpon-onu 4 sn RCMG19B886A3 line-profile-id 1024 service-profile-id 11
create gpon-onu 5 sn RCMG3A600E97 line-profile-id 1024 service-profile-id 10
create gpon-onu 6 sn RCMG1998EE74 line-profile-id 1024 service-profile-id 11
create gpon-onu 7 sn RCMG1998E761 line-profile-id 1024 service-profile-id 11
create gpon-onu 8 sn RCMG19988B08 line-profile-id 1024 service-profile-id 11
create gpon-onu 9 sn RCMG3A982A83 line-profile-id 1024 service-profile-id 10
create gpon-onu 10 sn RCMG3BA01DC5 line-profile-id 1024 service-profile-id 10
create gpon-onu 11 sn RCMG3A9834A5 line-profile-id 1024 service-profile-id 10
create gpon-onu 12 sn RCMG3A602814 line-profile-id 1024 service-profile-id 10
create gpon-onu 13 sn RCMG3A602562 line-profile-id 1024 service-profile-id 10
create gpon-onu 14 sn RCMG3A981ABB line-profile-id 1024 service-profile-id 10
create gpon-onu 16 sn RCMG3A980466 line-profile-id 1024 service-profile-id 10
create gpon-onu 21 sn RCMG3A601B55 line-profile-id 1024 service-profile-id 10
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 905 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
quit
interface gpon-olt 4/4
snmp-trap-gpon-olt-profile 11
create gpon-onu 2 sn RCMG1998DE26 line-profile-id 1024 service-profile-id 11
create gpon-onu 3 sn RCMG1998FF4C line-profile-id 1024 service-profile-id 40
create gpon-onu 4 sn RCMG19988217 line-profile-id 1024 service-profile-id 580
create gpon-onu 5 sn RCMG1998BAA2 line-profile-id 1024 service-profile-id 40
create gpon-onu 6 sn RCMG19B88718 line-profile-id 400 service-profile-id 968
create gpon-onu 8 sn RCMG1998E75E line-profile-id 400 service-profile-id 960
create gpon-onu 9 sn RCMG3BA01E66 line-profile-id 1024 service-profile-id 11
create gpon-onu 10 sn RCMG3A982359 line-profile-id 1024 service-profile-id 10
create gpon-onu 11 sn RCMG3A602DEE line-profile-id 1024 service-profile-id 10
create gpon-onu 12 sn ITBS0A6E6EBE line-profile-id 1024 service-profile-id 11
create gpon-onu 13 sn ZNTS2C48CEBB line-profile-id 1024 service-profile-id 915
create gpon-onu 14 sn RCMG199881C5 line-profile-id 100 service-profile-id 3
create gpon-onu 15 sn RCMG199883EB line-profile-id 100 service-profile-id 3
create gpon-onu 16 sn ITBSD91E0EF1 line-profile-id 1024 service-profile-id 11
create gpon-onu 17 sn ITBS0A6E6E34 line-profile-id 1024 service-profile-id 11
create gpon-onu 18 sn ITBS5B0E7173 line-profile-id 1024 service-profile-id 946
create gpon-onu 22 sn RCMG199882B5 line-profile-id 1024 service-profile-id 11
create gpon-onu 23 sn RCMG3A9804C1 line-profile-id 1024 service-profile-id 10
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 905 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
quit
interface gpon-olt 4/5
snmp-trap-gpon-olt-profile 11
create gpon-onu 1 sn RCMG19B80DF0 line-profile-id 1024 service-profile-id 11
create gpon-onu 2 sn RCMG3A602628 line-profile-id 1024 service-profile-id 11
create gpon-onu 3 sn RCMG19988664 line-profile-id 1024 service-profile-id 11
create gpon-onu 4 sn RCMG1998DE3C line-profile-id 1024 service-profile-id 10
create gpon-onu 5 sn ITBS5B0E71E8 line-profile-id 1024 service-profile-id 11
create gpon-onu 6 sn ZNTS2CCF6309 line-profile-id 1024 service-profile-id 11
create gpon-onu 7 sn RCMG3A98232C line-profile-id 1024 service-profile-id 10
create gpon-onu 8 sn RCMG3A5811C1 line-profile-id 1024 service-profile-id 10
create gpon-onu 9 sn RCMG19989162 line-profile-id 1024 service-profile-id 11
create gpon-onu 10 sn RCMG3A603970 line-profile-id 1024 service-profile-id 10
create gpon-onu 11 sn RCMG3A983294 line-profile-id 1024 service-profile-id 10
create gpon-onu 12 sn RCMG199886D4 line-profile-id 1024 service-profile-id 11
create gpon-onu 13 sn RCMG19B80DFC line-profile-id 1024 service-profile-id 11
create gpon-onu 14 sn RCMG19B885F5 line-profile-id 1024 service-profile-id 11
create gpon-onu 15 sn ITBS2CB7FDD7 line-profile-id 1024 service-profile-id 11
create gpon-onu 16 sn RCMG3AA0202B line-profile-id 1024 service-profile-id 10
create gpon-onu 17 sn RCMG3A9805FD line-profile-id 1024 service-profile-id 20
create gpon-onu 18 sn RCMG1998C99D line-profile-id 1024 service-profile-id 11
create gpon-onu 19 sn RCMG19B884B1 line-profile-id 1024 service-profile-id 10
create gpon-onu 20 sn RCMG3AA02DDF line-profile-id 1024 service-profile-id 10
create gpon-onu 21 sn RCMG19988693 line-profile-id 1024 service-profile-id 11
create gpon-onu 22 sn RCMG3B900856 line-profile-id 1024 service-profile-id 10
create gpon-onu 23 sn ZNTS2C48CEE3 line-profile-id 1024 service-profile-id 11
create gpon-onu 24 sn RCMG1930104F line-profile-id 1024 service-profile-id 11
create gpon-onu 25 sn ZNTS2C173ADC line-profile-id 1024 service-profile-id 11
create gpon-onu 26 sn RCMG3A602196 line-profile-id 1024 service-profile-id 20
create gpon-onu 27 sn RCMG3B980629 line-profile-id 1024 service-profile-id 10
create gpon-onu 28 sn ITBSAC4D0BD4 line-profile-id 1024 service-profile-id 11
create gpon-onu 29 sn ZNTS3F81F687 line-profile-id 1024 service-profile-id 11
create gpon-onu 30 sn RCMG3A98238D line-profile-id 1024 service-profile-id 10
create gpon-onu 31 sn RCMG1998E7CE line-profile-id 1024 service-profile-id 10
create gpon-onu 33 sn ZNTS3F81F07B line-profile-id 1024 service-profile-id 11
create gpon-onu 35 sn ZNTS3F909F85 line-profile-id 1024 service-profile-id 11
create gpon-onu 36 sn RCMG199882C2 line-profile-id 1024 service-profile-id 11
create gpon-onu 37 sn RCMG1998964A line-profile-id 1024 service-profile-id 11
create gpon-onu 38 sn RCMG3AA02DB4 line-profile-id 1024 service-profile-id 10
create gpon-onu 40 sn RCMG1998840E line-profile-id 1024 service-profile-id 11
create gpon-onu 41 sn RCMG3A980283 line-profile-id 1024 service-profile-id 10
create gpon-onu 42 sn RCMG19B8875D line-profile-id 1024 service-profile-id 11
create gpon-onu 43 sn RCMG19B87B2B line-profile-id 1024 service-profile-id 11
create gpon-onu 45 sn RCMG19B80B30 line-profile-id 1024 service-profile-id 11
create gpon-onu 46 sn RCMG199887D8 line-profile-id 1024 service-profile-id 11
create gpon-onu 47 sn RCMG19989115 line-profile-id 1024 service-profile-id 11
create gpon-onu 48 sn ZNTS2CEC36FA line-profile-id 1024 service-profile-id 11
create gpon-onu 49 sn ITBSAC4D0BAE line-profile-id 1024 service-profile-id 11
create gpon-onu 50 sn RCMG19988DBA line-profile-id 1024 service-profile-id 11
create gpon-onu 51 sn RCMG19B808F5 line-profile-id 1024 service-profile-id 11
create gpon-onu 53 sn RCMG3A581082 line-profile-id 1024 service-profile-id 10
create gpon-onu 56 sn RCMG3A602A08 line-profile-id 1024 service-profile-id 10
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 905 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
quit
interface gpon-olt 4/6
snmp-trap-gpon-olt-profile 11
create gpon-onu 2 sn ITBS3271C75F line-profile-id 1024 service-profile-id 11
create gpon-onu 3 sn RCMG198995BA line-profile-id 400 service-profile-id 922
create gpon-onu 4 sn ITBS3279167D line-profile-id 1024 service-profile-id 11
create gpon-onu 5 sn RCMG19B8853F line-profile-id 400 service-profile-id 942
create gpon-onu 6 sn RCMG199881B0 line-profile-id 1024 service-profile-id 11
create gpon-onu 7 sn RCMG1998822D line-profile-id 1024 service-profile-id 11
create gpon-onu 8 sn RCMG3B9010F3 line-profile-id 1024 service-profile-id 10
create gpon-onu 9 sn RCMG1998C72C line-profile-id 1024 service-profile-id 40
create gpon-onu 10 sn RCMG3A98153D line-profile-id 1024 service-profile-id 10
create gpon-onu 11 sn RCMG3A580F81 line-profile-id 1024 service-profile-id 10
create gpon-onu 12 sn RCMG19987F2C line-profile-id 1024 service-profile-id 11
create gpon-onu 13 sn RCMG3A60280E line-profile-id 1024 service-profile-id 10
create gpon-onu 15 sn ZNTS2C0BEB36 line-profile-id 1024 service-profile-id 11
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 905 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
quit
interface gpon-olt 4/7
snmp-trap-gpon-olt-profile 11
create gpon-onu 1 sn RCMG19B88412 line-profile-id 400 service-profile-id 948
create gpon-onu 2 sn RCMG3BA018EC line-profile-id 1024 service-profile-id 10
create gpon-onu 3 sn RCMG3BA0194A line-profile-id 1024 service-profile-id 11
create gpon-onu 4 sn ITBSAC4D0CA6 line-profile-id 1024 service-profile-id 11
create gpon-onu 6 sn RCMG19B83ADF line-profile-id 1024 service-profile-id 10
create gpon-onu 7 sn RCMG199880E2 line-profile-id 1024 service-profile-id 11
create gpon-onu 8 sn RCMG3A581790 line-profile-id 1024 service-profile-id 10
create gpon-onu 9 sn RCMG3B9801A2 line-profile-id 1024 service-profile-id 10
create gpon-onu 10 sn RCMG3A581D4E line-profile-id 1024 service-profile-id 10
create gpon-onu 11 sn RCMG1998BB10 line-profile-id 100 service-profile-id 920
create gpon-onu 13 sn RCMG3A602302 line-profile-id 1024 service-profile-id 10
create gpon-onu 14 sn RCMG3A9804AF line-profile-id 1024 service-profile-id 10
create gpon-onu 15 sn DD72E606FE10 line-profile-id 1024 service-profile-id 11
create gpon-onu 17 sn RCMG3A982E84 line-profile-id 1024 service-profile-id 10
create gpon-onu 24 sn RCMG19988129 line-profile-id 1024 service-profile-id 11
create gpon-onu 26 sn RCMG199889EC line-profile-id 1024 service-profile-id 11
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 905 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
quit
interface gpon-olt 4/8
snmp-trap-gpon-olt-profile 11
create gpon-onu 1 sn RCMG1998FF0D line-profile-id 400 service-profile-id 923
create gpon-onu 2 sn RCMG1998E60F line-profile-id 400 service-profile-id 982
create gpon-onu 3 sn RCMG3A603393 line-profile-id 1024 service-profile-id 10
create gpon-onu 4 sn RCMG3AA00767 line-profile-id 1024 service-profile-id 10
create gpon-onu 5 sn RCMG1998DE60 line-profile-id 400 service-profile-id 906
create gpon-onu 6 sn RCMG1998DE46 line-profile-id 400 service-profile-id 985
create gpon-onu 7 sn RCMG1998CE07 line-profile-id 400 service-profile-id 952
create gpon-onu 8 sn RCMG3AB880BD line-profile-id 1024 service-profile-id 10
create gpon-onu 9 sn RCMG3A6016F1 line-profile-id 1024 service-profile-id 10
create gpon-onu 10 sn RCMG3A603A7A line-profile-id 1024 service-profile-id 10
create gpon-onu 11 sn RCMG1998ED92 line-profile-id 100 service-profile-id 2
create gpon-onu 12 sn RCMG19B885F8 line-profile-id 400 service-profile-id 941
create gpon-onu 13 sn RCMG3AB87C63 line-profile-id 1024 service-profile-id 10
create gpon-onu 14 sn RCMG198976E7 line-profile-id 1024 service-profile-id 11
create gpon-onu 15 sn ITBS8B69E403 line-profile-id 1024 service-profile-id 11
create gpon-onu 16 sn ITBSAC4D0C4A line-profile-id 1024 service-profile-id 11
create gpon-onu 17 sn RCMG19301188 line-profile-id 1024 service-profile-id 11
create gpon-onu 22 sn RCMG3A600326 line-profile-id 1024 service-profile-id 10
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
quit
interface gpon-olt 4/9
snmp-trap-gpon-olt-profile 11
create gpon-onu 1 sn RCMG3A983279 line-profile-id 1024 service-profile-id 10
create gpon-onu 2 sn RCMG1998FEFF line-profile-id 400 service-profile-id 938
create gpon-onu 3 sn RCMG1998866C line-profile-id 1024 service-profile-id 11
create gpon-onu 5 sn RCMG3A98220F line-profile-id 1024 service-profile-id 10
create gpon-onu 6 sn ITBSE8F6E46E line-profile-id 1024 service-profile-id 11
create gpon-onu 7 sn RCMG19988289 line-profile-id 1024 service-profile-id 11
create gpon-onu 8 sn RCMG1998C6A2 line-profile-id 400 service-profile-id 990
create gpon-onu 11 sn RCMG3AA0386D line-profile-id 1024 service-profile-id 10
create gpon-onu 12 sn RCMG3B90124F line-profile-id 1024 service-profile-id 10
create gpon-onu 14 sn RCMG3B901108 line-profile-id 1024 service-profile-id 10
create gpon-onu 18 sn RCMG19989569 line-profile-id 1024 service-profile-id 11
create gpon-onu 19 sn DD72E606FE50 line-profile-id 1024 service-profile-id 11
create gpon-onu 20 sn RCMG3AB88832 line-profile-id 1024 service-profile-id 10
create gpon-onu 21 sn RCMG3A602C09 line-profile-id 1024 service-profile-id 10
create gpon-onu 24 sn RCMG1998DD8F line-profile-id 100 service-profile-id 2
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 905 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
quit
interface gpon-olt 4/10
snmp-trap-gpon-olt-profile 11
create gpon-onu 1 sn ITBS44A0FABD line-profile-id 1024 service-profile-id 11
create gpon-onu 2 sn RCMG3A980408 line-profile-id 1024 service-profile-id 10
create gpon-onu 4 sn RCMG199881DC line-profile-id 1024 service-profile-id 11
create gpon-onu 5 sn RCMG19B88464 line-profile-id 1024 service-profile-id 11
create gpon-onu 7 sn DD72E606FDF8 line-profile-id 1024 service-profile-id 11
create gpon-onu 13 sn RCMG193010D8 line-profile-id 1024 service-profile-id 11
create gpon-onu 15 sn RCMG3A581A94 line-profile-id 1024 service-profile-id 10
create gpon-onu 17 sn RCMG3A603D42 line-profile-id 1024 service-profile-id 10
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 905 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
quit
interface gpon-olt 4/11
snmp-trap-gpon-olt-profile 11
create gpon-onu 1 sn RCMG193010FD line-profile-id 400 service-profile-id 934
create gpon-onu 2 sn ITBS325768A9 line-profile-id 1024 service-profile-id 11
create gpon-onu 3 sn ZNTS2C173ADA line-profile-id 1024 service-profile-id 11
create gpon-onu 4 sn RCMG199881D3 line-profile-id 100 service-profile-id 3
create gpon-onu 5 sn RCMG3AA018A2 line-profile-id 1024 service-profile-id 10
create gpon-onu 6 sn RCMG3A6020CE line-profile-id 1024 service-profile-id 10
create gpon-onu 8 sn RCMG199883B3 line-profile-id 1024 service-profile-id 11
create gpon-onu 9 sn ITBS0A6E70BA line-profile-id 1024 service-profile-id 11
create gpon-onu 10 sn RCMG3AA0282E line-profile-id 1024 service-profile-id 10
create gpon-onu 12 sn RCMG3A603D39 line-profile-id 1024 service-profile-id 10
create gpon-onu 13 sn RCMG19988323 line-profile-id 100 service-profile-id 3
create gpon-onu 14 sn RCMG19B80D64 line-profile-id 1024 service-profile-id 11
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 905 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
vlan 3102 isolate-group 1
quit
interface gpon-olt 4/12
snmp-trap-gpon-olt-profile 11
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 905 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
vlan 3540 isolate-group 1
quit
interface gpon-olt 4/13
snmp-trap-gpon-olt-profile 11
create gpon-onu 1 sn DD72E60B5240 line-profile-id 1024 service-profile-id 11
create gpon-onu 2 sn RCMG3A983150 line-profile-id 1024 service-profile-id 10
create gpon-onu 3 sn RCMG19B88726 line-profile-id 400 service-profile-id 940
create gpon-onu 4 sn RCMG3AA02E24 line-profile-id 1024 service-profile-id 10
create gpon-onu 5 sn RCMG3BA017C5 line-profile-id 1024 service-profile-id 10
create gpon-onu 6 sn RCMG19987EF3 line-profile-id 1024 service-profile-id 3
create gpon-onu 7 sn RCMG198995AD line-profile-id 400 service-profile-id 912
create gpon-onu 8 sn ITBSAC4D0C76 line-profile-id 1024 service-profile-id 11
create gpon-onu 10 sn RCMG3A6024AD line-profile-id 1024 service-profile-id 10
create gpon-onu 11 sn RCMG3A581CD0 line-profile-id 1024 service-profile-id 10
create gpon-onu 12 sn RCMG1998E6FE line-profile-id 400 service-profile-id 947
create gpon-onu 13 sn ITBSAC4D0C40 line-profile-id 1024 service-profile-id 11
create gpon-onu 15 sn RCMG1998C527 line-profile-id 400 service-profile-id 958
create gpon-onu 16 sn RCMG1998C081 line-profile-id 400 service-profile-id 919
create gpon-onu 19 sn ITBS0A6E70F6 line-profile-id 1024 service-profile-id 11
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 905 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
quit
interface gpon-olt 4/14
snmp-trap-gpon-olt-profile 11
create gpon-onu 1 sn RCMG19988198 line-profile-id 1024 service-profile-id 3
create gpon-onu 2 sn FHTC01061800 line-profile-id 100 service-profile-id 3
create gpon-onu 3 sn RCMG3AA01334 line-profile-id 1024 service-profile-id 10
create gpon-onu 4 sn RCMG3A980155 line-profile-id 1024 service-profile-id 10
create gpon-onu 5 sn RCMG19B88433 line-profile-id 1024 service-profile-id 20
create gpon-onu 6 sn RCMG3A9821E0 line-profile-id 1024 service-profile-id 10
create gpon-onu 7 sn RCMG19989421 line-profile-id 100 service-profile-id 3
create gpon-onu 8 sn RCMG3A60290D line-profile-id 1024 service-profile-id 10
create gpon-onu 9 sn RCMG1998C6F8 line-profile-id 100 service-profile-id 3
create gpon-onu 10 sn RCMG1998E5B7 line-profile-id 1024 service-profile-id 10
create gpon-onu 11 sn RCMG19987E88 line-profile-id 1024 service-profile-id 3
create gpon-onu 12 sn RCMG19988698 line-profile-id 1024 service-profile-id 3
create gpon-onu 13 sn RCMG19987ECB line-profile-id 100 service-profile-id 3
create gpon-onu 14 sn RCMG19987E84 line-profile-id 1024 service-profile-id 11
create gpon-onu 15 sn RCMG1998DE51 line-profile-id 400 service-profile-id 953
create gpon-onu 16 sn RCMG19988F09 line-profile-id 1024 service-profile-id 11
create gpon-onu 17 sn RCMG19987EEB line-profile-id 100 service-profile-id 3
create gpon-onu 19 sn RCMG3AA0323E line-profile-id 1024 service-profile-id 10
create gpon-onu 20 sn RCMG1998EE4F line-profile-id 400 service-profile-id 924
create gpon-onu 21 sn RCMG1998E856 line-profile-id 400 service-profile-id 973
create gpon-onu 22 sn RCMG19B88255 line-profile-id 400 service-profile-id 972
create gpon-onu 23 sn RCMG1998C274 line-profile-id 400 service-profile-id 986
create gpon-onu 24 sn RCMG1998C26F line-profile-id 1024 service-profile-id 971
create gpon-onu 25 sn ITBS8B5FAEE0 line-profile-id 1024 service-profile-id 256
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 905 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
quit
interface gpon-olt 4/15
snmp-trap-gpon-olt-profile 11
create gpon-onu 1 sn RCMG3A6008C9 line-profile-id 1024 service-profile-id 10
create gpon-onu 2 sn RCMG3A603D6F line-profile-id 1024 service-profile-id 10
create gpon-onu 3 sn RCMG19B8872B line-profile-id 1024 service-profile-id 11
create gpon-onu 5 sn RCMG1998CF2F line-profile-id 1024 service-profile-id 11
create gpon-onu 6 sn ITBSAC9AC74E line-profile-id 1024 service-profile-id 11
create gpon-onu 7 sn RCMG3A98349C line-profile-id 1024 service-profile-id 10
create gpon-onu 8 sn RCMG3AB88979 line-profile-id 1024 service-profile-id 10
create gpon-onu 9 sn RCMG1989786E line-profile-id 100 service-profile-id 3
create gpon-onu 10 sn RCMG19B882DA line-profile-id 400 service-profile-id 965
create gpon-onu 11 sn RCMG3AA0280E line-profile-id 1024 service-profile-id 10
create gpon-onu 12 sn RCMG19301142 line-profile-id 1024 service-profile-id 7
create gpon-onu 13 sn RCMG1998BEE3 line-profile-id 1024 service-profile-id 40
create gpon-onu 14 sn RCMG19B8868E line-profile-id 1024 service-profile-id 936
create gpon-onu 15 sn RCMG19988189 line-profile-id 100 service-profile-id 3
create gpon-onu 16 sn RCMG19988259 line-profile-id 100 service-profile-id 3
create gpon-onu 17 sn RCMG19988331 line-profile-id 100 service-profile-id 3
create gpon-onu 18 sn RCMG19B885BF line-profile-id 400 service-profile-id 926
create gpon-onu 19 sn RCMG19988865 line-profile-id 100 service-profile-id 3
create gpon-onu 20 sn RCMG199891F9 line-profile-id 1024 service-profile-id 11
create gpon-onu 21 sn RCMG1998EE4E line-profile-id 400 service-profile-id 977
create gpon-onu 22 sn RCMG1998DDAF line-profile-id 400 service-profile-id 966
create gpon-onu 23 sn RCMG19B80B61 line-profile-id 1024 service-profile-id 11
create gpon-onu 25 sn RCMG19989B94 line-profile-id 100 service-profile-id 970
create gpon-onu 26 sn ITBS5B5CFB7D line-profile-id 1024 service-profile-id 11
create gpon-onu 28 sn ITBS5B5CFB82 line-profile-id 1024 service-profile-id 11
create gpon-onu 128 sn RCMG19B88628 line-profile-id 400 service-profile-id 907
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
vlan 11 isolate-group 1
vlan 12 isolate-group 1
vlan 13 isolate-group 1
vlan 905 isolate-group 1
vlan 906 isolate-group 1
vlan 910 isolate-group 1
vlan 911 isolate-group 1
vlan 912 isolate-group 1
vlan 913 isolate-group 1
vlan 914 isolate-group 1
vlan 915 isolate-group 1
vlan 916 isolate-group 1
vlan 917 isolate-group 1
vlan 919 isolate-group 1
vlan 920 isolate-group 1
vlan 921 isolate-group 1
vlan 923 isolate-group 1
vlan 931 isolate-group 1
vlan 938 isolate-group 1
vlan 940 isolate-group 1
vlan 941 isolate-group 1
vlan 943 isolate-group 1
vlan 945 isolate-group 1
vlan 948 isolate-group 1
vlan 949 isolate-group 1
vlan 952 isolate-group 1
vlan 956 isolate-group 1
vlan 957 isolate-group 1
vlan 958 isolate-group 1
vlan 959 isolate-group 1
vlan 960 isolate-group 1
vlan 962 isolate-group 1
vlan 963 isolate-group 1
vlan 965 isolate-group 1
vlan 966 isolate-group 1
vlan 968 isolate-group 1
vlan 969 isolate-group 1
vlan 974 isolate-group 1
vlan 975 isolate-group 1
vlan 3102 isolate-group 1
quit
interface gpon-olt 4/16
snmp-trap-gpon-olt-profile 11
create gpon-onu 1 sn RCMG3AA00B20 line-profile-id 1024 service-profile-id 10
create gpon-onu 2 sn RCMG19B881F4 line-profile-id 1024 service-profile-id 939
create gpon-onu 3 sn RCMG3A60268E line-profile-id 1024 service-profile-id 10
create gpon-onu 4 sn RCMG3A9805C4 line-profile-id 1024 service-profile-id 10
create gpon-onu 5 sn RCMG19B81B0B line-profile-id 1024 service-profile-id 11
create gpon-onu 7 sn RCMG199886BD line-profile-id 1024 service-profile-id 11
create gpon-onu 8 sn ITBS2C658FD2 line-profile-id 1024 service-profile-id 11
create gpon-onu 9 sn RCMG3A603933 line-profile-id 1024 service-profile-id 10
switchport trunk allowed vlan 10-13,800-999,1195,1295,3005,3101,3102,3119,3256,3540,3550,3560,3580,3964
switchport trunk untagged vlan remove 1
switchport mode trunk
quit
!
!command in interface-gpon-onu_mode
interface gpon-onu 3/1/3
description RCMG3A982B08
quit
interface gpon-onu 3/1/6
description RCMG3B9010F4
quit
interface gpon-onu 3/3/7
description MG3A981AD7
quit
interface gpon-onu 3/3/23
description RCMG1998DDC1
quit
interface gpon-onu 3/10/26
description RCMG1998DD6B_suzenara
quit
interface gpon-onu 3/10/44
description RCMG3A982245
quit
interface gpon-onu 3/10/51
description RCMG3AB88E48
quit
interface gpon-onu 3/11/47
description RCMG3AA022C2_
quit
interface gpon-onu 3/11/57
description ---
quit
interface gpon-onu 3/12/1
description RCMG19988A5C
quit
interface gpon-onu 3/13/15
description RCMG19988271
quit
interface gpon-onu 3/14/29
description RCMG3A603972
quit
interface gpon-onu 3/15/3
description 87E89
quit
interface gpon-onu 4/4/13
description ZNTS2C48CEBB
quit
interface gpon-onu 4/5/12
description RCMG199886D4
quit
interface gpon-onu 4/5/38
description RCMG3AA02DB4
quit
interface gpon-onu 4/5/47
description RCMG19989115
quit
interface gpon-onu 4/8/11
description RCMG1998ED92
quit
interface gpon-onu 4/10/1
description ITBS44A0FABD
quit
interface gpon-onu 4/13/4
description RCMG3AA02E24
quit
interface gpon-onu 4/14/2
description FHTC01061800_DGT_SAP_PONTO_20
quit
interface gpon-onu 4/16/9
description RCMG3A603933
quit
!
!command in gpon-onu_mode
gpon-onu 3/1/1
iphost 1 mode pppoe
iphost 1 pppoe username jonasrocha password 61149587000
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/1/2
iphost 1 mode pppoe
iphost 1 pppoe username mariaolindasilva password 90931610087
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/1/3
iphost 1 mode pppoe
iphost 1 pppoe username elainesantos password 00622962051
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/1/4
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/1/5
iphost 1 mode pppoe
iphost 1 pppoe username evertonsimas password 00914909010
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/1/6
iphost 1 mode pppoe
iphost 1 pppoe username priscila_zefino password 00287914011
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/1/9
iphost 1 vlan 11
quit
gpon-onu 3/2/1
iphost 1 mode pppoe
iphost 1 pppoe username teste2 password teste2
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/2/2
iphost 1 mode pppoe
iphost 1 pppoe username teste8 password teste8
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/2/3
iphost 1 mode pppoe
iphost 1 pppoe username teste8 password teste8
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2
iphost 1 service ipv6-global-address-getting-mode auto-no-status
iphost 2 service Internet
quit
gpon-onu 3/3/1
iphost 1 mode pppoe
iphost 1 pppoe username misaelboni password 02388599083
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/3/4
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/3/5
iphost 1 mode pppoe
iphost 1 pppoe username patriciadasilva password 01377968030
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/3/6
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/3/7
iphost 1 mode pppoe
iphost 1 pppoe username denisesantos password 02709688069
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/3/9
iphost 1 mode pppoe
iphost 1 pppoe username laurasilva password 05554227040
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/3/10
iphost 1 mode pppoe
iphost 1 pppoe username rafaelgoncalves password 04514687081
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/3/11
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 3/3/15
iphost 1 vlan 11
quit
gpon-onu 3/3/23
iphost 1 mode pppoe
iphost 1 pppoe username elisangelanogueira password 00452940036
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2
iphost 1 service ipv6-global-address-getting-mode auto-no-status
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/3/24
iphost 1 mode pppoe
iphost 1 pppoe username wellingtonbrochier password 02635684073
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/3/26
iphost 1 mode pppoe
iphost 1 pppoe username sonairavieira password 00461761017
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/3/28
iphost 1 mode pppoe
iphost 1 pppoe username gustavofraga password 03081596084
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/3/30
iphost 1 mode pppoe
iphost 1 pppoe username alinedecarvalho password 99279499049
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/3/32
iphost 1 mode pppoe
iphost 1 pppoe username raquel_santos password 02610853017
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2
iphost 1 service ipv6-global-address-getting-mode manual
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/3/33
iphost 1 mode pppoe
iphost 1 pppoe username annecarolinerutkoski password 04728535037
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
quit
gpon-onu 3/3/35
iphost 1 mode pppoe
iphost 1 pppoe username williamfreire password 01624086098
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode manual
quit
gpon-onu 3/5/2
iphost 1 vlan 3256
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1
iphost 2 vlan 3256
iphost 2 service Internet
iphost 2 service mode bridge cos 0 portlist 2
quit
gpon-onu 3/5/5
iphost 1 vlan 11
iphost 1 service Internet
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/5/6
iphost 1 mode pppoe
iphost 1 pppoe username alexsilva password 01697215076
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/5/8
iphost 1 mode pppoe
iphost 1 pppoe username nelsondorr_2ponto password 36800635049
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/5/9
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 service Internet
iphost 2 service mode bridge cos 0 portlist 1,2
quit
gpon-onu 3/5/10
iphost 1 mode pppoe
iphost 1 pppoe username claudiojunior_2ponto password 01788104013
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2
iphost 1 service ipv6-global-address-getting-mode dhcp
iphost 2 service Internet
quit
gpon-onu 3/5/11
iphost 1 mode pppoe
iphost 1 pppoe username suelenmachado_2ponto password 04304223003
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/6/1
iphost 1 mode pppoe
iphost 1 pppoe username fernandaberetta password 01790201020
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/6/2
iphost 1 mode pppoe
iphost 1 pppoe username lianemelo password 96457910068
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
quit
gpon-onu 3/6/3
iphost 1 mode pppoe
iphost 1 pppoe username dionefigueredo password 00841543062
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/6/4
iphost 1 mode pppoe
iphost 1 pppoe username emersonberetta password 01819829006
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/6/6
iphost 1 mode pppoe
iphost 1 pppoe username ressolifiuza password 54382181020
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/6/7
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/6/8
iphost 1 mode pppoe
iphost 1 pppoe username edsonmelchiades password 43915221015
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/6/20
iphost 1 mode pppoe
iphost 1 pppoe username karinahaas password 55095429004
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/6/26
iphost 1 mode pppoe
iphost 1 pppoe username leonardomotta password 01988436079
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode manual
quit
gpon-onu 3/8/3
iphost 1 mode pppoe
iphost 1 pppoe username giselesilva_2ponto password 82351260015
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/8/5
iphost 1 mode pppoe
iphost 1 pppoe username diely_lopes password 03293567045
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/8/6
iphost 1 mode pppoe
iphost 1 pppoe username christiancarvalho password 04878601019
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/8/7
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 3/8/8
iphost 1 mode pppoe
iphost 1 pppoe username mariamoura password 02379955069
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/8/9
iphost 1 mode pppoe
iphost 1 pppoe username elzigoncalves password 64149110034
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/8/10
iphost 1 mode pppoe
iphost 1 pppoe username cristianebraz password 70328838004
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/8/11
iphost 1 mode pppoe
iphost 1 pppoe username leosampaio password 61119318068
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/8/14
iphost 1 mode pppoe
iphost 1 pppoe username carmenfranco password 57887438004
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode manual
quit
gpon-onu 3/8/20
iphost 1 mode pppoe
iphost 1 pppoe username marcelo_corange password 54717957091
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/8/21
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/8/23
iphost 1 mode pppoe
iphost 1 pppoe username alexmatos password 01276882009
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2
iphost 1 service ipv6-global-address-getting-mode auto-no-status
iphost 2 service Internet
quit
gpon-onu 3/9/1
iphost 1 mode pppoe
iphost 1 pppoe username evertonalmeida password 80549381015
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/2
iphost 1 mode pppoe
iphost 1 pppoe username andersonbatista password 01361420014
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/3
iphost 1 mode pppoe
iphost 1 pppoe username carlaelesbaosouza password 93584458072
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/4
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/9/5
iphost 1 mode pppoe
iphost 1 pppoe username nelcileite password 48035130072
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/7
iphost 1 service ipv6-global-address-getting-mode manual
quit
gpon-onu 3/9/8
iphost 1 mode pppoe
iphost 1 pppoe username andregomes password 05759630008
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
quit
gpon-onu 3/9/9
iphost 1 mode pppoe
iphost 1 pppoe username sabrinabarcellos password 94469075000
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/10
iphost 1 mode pppoe
iphost 1 pppoe username wagnersperb password 01393645011
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/11
iphost 1 mode pppoe
iphost 1 pppoe username nara_freire password 45483680006
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/12
iphost 1 mode pppoe
iphost 1 pppoe username vladineiasilva password 69413193053
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/13
iphost 1 mode pppoe
iphost 1 pppoe username elisandro_deus password 03930690012
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/14
iphost 1 mode pppoe
iphost 1 pppoe username lucianatassoni password 64416704020
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/15
iphost 1 mode pppoe
iphost 1 pppoe username tatianaribas password 96499923087
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/16
iphost 1 mode pppoe
iphost 1 pppoe username otaviobordinhao password 41561651087
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/17
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu 3/9/18
iphost 1 mode pppoe
iphost 1 pppoe username maria_soares password 05584249025
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/19
iphost 1 mode pppoe
iphost 1 pppoe username danielsilveira password 91152550004
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/20
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 3/9/21
iphost 1 mode pppoe
iphost 1 pppoe username revaildopinho password 27988341049
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/22
iphost 1 mode pppoe
iphost 1 pppoe username edersonteixeira password 80450946053
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/23
iphost 1 mode pppoe
iphost 1 pppoe username luciane_oliveira password 02678949028
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/24
iphost 1 mode pppoe
iphost 1 pppoe username josias_cunha password 01941174051
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/25
iphost 1 mode pppoe
iphost 1 pppoe username ronaldosilveira password 97560510000
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/26
iphost 1 mode pppoe
iphost 1 pppoe username cicerasilva password 84059630063
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
quit
gpon-onu 3/9/27
iphost 1 mode pppoe
iphost 1 pppoe username josianefolli password 01004881029
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/28
iphost 1 mode pppoe
iphost 1 pppoe username nilsonviegas password 39877191091
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/29
iphost 1 mode pppoe
iphost 1 pppoe username winldbarcelos password 23965070010
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode dhcp
quit
gpon-onu 3/9/30
iphost 1 mode pppoe
iphost 1 pppoe username iracemaestraich password 64149021015
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/31
iphost 1 mode pppoe
iphost 1 pppoe username franciscofagundes password 39092143049
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/32
iphost 1 mode pppoe
iphost 1 pppoe username joao_dapper password 33654794068
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/33
iphost 1 mode pppoe
iphost 1 pppoe username karolinedapper password 01052010067
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/34
iphost 1 mode pppoe
iphost 1 pppoe username nildoaraujo password 28741587049
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/35
iphost 1 mode pppoe
iphost 1 pppoe username cristinapereira password 48334251068
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/36
iphost 1 mode pppoe
iphost 1 pppoe username celiomelo password 31345336004
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/37
iphost 1 mode pppoe
iphost 1 pppoe username tamaramoura password 05062989060
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/38
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/9/39
iphost 1 mode pppoe
iphost 1 pppoe username mariamatias password 00090108078
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode manual
quit
gpon-onu 3/9/41
iphost 1 mode pppoe
iphost 1 pppoe username genesio_melo password 03339562067
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/42
iphost 1 mode pppoe
iphost 1 pppoe username willianflores password 03971298079
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/43
iphost 1 mode pppoe
iphost 1 pppoe username ricardorodrigues password 02801462055
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/44
iphost 1 mode pppoe
iphost 1 pppoe username elisangelafernandes password 98625772072
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/45
iphost 1 mode pppoe
iphost 1 pppoe username cledemarrasche password 96347597004
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/46
iphost 1 mode pppoe
iphost 1 pppoe username joao_pereira password 56285019053
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/47
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/9/48
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/9/49
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu 3/9/50
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 service Internet
iphost 2 service mode bridge cos 0 portlist 1,2
quit
gpon-onu 3/9/51
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/9/52
iphost 1 mode pppoe
iphost 1 pppoe username claudeteback password 00494137088
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/53
iphost 1 mode pppoe
iphost 1 pppoe username valdirandrade password 32291914049
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/54
iphost 1 mode pppoe
iphost 1 pppoe username jaquelinesilva_ password 63656396000
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2
iphost 1 service ipv6-global-address-getting-mode auto-no-status
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/9/55
iphost 1 mode pppoe
iphost 1 pppoe username wagnerrosa password 02026528071
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/56
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 3/9/57
iphost 1 mode pppoe
iphost 1 pppoe username nadiakene password 65825659072
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/58
iphost 1 mode pppoe
iphost 1 pppoe username rodrigosilva password 01150854081
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/59
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/9/60
iphost 1 mode pppoe
iphost 1 pppoe username valmirribeiro password 94696047091
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/9/61
iphost 1 mode pppoe
iphost 1 pppoe username angelowolff password 00504836099
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/1
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 3/10/2
iphost 1 mode pppoe
iphost 1 pppoe username adaosouza password 30681014091
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/3
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/10/4
iphost 1 mode pppoe
iphost 1 pppoe username jeniferurbano password 02542872040
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/6
iphost 1 mode pppoe
iphost 1 pppoe username katyllenduarte password 86696319034
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
quit
gpon-onu 3/10/7
iphost 1 mode pppoe
iphost 1 pppoe username claudiadomboske password 01629462012
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/8
iphost 1 vlan 11
quit
gpon-onu 3/10/9
iphost 1 mode pppoe
iphost 1 pppoe username stefanycorrea password 04669563041
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2
iphost 1 service ipv6-global-address-getting-mode auto-no-status
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/10/10
iphost 1 mode pppoe
iphost 1 pppoe username cristina_correa password 01265629030
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/12
iphost 1 mode pppoe
iphost 1 pppoe username katiawerner password 00810030055
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/13
iphost 1 mode pppoe
iphost 1 pppoe username jenifermotta password 04178631012
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/14
iphost 1 mode pppoe
iphost 1 pppoe username lucianobarbosa_2ponto password 92907750097
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/16
iphost 1 mode pppoe
iphost 1 pppoe username marcussilva password 00743061039
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/17
iphost 1 mode pppoe
iphost 1 pppoe username olneihuber password 93801521087
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/19
iphost 1 mode pppoe
iphost 1 pppoe username jozielilacerda password 03555177010
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/21
iphost 1 mode pppoe
iphost 1 pppoe username pauladeoliveira password 98028693091
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/10/22
iphost 1 mode pppoe
iphost 1 pppoe username marciagomes password 98582607091
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/23
iphost 1 mode pppoe
iphost 1 pppoe username joelfernandes password 92194320059
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/24
iphost 1 mode pppoe
iphost 1 pppoe username selmarnunes password 03683854006
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/25
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu 3/10/26
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat disable cos 0 portlist 1,2
iphost 1 service ipv6-global-address-getting-mode manual
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/10/27
iphost 1 mode pppoe
iphost 1 pppoe username danielasantos password 01904063055
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/29
iphost 1 vlan 11
quit
gpon-onu 3/10/31
iphost 1 vlan 11
quit
gpon-onu 3/10/32
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu 3/10/33
iphost 1 mode pppoe
iphost 1 pppoe username joao_duarte password 62551981034
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/34
iphost 1 mode pppoe
iphost 1 pppoe username leonardofriderichs password 04256326014
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
quit
gpon-onu 3/10/35
iphost 1 mode pppoe
iphost 1 pppoe username stefanyqueiroz password 04449201027
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
iphost 2 service Internet
quit
gpon-onu 3/10/36
iphost 1 mode pppoe
iphost 1 pppoe username lilianluiz password 04471221000
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/37
iphost 1 mode pppoe
iphost 1 pppoe username catianemoraes password 02073045057
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/39
iphost 1 mode pppoe
iphost 1 pppoe username fernandobarcelos password 02635608059
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/40
iphost 1 mode pppoe
iphost 1 pppoe username jaine_marcos password 04504675030
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode manual
quit
gpon-onu 3/10/41
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/10/42
iphost 1 mode pppoe
iphost 1 pppoe username marcosalvesrodrigues password 03809707082
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/43
iphost 1 mode pppoe
iphost 1 pppoe username patrickdasilva password 01615843060
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/44
iphost 1 mode pppoe
iphost 1 pppoe username samuelfernandes password 02772832058
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/45
iphost 1 mode pppoe
iphost 1 pppoe username guilhermerosa password 01203071035
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/46
iphost 1 mode pppoe
iphost 1 pppoe username guilhermerosa_ponto2 password 01203071035
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/47
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/10/48
iphost 1 mode pppoe
iphost 1 pppoe username yorranasantos password 09747089920
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/49
iphost 1 mode pppoe
iphost 1 pppoe username vanessasoares password 00989779033
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/50
iphost 1 mode pppoe
iphost 1 pppoe username soniarodrigues password 98439081049
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
quit
gpon-onu 3/10/51
iphost 1 mode pppoe
iphost 1 pppoe username noesilva password 01652154027
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/52
iphost 1 mode pppoe
iphost 1 pppoe username gabrielamota password 04685267060
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/53
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/10/55
iphost 1 mode pppoe
iphost 1 pppoe username jadedarski password 02196595080
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/56
iphost 1 mode pppoe
iphost 1 pppoe username katiucycampos password 01086354060
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2
iphost 1 service ipv6-global-address-getting-mode auto-no-status
iphost 2 service Internet
iphost 2 service mode route nat enable cos 0 portlist 1,2
quit
gpon-onu 3/10/57
iphost 1 mode pppoe
iphost 1 pppoe username danielamarcos password 04292612099
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/58
iphost 1 mode pppoe
iphost 1 pppoe username marco_rodrigues password 94321060044
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2
iphost 1 service ipv6-global-address-getting-mode auto-no-status
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/10/59
iphost 1 mode pppoe
iphost 1 pppoe username luizsiqueira password 93370180049
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/60
iphost 1 mode pppoe
iphost 1 pppoe username sheilalima password 02562932013
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/62
iphost 1 mode pppoe
iphost 1 pppoe username edsonluz password 00310912024
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/10/64
iphost 1 vlan 11
quit
gpon-onu 3/10/65
iphost 1 vlan 11
quit
gpon-onu 3/11/1
iphost 1 mode pppoe
iphost 1 pppoe username amandaestraich password 02455667081
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/2
iphost 1 mode pppoe
iphost 1 pppoe username SandraEstraich password 43277772004
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/3
iphost 1 vlan 11
quit
gpon-onu 3/11/4
iphost 1 mode pppoe
iphost 1 pppoe username alessandrarosa password 59386339072
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/5
iphost 1 mode pppoe
iphost 1 pppoe username tamaratichks password 02896202013
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/6
iphost 1 mode pppoe
iphost 1 pppoe username vanderleigarcia password 91660653053
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/7
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/11/8
iphost 1 mode pppoe
iphost 1 pppoe username josianemelo password 03329765054
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/9
iphost 1 mode pppoe
iphost 1 pppoe username lindomar_pereira password 98215450091
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/11
iphost 1 mode pppoe
iphost 1 pppoe username samanta_santana password 86775960034
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
quit
gpon-onu 3/11/12
iphost 1 mode pppoe
iphost 1 pppoe username jorge_salermo password 54856515004
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/13
iphost 1 mode pppoe
iphost 1 pppoe username jesus_orestes password 65085884000
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/14
iphost 1 mode pppoe
iphost 1 pppoe username darcibraz password 37932535034
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/16
iphost 1 mode pppoe
iphost 1 pppoe username itamarsilva password 02735612007
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/17
iphost 1 mode pppoe
iphost 1 pppoe username vilmasilva password 02341732038
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/18
iphost 1 mode pppoe
iphost 1 pppoe username mauro_oliveira password 46399518091
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/19
iphost 1 mode pppoe
iphost 1 pppoe username moacir_schul password 00179482076
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/11/20
iphost 1 mode pppoe
iphost 1 pppoe username susanemoraes password 02279726009
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/21
iphost 1 vlan 11
quit
gpon-onu 3/11/22
iphost 1 mode pppoe
iphost 1 pppoe username katiateixeira password 94366969068
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/23
iphost 1 mode pppoe
iphost 1 pppoe username rosamaria_silva password 45820570049
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/24
iphost 1 mode pppoe
iphost 1 pppoe username susamaramello password 02093266032
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/26
iphost 1 mode pppoe
iphost 1 pppoe username joselaineramires password 01590188039
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/27
iphost 1 service ipv6-global-address-getting-mode manual
quit
gpon-onu 3/11/28
iphost 1 mode pppoe
iphost 1 pppoe username lucasteixeira password 01669162001
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/29
iphost 1 mode pppoe
iphost 1 pppoe username nelveseverino password 93557760049
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/30
iphost 1 mode pppoe
iphost 1 pppoe username rodrigofreitas password 88189023004
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/31
iphost 1 mode pppoe
iphost 1 pppoe username evaldosoares password 60190523034
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/33
iphost 1 mode pppoe
iphost 1 pppoe username dhiegosilva password 83852662087
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/35
iphost 1 mode pppoe
iphost 1 pppoe username mariaroselilima password 98521837968
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/36
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/11/37
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/11/38
iphost 1 mode pppoe
iphost 1 pppoe username francielesilva password 06093212009
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/39
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 3/11/40
iphost 1 mode pppoe
iphost 1 pppoe username isabelviana password 55554431020
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/11/41
iphost 1 mode pppoe
iphost 1 pppoe username jessicacarvalho password 02206438062
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode manual
quit
gpon-onu 3/11/42
iphost 1 mode pppoe
iphost 1 pppoe username nilcemoraes password 73569526020
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/43
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/11/44
iphost 1 mode pppoe
iphost 1 pppoe username adaoandrade_2ponto password 38828138068
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/45
iphost 1 mode pppoe
iphost 1 pppoe username madsonmota password 42617944034
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2
iphost 1 service ipv6-global-address-getting-mode auto-no-status
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/11/46
iphost 1 mode pppoe
iphost 1 pppoe username evasoares password 98473611004
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/47
iphost 1 mode pppoe
iphost 1 pppoe username andersonvieira password 02743207035
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/48
iphost 1 mode pppoe
iphost 1 pppoe username liliane_alves password 99386194015
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/49
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/11/50
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 3/11/51
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 3/11/52
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 3/11/53
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/11/54
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/11/56
iphost 1 mode pppoe
iphost 1 pppoe username carolineserpa password 04404868073
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
quit
gpon-onu 3/11/57
iphost 1 mode pppoe
iphost 1 pppoe username claudemirjacob password 50714902004
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
quit
gpon-onu 3/11/58
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/11/59
iphost 1 mode pppoe
iphost 1 pppoe username deisefontana password 97361178049
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/60
iphost 1 mode pppoe
iphost 1 pppoe username leomarayres_ password 61190691000
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/61
iphost 1 mode pppoe
iphost 1 pppoe username eduardoduarte password 03500538045
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/62
iphost 1 mode pppoe
iphost 1 pppoe username rafaelcandido password 02781588032
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/63
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/11/64
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/11/65
iphost 1 vlan 11
quit
gpon-onu 3/11/69
iphost 1 vlan 11
quit
gpon-onu 3/11/70
iphost 1 mode pppoe
iphost 1 pppoe username andreiaraqui password 00061538280
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/71
iphost 1 mode pppoe
iphost 1 pppoe username josemariasilva password 34513760087
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
quit
gpon-onu 3/11/72
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 3/11/73
iphost 1 mode pppoe
iphost 1 pppoe username dejalmosilva password 96906154087
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/74
iphost 1 mode pppoe
iphost 1 pppoe username maurosalermo password 02290544043
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/75
iphost 1 mode pppoe
iphost 1 pppoe username marceloessersilva password 58303553020
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2
iphost 1 service ipv6-global-address-getting-mode auto-no-status
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/11/76
iphost 1 vlan 11
quit
gpon-onu 3/11/77
iphost 1 vlan 11
iphost 1 service Internet
quit
gpon-onu 3/11/79
iphost 1 mode pppoe
iphost 1 pppoe username rocsanamayer password 64147703020
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/80
iphost 1 mode pppoe
iphost 1 pppoe username lorineischul password 03755855089
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/11/81
iphost 1 mode pppoe
iphost 1 pppoe username lucas_teixeiraa password 86411683034
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/12/5
iphost 1 mode pppoe
iphost 1 pppoe username fabianabarbosa password 77569113004
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/12/7
iphost 1 mode pppoe
iphost 1 pppoe username joaodeoliveira password 07994974015
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/12/8
iphost 1 mode pppoe
iphost 1 pppoe username jucelemlemos password 48922390034
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/12/9
iphost 1 mode pppoe
iphost 1 pppoe username viniciussilva password 01198603097
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/12/11
iphost 1 mode pppoe
iphost 1 pppoe username rafaelsoares password 02305258062
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/12/12
iphost 1 mode pppoe
iphost 1 pppoe username adrianomachado password 00113311001
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/12/13
iphost 1 mode pppoe
iphost 1 pppoe username gelson_oliveira password 44220243968
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/12/15
iphost 1 mode pppoe
iphost 1 pppoe username marciosilva2ponto password 93768877000
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/12/18
iphost 1 vlan 11
quit
gpon-onu 3/12/30
iphost 1 mode pppoe
iphost 1 pppoe username mateussanto password 99986132053
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/13/1
iphost 1 mode pppoe
iphost 1 pppoe username angelamachado password 00147411050
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/13/5
iphost 1 mode pppoe
iphost 1 pppoe username israeljandt password 74126199004
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/13/7
iphost 1 mode pppoe
iphost 1 pppoe username gilneisilva password 63781875091
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/13/10
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/13/13
iphost 1 mode pppoe
iphost 1 pppoe username michelecarvalho password 96319348020
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/13/14
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 service mode bridge cos 0 portlist 1,2
quit
gpon-onu 3/13/15
iphost 1 vlan 11
quit
gpon-onu 3/13/17
iphost 1 vlan 11
quit
gpon-onu 3/13/19
iphost 1 mode pppoe
iphost 1 pppoe username michaelteixeira password 66545056034
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/13/21
iphost 1 service ipv6-global-address-getting-mode manual
quit
gpon-onu 3/13/23
iphost 1 mode pppoe
iphost 1 pppoe username emersonmaciel password 65495756053
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/13/24
iphost 1 mode pppoe
iphost 1 pppoe username dionatasevero password 02423639031
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/13/35
iphost 1 mode pppoe
iphost 1 pppoe username claudiahoffmann password 91080355049
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/14/2
iphost 1 mode pppoe
iphost 1 pppoe username shauandermachado password 04040508084
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/14/4
iphost 1 mode pppoe
iphost 1 pppoe username alexinacio password 64694577034
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/14/5
iphost 1 mode pppoe
iphost 1 pppoe username andressaneves password 04278991096
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/14/7
iphost 1 mode pppoe
iphost 1 pppoe username brunoantunes password 01368421008
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/14/9
iphost 1 mode pppoe
iphost 1 pppoe username alexandreneto password 03722111005
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/14/10
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/14/11
iphost 1 mode pppoe
iphost 1 pppoe username rita_silva password 69311625000
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/14/12
iphost 1 mode pppoe
iphost 1 pppoe username jose_dossantos password 93600380087
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/14/14
iphost 1 mode pppoe
iphost 1 pppoe username rosemarsilva password 60895669034
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/14/16
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/14/17
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/14/18
iphost 1 mode pppoe
iphost 1 pppoe username diolandasilva password 61395838020
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/14/20
iphost 1 mode pppoe
iphost 1 pppoe username larissadacosta password 07069171030
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/14/22
iphost 1 mode pppoe
iphost 1 pppoe username albertomoreira password 58737316087
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/14/24
iphost 1 mode pppoe
iphost 1 pppoe username ivetepereira password 59954590072
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
quit
gpon-onu 3/14/26
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 3/14/27
iphost 1 mode pppoe
iphost 1 pppoe username irineurosa password 53508661091
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/14/28
iphost 1 mode pppoe
iphost 1 pppoe username andre_schossler password 00626474078
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/14/29
iphost 1 mode pppoe
iphost 1 pppoe username christianborba password 85376345068
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/14/42
iphost 1 mode pppoe
iphost 1 pppoe username joceliasilva password 98644831020
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/15/1
iphost 1 mode pppoe
iphost 1 pppoe username rosanecordeiro password 59559853015
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/15/2
iphost 1 mode pppoe
iphost 1 pppoe username jeovarpiamesso password 90883659034
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/15/3
iphost 1 mode pppoe
iphost 1 pppoe username michael_teixeira password 66545056034
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
quit
gpon-onu 3/16/1
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/16/3
iphost 1 mode pppoe
iphost 1 pppoe username marlei_santos password 00323567061
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/16/4
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 3/16/8
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/16/9
iphost 1 mode pppoe
iphost 1 pppoe username silviabeis password 97061638087
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/16/10
iphost 1 mode pppoe
iphost 1 pppoe username anabrinhoni password 01274913179
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2
iphost 1 service ipv6-global-address-getting-mode auto-no-status
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/16/11
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/16/12
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 3/16/13
iphost 1 mode pppoe
iphost 1 pppoe username carlosbatista password 01150389060
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/16/15
iphost 1 mode pppoe
iphost 1 pppoe username suelenramos password 04810003051
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/16/17
iphost 1 mode pppoe
iphost 1 pppoe username diomarinarodrigues password 59051191049
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/16/18
iphost 1 mode pppoe
iphost 1 pppoe username maiconscheibler password 03032096073
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/16/19
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 3/16/20
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode manual
quit
gpon-onu 3/16/21
iphost 1 mode pppoe
iphost 1 pppoe username simonegois password 64694127004
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/16/22
iphost 1 mode pppoe
iphost 1 pppoe username ademarcruz password 37797018049
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/16/23
iphost 1 vlan 11
quit
gpon-onu 3/16/24
iphost 1 mode pppoe
iphost 1 pppoe username josethomasia password 39509630063
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/16/25
iphost 1 vlan 11
quit
gpon-onu 3/16/26
iphost 1 mode pppoe
iphost 1 pppoe username marciaboeira password 99413590087
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/16/27
iphost 1 mode pppoe
iphost 1 pppoe username gabriellymetz password 04938449021
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/16/35
iphost 1 mode pppoe
iphost 1 pppoe username vilmacezar password 01648210074
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/16/36
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 3/16/37
iphost 1 mode pppoe
iphost 1 pppoe username rosane_cordeiro password 59559853015
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/16/38
iphost 1 mode pppoe
iphost 1 pppoe username lidiane_florindo password 01041283059
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/16/40
iphost 1 mode pppoe
iphost 1 pppoe username saimonsilva password 03341870016
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 3/16/41
iphost 1 mode pppoe
iphost 1 pppoe username jessicabueno password 01448210011
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
quit
gpon-onu 3/16/126
iphost 1 service ipv6-global-address-getting-mode manual
quit
gpon-onu 4/1/1
iphost 1 mode pppoe
iphost 1 pppoe username kiaragomes password 04961991023
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/1/2
iphost 1 mode pppoe
iphost 1 pppoe username marinezsouza password 88278239053
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/1/3
iphost 1 mode pppoe
iphost 1 pppoe username brunaluz password 03503583033
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/1/4
iphost 1 mode pppoe
iphost 1 pppoe username rodrigoalgayer password 02023357047
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/1/5
iphost 1 mode pppoe
iphost 1 pppoe username brianzuluaga password 24313732829
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/1/7
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 service Internet
iphost 2 service mode bridge cos 0 portlist 1,2
quit
gpon-onu 4/1/8
iphost 1 mode pppoe
iphost 1 pppoe username daniel_cardozo password 01915546001
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/1/9
iphost 1 mode pppoe
iphost 1 pppoe username leonardo_schubert password 02734228041
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/2/2
iphost 1 mode pppoe
iphost 1 pppoe username joaozefino password 44531494091
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/2/4
iphost 1 mode pppoe
iphost 1 pppoe username karinariveros password 97383341015
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/2/5
iphost 1 mode pppoe
iphost 1 pppoe username sandrolemes password 77104374000
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/3/1
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 4/3/3
iphost 1 mode pppoe
iphost 1 pppoe username jordanamarques password 00970203039
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/3/4
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 4/3/5
iphost 1 mode pppoe
iphost 1 pppoe username marlenecontreiras password 33851271068
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/3/6
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 4/3/7
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 4/3/9
iphost 1 mode pppoe
iphost 1 pppoe username vaniamachado password 00341219002
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/3/10
iphost 1 mode pppoe
iphost 1 pppoe username marcelocorange password 54717957091
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/3/11
iphost 1 mode pppoe
iphost 1 pppoe username elianicastelan password 62819917020
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/3/12
iphost 1 mode pppoe
iphost 1 pppoe username lucianatavares password 94007900078
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/3/13
iphost 1 mode pppoe
iphost 1 pppoe username ronaldosilveira_2ponto password 97560510000
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/3/14
iphost 1 mode pppoe
iphost 1 pppoe username patricia_martins password 07480789327
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode dhcp
quit
gpon-onu 4/3/16
iphost 1 mode pppoe
iphost 1 pppoe username luismachado password 33038040010
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/3/21
iphost 1 mode pppoe
iphost 1 pppoe username josildasilva password 02546470736
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/4/2
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 4/4/9
iphost 1 mode pppoe
iphost 1 pppoe username franciscolourenco password 31334164053
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
quit
gpon-onu 4/4/10
iphost 1 mode pppoe
iphost 1 pppoe username odetesantos_2ponto password 01000647013
iphost 1 vlan 11
iphost 1 service Internet voip-signalling voip-media
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu uni pots 4/4/10/1
sip-agent sip-proxy sipcyberweb.ligueai.com.br outbound sipcyberweb.ligueai.com.br sip-registrar sipcyberweb.ligueai.com.br primary-dns 0.0.0.0 secondary-dns 0.0.0.0
sip-agent uri-format sip
sip-user aor 5120240431 username 5120240431 password cyber@5120240431
sip-user display-name 5120240431
quit
gpon-onu 4/4/11
iphost 1 mode pppoe
iphost 1 pppoe username rogerjardim password 02425767029
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/4/12
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 4/4/16
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 4/4/17
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 4/4/23
iphost 1 mode pppoe
iphost 1 pppoe username valdineitavares password 77842413053
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/5/2
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
quit
gpon-onu 4/5/4
iphost 1 mode pppoe
iphost 1 pppoe username claiton_ltda password 02171558000165
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2
iphost 1 service ipv6-global-address-getting-mode dhcp
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 4/5/5
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 4/5/7
iphost 1 mode pppoe
iphost 1 pppoe username paulosilva password 58096140000
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/5/8
iphost 1 mode pppoe
iphost 1 pppoe username laurecindapadilha password 51897350015
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/5/10
iphost 1 mode pppoe
iphost 1 pppoe username juanoliveira password 03798804079
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/5/11
iphost 1 mode pppoe
iphost 1 pppoe username jair_terra password 33038600091
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/5/14
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 4/5/15
iphost 1 vlan 11
quit
gpon-onu 4/5/16
iphost 1 mode pppoe
iphost 1 pppoe username gisele_silva password 82351260015
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/5/17
iphost 1 mode pppoe
iphost 1 pppoe username laertevicente password 60768673020
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
quit
gpon-onu 4/5/18
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
iphost 2 service mode bridge cos 0 portlist 1,2
quit
gpon-onu 4/5/19
iphost 1 mode pppoe
iphost 1 pppoe username juliagarzao password 05078101047
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/5/20
iphost 1 mode pppoe
iphost 1 pppoe username vanessalopes_2ponto password 03945554063
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/5/22
iphost 1 mode pppoe
iphost 1 pppoe username leandro_decker password 03320439910
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/5/23
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 4/5/24
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu 4/5/26
iphost 1 mode pppoe
iphost 1 pppoe username erica_knebel password 02162875020
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
quit
gpon-onu 4/5/27
iphost 1 mode pppoe
iphost 1 pppoe username cristinaborre password 67182038072
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/5/28
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 4/5/30
iphost 1 mode pppoe
iphost 1 pppoe username joelsonmuzikant password 95247599004
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/5/31
iphost 1 mode pppoe
iphost 1 pppoe username marilainedasilva password 47433450068
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/5/38
iphost 1 mode pppoe
iphost 1 pppoe username michelesousa password 07441623359
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/5/40
iphost 1 vlan 11
quit
gpon-onu 4/5/41
iphost 1 mode pppoe
iphost 1 pppoe username cristianferreira password 02854720032
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/5/42
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 4/5/43
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 4/5/47
iphost 1 vlan 11
quit
gpon-onu 4/5/48
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 4/5/49
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 4/5/53
iphost 1 mode pppoe
iphost 1 pppoe username mariasilveira password 00452666031
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/5/56
iphost 1 mode pppoe
iphost 1 pppoe username danielaborghet password 01173181083
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode manual
quit
gpon-onu 4/6/8
iphost 1 mode pppoe
iphost 1 pppoe username juliana_alvessilva password 84034653000
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/6/10
iphost 1 mode pppoe
iphost 1 pppoe username eloisoares_ponto2 password 44552270087
iphost 1 vlan 11
iphost 1 service Internet voip-signalling voip-media
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu uni pots 4/6/10/1
sip-agent sip-proxy sipcyberweb.ligueai.com.br outbound sipcyberweb.ligueai.com.br sip-registrar sipcyberweb.ligueai.com.br primary-dns 0.0.0.0 secondary-dns 0.0.0.0
sip-agent uri-format sip
sip-user aor 5134510299 username 5134510299 password cyber@5134510299
sip-user display-name 5134510299
quit
gpon-onu 4/6/11
iphost 1 mode pppoe
iphost 1 pppoe username paulo_gomessilva password 61633925072
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/6/12
iphost 1 vlan 11
quit
gpon-onu 4/6/13
iphost 1 mode pppoe
iphost 1 pppoe username rafaelchaves password 00829678069
iphost 1 vlan 11
iphost 1 service Internet voip-signalling voip-media
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu uni pots 4/6/13/1
sip-agent sip-proxy sipcyberweb.ligueai.com.br outbound sipcyberweb.ligueai.com.br sip-registrar sipcyberweb.ligueai.com.br primary-dns 127.0.0.1 secondary-dns 0.0.0.0
sip-user aor 5120240411 username 5120240411 password cyber@5120240411
sip-user display-name 5120240411
quit
gpon-onu 4/6/15
iphost 1 vlan 11
quit
gpon-onu 4/7/2
iphost 1 mode pppoe
iphost 1 pppoe username viniciusfreire_2ponto password 03540114050
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/7/3
iphost 1 mode pppoe
iphost 1 pppoe username terezinhasilva password 25864106020
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
quit
gpon-onu 4/7/4
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 4/7/6
iphost 1 mode pppoe
iphost 1 pppoe username daianesantos password 01300344016
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 4/7/8
iphost 1 mode pppoe
iphost 1 pppoe username jeferson_oliveira password 83497862053
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/7/9
iphost 1 mode pppoe
iphost 1 pppoe username amandasbicigo password 03779152037
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/7/10
iphost 1 mode pppoe
iphost 1 pppoe username henriquejasiulzwicz password 43702183817
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/7/13
iphost 1 mode pppoe
iphost 1 pppoe username christiansouza password 03721200080
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/7/14
iphost 1 mode pppoe
iphost 1 pppoe username fabricio_silveira password 03341685030
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/7/17
iphost 1 mode pppoe
iphost 1 pppoe username ruthdeandrade password 87053675068
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/8/3
iphost 1 mode pppoe
iphost 1 pppoe username samirmenegussi password 23949406034
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu uni pots 4/8/3/1
sip-agent uri-format sip
quit
gpon-onu 4/8/4
iphost 1 mode pppoe
iphost 1 pppoe username williancorange password 03557817008
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/8/8
iphost 1 mode pppoe
iphost 1 pppoe username braianpena password 03732928055
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/8/9
iphost 1 mode pppoe
iphost 1 pppoe username guilhermecoelho password 05232187023
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/8/10
iphost 1 mode pppoe
iphost 1 pppoe username danielsilva password 00166018074
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/8/13
iphost 1 mode pppoe
iphost 1 pppoe username alineferreirasilva password 01264436025
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/8/14
iphost 1 vlan 11
quit
gpon-onu 4/8/15
iphost 1 vlan 11
quit
gpon-onu 4/8/16
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 4/8/17
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 4/8/22
iphost 1 mode pppoe
iphost 1 pppoe username vitorgottschalk password 04576873040
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/9/1
iphost 1 mode pppoe
iphost 1 pppoe username solangesedler password 00045076065
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/9/5
iphost 1 mode pppoe
iphost 1 pppoe username marciabehenck2ponto password 69318476000
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/9/11
iphost 1 mode pppoe
iphost 1 pppoe username jeferson_rodrigues password 00638941067
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/9/12
iphost 1 mode pppoe
iphost 1 pppoe username nathansantos password 86384236087
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/9/14
iphost 1 mode pppoe
iphost 1 pppoe username mauromoreira password 63930722020
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/9/18
iphost 1 vlan 11
quit
gpon-onu 4/9/20
iphost 1 mode pppoe
iphost 1 pppoe username josemelo password 64968278004
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/9/21
iphost 1 mode pppoe
iphost 1 pppoe username carloscampos password 87792788091
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/10/1
iphost 1 vlan 11
quit
gpon-onu 4/10/2
iphost 1 mode pppoe
iphost 1 pppoe username evelinoliveira password 04452521037
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/10/5
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 4/10/15
iphost 1 mode pppoe
iphost 1 pppoe username rogerio_amaral password 50463926072
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/10/17
iphost 1 mode pppoe
iphost 1 pppoe username janainesilva password 01147469075
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode manual
quit
gpon-onu 4/11/2
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 4/11/3
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 4/11/5
iphost 1 service ipv6-global-address-getting-mode manual
quit
gpon-onu 4/11/6
iphost 1 mode pppoe
iphost 1 pppoe username marisa_faresin password 02426936010
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/11/9
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 4/11/10
iphost 1 mode pppoe
iphost 1 pppoe username micheleleite password 06694718009
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/11/12
iphost 1 mode pppoe
iphost 1 pppoe username lisandrobecker password 96490900025
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/13/2
iphost 1 mode pppoe
iphost 1 pppoe username lucimarasilva password 98451871020
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/13/4
iphost 1 mode pppoe
iphost 1 pppoe username simonegois_2ponto password 64694127004
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/13/5
iphost 1 service ipv6-global-address-getting-mode manual
quit
gpon-onu 4/13/8
iphost 1 service Internet
quit
gpon-onu 4/13/10
iphost 1 mode pppoe
iphost 1 pppoe username robson_dornelles password 76598306000
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/13/11
iphost 1 mode pppoe
iphost 1 pppoe username dieiniferlopes password 01851473050
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/13/19
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 4/14/3
iphost 1 mode pppoe
iphost 1 pppoe username valdirzaions password 21020221020
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/14/4
iphost 1 mode pppoe
iphost 1 pppoe username vanessalopes password 03945554063
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/14/5
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 4/14/6
iphost 1 mode pppoe
iphost 1 pppoe username grassielepessin password 00769836097
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/14/8
iphost 1 mode pppoe
iphost 1 pppoe username paulo_ponto_3 password 61633925072
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/14/9
iphost 1 vlan 3101
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
quit
gpon-onu 4/14/10
iphost 1 mode pppoe
iphost 1 pppoe username andrielemoraes password 03123678059
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/14/16
iphost 1 vlan 11
quit
gpon-onu 4/14/19
iphost 1 mode pppoe
iphost 1 pppoe username lilianangst password 00561977054
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/15/1
iphost 1 mode pppoe
iphost 1 pppoe username lucia_santos password 64152049049
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/15/2
iphost 1 mode pppoe
iphost 1 pppoe username marcosmarques1 password 92099327068
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/15/3
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 4/15/5
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1,2
iphost 2 vlan 11
iphost 2 service Internet
quit
gpon-onu 4/15/6
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 4/15/7
iphost 1 mode pppoe
iphost 1 pppoe username diegoprestes password 02828143023
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/15/8
iphost 1 mode pppoe
iphost 1 pppoe username felipinamaciel password 11205180087
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/15/11
iphost 1 mode pppoe
iphost 1 pppoe username elviogoncalves password 81324332034
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/15/12
iphost 1 vlan 3102
iphost 1 service Internet
iphost 1 service mode bridge cos 0 portlist 1
iphost 2 vlan 13
iphost 2 service Internet
iphost 2 service mode bridge cos 0 portlist 2
quit
gpon-onu 4/15/13
iphost 1 service Internet
quit
gpon-onu 4/15/23
iphost 1 vlan 11
quit
gpon-onu 4/15/26
iphost 1 vlan 11
iphost 2 vlan 11
quit
gpon-onu 4/16/1
iphost 1 mode pppoe
iphost 1 pppoe username keeperseguranca password 16368598000106
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/16/3
iphost 1 mode pppoe
iphost 1 pppoe username glaucevargas password 97864765068
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/16/4
iphost 1 mode pppoe
iphost 1 pppoe username douglasgoulart password 03300464030
iphost 1 vlan 11
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
gpon-onu 4/16/8
iphost 1 vlan 11
quit
gpon-onu 4/16/9
iphost 1 mode pppoe
iphost 1 pppoe username tatianateixeira password 00499136039
iphost 1 vlan 11
iphost 1 service Internet
iphost 1 service mode route nat enable cos 0 portlist 1,2,3,4 ssidlist 1,5
iphost 1 service ipv6-global-address-getting-mode auto-no-status
quit
!
!command in config_mode
no snmp-server enable traps
no snmp-server view system 1.3.6.1.2.1.1
no snmp-server access initial usm authnopriv
no snmp-server access initialnone usm noauthnopriv
no snmp-server user none
no snmp-server user md5nopriv
no snmp-server user shanopriv
no snmp-server group user none usm
no snmp-server group user md5nopriv usm
no snmp-server group user shanopriv usm
sntp-client
mac-address-table aging-time 120
filter l2-access-list 1 ingress interface ten-gigabitethernet 1/1 statistics
mirror enable
no memory avail-trap slot 3
no memory avail-trap slot 4
ssh2 server
system mtu 9000
spanning-tree mode stp
loopback-detection
loopback-detection down-time infinite
ip route 0.0.0.0 0.0.0.0 10.244.1.253
!
!command in hide_mode
onu-alarm-drop gpon-slot 3 enable
onu-alarm-drop gpon-slot 4 enable
!
POP01_OLT1_SA#
```
