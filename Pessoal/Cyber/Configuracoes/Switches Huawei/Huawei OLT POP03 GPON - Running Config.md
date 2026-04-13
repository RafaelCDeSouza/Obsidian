```swift
User Authentication
(radiusnet@10.244.3.254) User password:


  Huawei Integrated Access Software (MA5800).
  Copyright(C) Huawei Technologies Co., Ltd. 2002-2023. All rights reserved.

  -----------------------------------------------------------------------------
  User last login information:
  -----------------------------------------------------------------------------
  Access Type : SSH
  IP-Address  : 172.18.0.1
  Login  Time : 2025-09-22 09:44:51-03:00
  Logout Time : 2025-09-22 09:45:02-03:00
  -----------------------------------------------------------------------------
  -----------------------------------------------------------------------------
  All user fail login information:
  -----------------------------------------------------------------------------
  Access Type IP-Address           Time                          Login Times
  -----------------------------------------------------------------------------
  SSH         45.235.208.39        2025-09-09 15:20:47-03:00              25
  SSH         45.235.208.49        2025-07-31 10:28:25-03:00              13
  SSH         10.244.254.105       2025-07-18 21:51:36-03:00              13
  SSH         172.18.0.1           2025-08-19 15:34:53-03:00               8
  SSH         45.235.209.140       2025-07-18 19:48:48-03:00               7
  SSH         172.18.10.1          2025-08-19 15:32:04-03:00               3
  SSH         45.235.209.139       2025-07-18 19:21:53-03:00               2
  SSH         10.244.244.238       2024-12-21 12:39:28-03:00               2
  SSH         10.244.254.101       2025-03-06 15:05:46-03:00               1
  -----------------------------------------------------------------------------

POP03_OLT1_GPON_HUAWEI>enable

POP03_OLT1_GPON_HUAWEI#show
                       ^
  % Unknown command, the error locates at '^'

POP03_OLT1_GPON_HUAWEI#config

POP03_OLT1_GPON_HUAWEI(config)#sho?
                               ^
  % Unknown command, the error locates at '^'

POP03_OLT1_GPON_HUAWEI(config)#sho
                               ^
  % Unknown command, the error locates at '^'

POP03_OLT1_GPON_HUAWEI(config)#exit
                               ^
  % Unknown command, the error locates at '^'

POP03_OLT1_GPON_HUAWEI(config)#quit

POP03_OLT1_GPON_HUAWEI#show?
                       ^
  % Unknown command, the error locates at '^'

POP03_OLT1_GPON_HUAWEI#?
---------------------------------------------
  Command of privilege Mode:
---------------------------------------------
active           Enable configuration
alarm            Send simulative alarm
app              Application
autosave         Set automatic saving info
backup           <Group> backup command group
baudrate         Set serial baudrate
client           Users information
command-file     Command file
config           Configuration from terminal
debugging        Enable system debugging functions
dhcp             DHCP
diagnose         Change into diagnose mode
disable          Turn off privileged mode commands
display          Display information
event            <Group> Event command group
file             File system command word
file-server      File server information
ftp              FTP configuration
infoswitch       Set output switch of information terminal
load             Load configuration command
local-user       Local user
loghost          Log server configuration operation
patch            Patch operation
ping             Ping function
pppoe            PPPoE
quit             Exit from current mode and enter prior mode
reboot           Reboot system,active board or standby board
reset            Reset operation
resource         System resources(mem,message,cpu)
return           Enter the privileged mode
rollback         System rollback command
run              Run command file
save             The command of saving immediately
send             Send a message to other tty lines
set              Set the operative time of undo rollback function
ssh              Specify SSH (secure shell) configuration information
super            Modify super password parameters
switch           Switch language mode
syslog           <Group> syslog command group
sysman           Configuration of the management channel
sysname          Set system network name
system           <Group> system command group
terminal         User operate (add, delete, modify attribute)
time             Set the time-stamp between NMS and network element
timezone         Set time zone
tracert          Trace route to host
trap             TRAP
trap-sync        Set trap synchronization switch
undo             Negate a command or set its defaults
vlan             VLAN
---------------------------------------------
  Command of user Mode:
---------------------------------------------
clear            Clear operation
cls              Clear screen
debugging        Enable system debugging functions
display          Display information
echo             Echo
help             Description of the interactive help system
history-command  The session history command
idle-timeout     The interval of terminal timeout
interactive      ML string
lock             Lock the current user terminal interface
mpls             Multiprotocol Label Switching(MPLS)
refresh          Do soft reset
reset            Reset operation
save             Save logfile
scroll           Auto or manual scroll function

POP03_OLT1_GPON_HUAWEI#display ?
---------------------------------------------
  Command of privilege Mode:
---------------------------------------------
aaa                       AAA(Authentication,Authorization,Accounting)
acl                       ACL status and configuration information
affinity-mapping          Affinity mapping
alarm
ancp                      ANCP configuration command
anti-rogueont             Anti rogue ONT
app                       Application
arp                       <Group> ARP command group
arp-detect                Arp Detect
auto-backup               Auto backup
auto-vccv                 Display the auto-vccv information
autounloop                Automatic unloop
bfd                       Specify Bidirectional Forwarding Detection (BFD)
bgp                       BGP information
bind                      Bind IP
bits                      Set BITS attribute
board                     Display information of board
bpdu                      BPDU
bridge-domain             Bridge-domain
buffer                    Display buffer occupancy
build-configuration       Configuration file build mode
bulk-stat                 Set the bulk statistic module
car-group                 Car-Group
car-threshold             Priority CAR threshold
cfm                       Continuity Fault Management
channel-group             TWDM PON channel-group
classification            <Group>ONT traffic classification profile command
                          group
client                    Information of the client established with a
                          connection
command                   Command whose level is modified
command-file              Command file
config                    System config
cos-group-table           CoS-group table
cos-queue-map             802.1p priority and queue map
cos-queue-map-profile     Cos queue map profile
cos-remark                CoS and corresponding remarked CoS
cpu                       Display used percent of cpu
cpu-defend                CPU Defend
cpu-overload-control      Display bucket parameters
current-configuration     Current configuration
data                      Display data synchronization status
dba-profile               <Group>DBA profile configuration command group
dcn                       Data Communication Network
debugging                 Enable system debugging functions
dedicated-net             Dedicated network
default-parameter         Display default configuration parameter value
default-policy            Display default policy setting
dhcp                      DHCP
dhcp-client               All of the interfaces that enabled DHCP client
                          function
dhcp-option82             DHCP-option82
dhcp-server               Show the relevant information of DHCP server
dhcpv6                    DHCPv6 command group
dhcpv6-option             DHCPv6 option command group
dhcpv6-server             Add DHCPv6 server IPv6 addresses
diagnostic-information    System information for diagnosis
dim                       Dynamic integrity measurement
dns                       DNS status and configuration information
dot1ad                    Dot1ad TPID
dot1x                     802.1X
dpbo-esel                 DPBO-ESEL
dscp-to-dscp              DSCP-to-DSCP mapping table
dscp-to-pbits             DSCP mapping table
dual-parenting            Dual parenting
dynamic                   Dynamic user
early-drop                <Group>early-drop command group
ed25519                   Display ED25519 module status and configuration

POP03_OLT1_GPON_HUAWEI#display current-configuration
{ <cr>|include-default<K>|interface<K>|ont<K>|port<K>|section<K>|service-port<K>||<K> }:

  Command:
          display current-configuration
[Active: H901MPSG; Standby: H901MPSG]
[Patch Info: SPC200]
[MA5800V100R022: 5011]
#
timezone GMT- 03:00
#
[pre-config]
  <pre-config>
 board add 0/0 H901PISA
 board add 0/1 H903GPSF
#
[sysmode]
  <sysmode>
 switch vdsl mode to tr129
 xpon mode switch-to profile-mode
 sysmode end
#
[global-config]
  <global-config>
 sysname POP03_OLT1_GPON_HUAWEI
 terminal user-profile name suporte 0 0 00:00:00 00:00:00
 terminal user name buildrun_new_password root *~ud$3b$|+{>/bbDz9IcAA4I'Cn2$GB0\6O~<a<omR3ZYs+&2XTYRSXZl^TyBOl/:T+&%$* 7 0000:00:00:00:00:00 2024:01:06:14:09:40 root 1 first-login-info 0 self-changed-password 1 "-----"
 terminal user name buildrun_new_password radiusnet *~uc$3b$@9V1K3v&[$-wKk5H#uO*$wJe]94X_oBb9\$Y[5e_Fr@scI'0#u&"jICKM^Z4A$* 0 2000:01:06:20:19:23 2000:01:06:20:20:27 root 2 first-login-info 0 self-changed-password 1 "-----"
 terminal user name buildrun_new_password zandona *~uc$3b$;9"<D`J&%#it;U3k-@1A$xhXt+b,#EJb]M97jYJ&,G1_J>(fGcA"n6K$wxA%%$* 0 2000:01:14:04:54:29 2023:12:21:13:18:50 root 3 first-login-info 1 self-changed-password 0 "-----"
 terminal user name buildrun_new_password suporte *~ub$3b$v~I'BuG~P/v*]d7cz#LN$dkd95`WI#8eEsf%tP@OD-Qj'~Qjii&BgoMLlEbHU$* 0 2025:07:28:08:49:19 2025:07:28:08:55:41 suporte 4 first-login-info 0 self-changed-password 1 "suporte leitura"
 system modify logon password enable all
 system user password security mode enhance
 system user password security-length 12
 terminal user name history_password root *~ud$3b$Q*S@+_=$A+|OlV;J%j7<$=0QW6[.i)0B5G=%/Ng;IlOGQ!bNQ'UV:|F2!/.(@$* *~ud$3b$|&JG0FK<1K./+b$K}T*Z$w$X)KPJfWL}m99!xV_08R!'WT`peBXZR{W$$1Ns$$* *~ud$3b$9}lq0(!]4=R,VF::X.BN$p"AGEy>e_,OJRBN3gMND4r{wE~FY#B}WBZHh/QnV$* *~ud$3b$U<h98l[EOGXTda((bFNY$FEU37VE^KYyx+BE@rJ)~/g4]#2Z]j:'!kA3D5617$*
 terminal user name history_password radiusnet *~uc$3b$zQY@~o9l:49}5U0K]HwO$L~z^6DG0\(Y!H'#>6r%*$eHo;kFsp1^6,^6X]G!,$*
 terminal user name history_password zandona *~uc$3b$|g8$K-nszJ{&YFYuW*(I$5(aKRH/k%Md0]aOJb04+#ATR59KQ[3N#<T%B.=]2$* *~uc$3b$/plUBwz(t52lbY!wiT#N$KP>aY{luzGyMR<:M^-pSh$!zYf(`0;,SYpKAbbF/$*
 terminal user name history_password suporte *~ub$3b$!M=zI8#0[$,NW^G{=3I($u{`(,Df]DQBM&.7C|o3@#-5u=0n`g7\:(vX@'/CQ$*
 ssh client key-exchange sftp dh_group_exchange_sha256 curve25519_sha256
 ssh client dh-exchange sftp min-len 2048
 xpon ont optical-ddm quick-query disable
 dba-profile add profile-id 30 profile-name "dba-profile_30" type4 max 1024000
 ont-srvprofile gpon profile-id 1 profile-name "SRVPROFILE_ROUTER"
  ont-port pots 1 eth 2
  port vlan eth 1 transparent
  port vlan eth 2 transparent
  port vlan iphost translation 31 user-vlan 31
  commit
 ont-srvprofile gpon profile-id 3 profile-name "SRVPROFILE3_ROUTER"
  ont-port pots 1 eth 2
  port vlan eth 1 transparent
  port vlan eth 2 transparent
  port vlan iphost translation 161 user-vlan 161
  commit
 ont-srvprofile gpon profile-id 30 profile-name "SRVPROFILE_BRIDGE_30"
  ont-port eth 4
  port vlan eth 1 translation 31 user-vlan 31
  commit
 ont-srvprofile gpon profile-id 31 profile-name "SRVPROFILE_BRIDGE_31"
  ont-port eth 1
  port vlan eth 1 translation 31 user-vlan 31
  commit
 ont-srvprofile gpon profile-id 1157 profile-name "SRVPROFILE_BRIDGE_1157"
  ont-port eth 1
  port vlan eth 1 translation 1157 user-vlan 1157
  commit
 ont-srvprofile gpon profile-id 1257 profile-name "SRVPROFILE_BRIDGE_1257"
  ont-port eth 1
  port vlan eth 1 translation 1257 user-vlan 1257
  commit
 ont-srvprofile gpon profile-id 3256 profile-name "SRVPROFILE_BRIDGE_V3256"
  ont-port eth 1
  port vlan eth 1 translation 3256 user-vlan 3256
  commit
 ont-lineprofile gpon profile-id 0 profile-name "line-profile_default_0"
  omcc encrypt off
  tcont 0 dba-profile-id 2
  tcont 1 dba-profile-id 0
  commit
  quit
 ont-lineprofile gpon profile-id 1 profile-name "LINE_PROFILE_1"
  omcc encrypt on
  tcont 1 dba-profile-id 30
  gem add 1 eth tcont 1 encrypt on
  gem mapping 1 0 vlan 31
  commit
  quit
 ont-lineprofile gpon profile-id 3 profile-name "LINE_PROFILE_3"
  omcc encrypt on
  tcont 1 dba-profile-id 30
  gem add 161 eth tcont 1 encrypt on
  gem mapping 161 0 vlan 161
  commit
  quit
 ont-lineprofile gpon profile-id 30 profile-name "LINE_PROFILE_30"
  omcc encrypt off
  tcont 4 dba-profile-id 30
  gem add 31 eth tcont 4 encrypt on
  gem mapping 31 0 vlan 31
  commit
  quit
 ont-lineprofile gpon profile-id 31 profile-name "LINE_PROFILE_31"
  omcc encrypt on
  tcont 1 dba-profile-id 30
  gem add 31 eth tcont 1 encrypt on
  gem mapping 31 0 vlan 31
  commit
  quit
 ont-lineprofile gpon profile-id 1157 profile-name "LINE_PROFILE_1157"
  omcc encrypt on
  tcont 1 dba-profile-id 30
  gem add 157 eth tcont 1 encrypt on
  gem mapping 157 0 vlan 1157
  commit
  quit
 ont-lineprofile gpon profile-id 1257 profile-name "LINE_PROFILE_1257"
  omcc encrypt on
  tcont 1 dba-profile-id 30
  gem add 257 eth tcont 1 encrypt on
  gem mapping 257 0 vlan 1257
  commit
  quit
 ont-lineprofile gpon profile-id 3256 profile-name "LINE_PROFILE_V3256"
  omcc encrypt on
  tcont 1 dba-profile-id 30
  gem add 256 eth tcont 1 encrypt on
  gem mapping 256 0 vlan 3256
  commit
  quit
#
[device-config]
  <device-config>
 board add standby sub0 CPCG
 system hardware-recovery disable serial-link
#
[public-config]
  <public-config>
 monitor uplink-port traffic port 0/3/0
 monitor uplink-port traffic port 0/3/1
 monitor uplink-port traffic port 0/3/2
 monitor uplink-port traffic port 0/3/3
 monitor uplink-port traffic port 0/4/0
 monitor uplink-port traffic port 0/4/1
 monitor uplink-port traffic port 0/4/2
 monitor uplink-port traffic port 0/4/3
 sysman service telnet disable
 sysman service dhcp-relay disable
 sysman service dhcpv6-relay disable
#
[dnet-config]
  <dnet-config>
 dedicated-net dedicated-net-id 0 dedicated-net-name "DNet-0"
#
[vlan-config]
  <vlan-config>
 vlan 30 to 31 smart
 vlan 90 to 91 super
 vlan 160 to 161 smart
 vlan 1109 super
 vlan 1157 smart
 vlan 1257 smart
 vlan 3256 smart
 vlan desc 30 description "VLAN30_POP03_OLT1_GERENCIA"
 vlan desc 31 description "VLAN31_POP03_OLT1_PPPOE"
 vlan desc 1109 description "VLAN1109_SW1POP03_SW1POP09_OSPF"
 vlan desc 3256 description "VLAN_3256_TRANSP_TELIUM_DIVERSOS"
 port vlan 30 to 31 0/3 0
 port vlan 90 to 91 0/3 0
 port vlan 90 to 91 0/3 1
 port vlan 160 to 161 0/3 0
 port vlan 160 to 161 0/3 1
 port vlan 1109 0/3 0
 port vlan 1109 0/3 1
 port vlan 1157 0/3 0
 port vlan 1257 0/3 0
 port vlan 3256 0/3 0
 port vlan 3256 0/3 1
#
[mpu]
  <mpu-0/3>
interface mpu 0/3
 auto-neg 0 disable
 speed 0 10000
 auto-neg 1 disable
 speed 1 10000
 auto-neg 2 enable
 speed 2 1000
 auto-neg 3 enable
 speed 3 1000
#
  <mpu-0/4>
interface mpu 0/4
 auto-neg 0 disable
 speed 0 10000
 auto-neg 1 disable
 speed 1 10000
 auto-neg 2 enable
 speed 2 1000
 auto-neg 3 enable
 speed 3 1000
#
[gpon]
  <gpon-0/1>
 interface gpon 0/1
 port 0 ont-auto-find enable
 port 0 ont-password-renew extra 1440
 port 1 ont-auto-find enable
 port 1 ont-password-renew extra 1440
 port 2 ont-auto-find enable
 port 2 ont-password-renew extra 1440
 port 3 ont-auto-find enable
 port 3 ont-password-renew extra 1440
 port 4 ont-auto-find enable
 port 4 ont-password-renew extra 1440
 port 5 ont-auto-find enable
 port 5 ont-password-renew extra 1440
 port 6 ont-auto-find enable
 port 6 ont-password-renew extra 1440
 port 7 ont-auto-find enable
 port 7 ont-password-renew extra 1440
 port 8 ont-auto-find enable
 port 8 ont-password-renew extra 1440
 port 9 ont-auto-find enable
 port 9 ont-password-renew extra 1440
 port 10 ont-auto-find enable
 port 10 ont-password-renew extra 1440
 port 11 ont-auto-find enable
 port 11 ont-password-renew extra 1440
 port 12 ont-auto-find enable
 port 12 ont-password-renew extra 1440
 port 13 ont-auto-find enable
 port 13 ont-password-renew extra 1440
 port 14 ont-auto-find enable
 port 14 ont-password-renew extra 1440
 port 15 ont-auto-find enable
 port 15 ont-password-renew extra 1440
 ont add 0 0 sn-auth "49544253321C5311" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3957_luishenrique_dc5d"
 ont add 0 1 sn-auth "48575443F5E52AAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4463_elaine_brito_8769"
 ont add 0 2 sn-auth "48575443F5E61EAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3517_valdecirsouza_3493"
 ont add 0 3 sn-auth "48575443F5E743AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "12165_leandro_oliveira_a665"
 ont add 0 4 sn-auth "5A4E54532C201285" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "131_leandroporto_f4c2"
 ont add 0 5 sn-auth "48575443F2FF75AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13367_leandroporto1_fd5b"
 ont add 0 6 sn-auth "485754430F6FB5B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "9487_valescasilva_905c"
 ont add 0 7 sn-auth "49544253441CB711" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3529_carlospinto_790a"
 ont add 0 8 sn-auth "495442530D7C8A16" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "6109_maicon_marques1_e65a"
 ont add 0 9 sn-auth "48575443F2EE4AAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13563_milenasantos_2ponto_f0a8"
 ont add 0 10 sn-auth "48575443F2E8CDAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4425_adrianacosta_ebf3"
 ont add 0 11 sn-auth "48575443F2F31DAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13689_paulogiehl_4b57"
 ont add 0 12 sn-auth "5A4E54532C0618A0" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "1945_maluferreira_e284"
 ont add 0 13 sn-auth "485754430F64D5B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16173_jeffersonfabra_b74e"
 ont add 0 14 sn-auth "49544253E8F6E46A" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3765_geslaumoraes_51d6"
 ont add 0 15 sn-auth "495442530D2B859D" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "91_elisandrosilva_12d7"
 ont add 0 16 sn-auth "48575443F5E53CAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3483_danielacosta_6b90"
 ont add 0 17 sn-auth "48575443F5E7E4AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13769_fernandaalmeida_2ponto_1700"
 ont add 0 18 sn-auth "48575443F2EBB8AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13969_camila_carvalho_2493"
 ont add 0 19 sn-auth "48575443F2FF52AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13111_mariangelabinttencurt_30bb"
 ont add 0 20 sn-auth "48575443F5E7B6AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "15325_leticiapedrozo_dcc7"
 ont add 0 21 sn-auth "48575443F5E5ABAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "14411_vitoroliveira_41cf"
 ont add 0 22 sn-auth "485754430F6210B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4255_jefersonventurini_c9bc"
 ont add 0 23 sn-auth "485754430F695CB1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "9555_renatosilva_36c8"
 ont add 0 24 sn-auth "495442532CA52E58" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3620_raquel_dasilva_fa32"
 ont add 0 25 sn-auth "5A4E54533F909F6D" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "502_brunalatorre_ab44"
 ont add 0 26 sn-auth "495442530D2B85A7" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4403_adrianasoares_48a1"
 ont add 0 27 sn-auth "49544253CFCB79B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "9371_roselainepereira_f650"
 ont add 0 28 sn-auth "4954425344389152" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13013_williamsilva_costa_5c76"
 ont add 0 29 sn-auth "5A4E54533F81F695" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10633_jussarasilva_c123"
 ont add 0 30 sn-auth "5A4E54533F81F2FF" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "826_carinemelo_9225"
 ont add 0 31 sn-auth "49544253E8F6E3DC" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "9843_inesmartins_d433"
 ont add 0 32 sn-auth "544B3031E6371C9E" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4227_maria_camargo_394e"
 ont add 0 33 sn-auth "495442530D2B8639" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "8287_dieisonoliveira_b215"
 ont add 0 34 sn-auth "465354540000E5A7" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "346_valdineisilva_d173"
 ont add 0 35 sn-auth "485754431D08C89B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "6037_angela_lacerda_b548"
 ont add 0 36 sn-auth "465354540000DBAD" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3369_fernandaalmeida_92fc"
 ont add 0 37 sn-auth "485754431DC00D9B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3951_jonasfantin_e15d"
 ont add 0 38 sn-auth "48575443F2F072AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "551_suelypereira_ac05"
 ont add 0 41 sn-auth "48575443F5E803AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17047_emilymendes_155d"
 ont add 0 42 sn-auth "4954425332B6F516" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "REGINALDO_SOUZA_ESCOBAR"
 ont add 0 43 sn-auth "4954425332B5817C" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Daniela Araujo da Costa"
 ont add 0 44 sn-auth "465354540000EDD5" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16565_kelvinsilva_67b6"
 ont add 0 103 sn-auth "49544253327916B3" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "jonas_santin"
 ont add 0 106 sn-auth "49544253441CBA23" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Leandro_da_Silva_de_Oliveira"
 ont add 0 107 sn-auth "49544253321D58A1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Celio da Silva Ferreira"
 ont add 0 108 sn-auth "495442532C9F73C2" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "DESCONHECIDO"
 ont add 0 110 sn-auth "495442535F554F98" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "GiovanedosSantosMelo"
 ont add 0 112 sn-auth "495442530D87DD20" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Maria de Lurdes Inacio Azevedo"
 ont add 0 113 sn-auth "5A4E54532CEB0B7F" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Jeferson Terres Venturini"
 ont add 0 114 sn-auth "5A4E54532C2149DB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Domingas_Salete_Carvalho"
 ont add 0 115 sn-auth "495442532CBEE5AD" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "desconhecido"
 ont add 0 116 sn-auth "495442538B6A009F" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Valmiria Elicher"
 ont add 0 117 sn-auth "49544253321C9FB5" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Maicon Anderson Fragoso Marques"
 ont add 0 118 sn-auth "49544253321E129B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Adriana_Peres _da_Rocha _Costa"
 ont add 0 119 sn-auth "49544253F17BEAC3" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "DESCONHECIDO"
 ont add 0 120 sn-auth "4954425332B40DFD" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "marcelotrentin"
 ont add 0 121 sn-auth "49544253321C746E" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "keniasilva"
 ont add 0 122 sn-auth "49544253443890C0" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "mariangelabinttencurt"
 ont add 0 123 sn-auth "495442533271E31B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "suelypereira"
 ont add 0 124 sn-auth "49544253CFD73D15" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "valescasilva"
 ont add 0 125 sn-auth "495442532CE9E723" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "ivanademelo"
 ont add 0 127 sn-auth "5A4E54532C173702" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "cleciogil"
 ont add 1 0 sn-auth "48575443F5E7E3AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3826_mariareis_0619"
 ont add 1 1 sn-auth "46535454B81CEFB6" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13909_joserobertosilva_772f"
 ont add 1 2 sn-auth "485754430F5FE9B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "96_leandrogoncalves_9c2d"
 ont add 1 3 sn-auth "485754430F6EC3B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "1341_elizabetesilva_2788"
 ont add 1 4 sn-auth "48575443F5E80AAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13731_carlasilva__8a30"
 ont add 1 5 sn-auth "495442530A5ADD16" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "15073_isabelleoliveira_2331"
 ont add 1 6 sn-auth "495442532CEA2E0B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "2509_jessicaalves_fa4a"
 ont add 1 7 sn-auth "495442532CBD7634" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "11845_viviane_oliveira__359b"
 ont add 1 8 sn-auth "49544253F1B09022" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13081_carlossouza_5bca"
 ont add 1 9 sn-auth "48575443F5E7C2AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "15751_lilianribeiro_2abe"
 ont add 1 10 sn-auth "495442532C6E1281" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "1433_marciorodriguess_8e3d"
 ont add 1 11 sn-auth "495442530D65E484" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "7129_luizgomes_17dd"
 ont add 1 12 sn-auth "485754430F6FB0B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3539_sandra_oliveira_1073"
 ont add 1 14 sn-auth "4954425344389024" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13083_leticiacandido_9bb3"
 ont add 1 15 sn-auth "495442530D286EB9" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4893_jhonataoliveira_4e7a"
 ont add 1 16 sn-auth "495442532CEA2D6D" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10565_andre_silva_d883"
 ont add 1 17 sn-auth "5A4E54538C9A3A5B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "11905_rosanesouza_8ae6"
 ont add 1 18 sn-auth "49544253440E9182" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "85_angelasilva_6219"
 ont add 1 19 sn-auth "485754430F64D8B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16551_rafaelpacheco_14a2"
 ont add 1 20 sn-auth "46535454000074F2" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "333_elisangelamorais_adc0"
 ont add 1 21 sn-auth "48575443F5E86EAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "11289_dionataborges_8530"
 ont add 1 22 sn-auth "48575443F5E618AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10081_danielbotelho_f94f"
 ont add 1 23 sn-auth "48575443F5E4F2AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10875_lucineiasantos_f1c7"
 ont add 1 24 sn-auth "48575443F5E7C9AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "1469_vanessa_vecchio_62ca"
 ont add 1 25 sn-auth "48575443F5E7BBAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "12277_terezinhafortunato_a734"
 ont add 1 26 sn-auth "485754430F6D02B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16409_nubiareis_dc19"
 ont add 1 27 sn-auth "48575443F2FC1BAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3490_danielpacheco_92a6"
 ont add 1 28 sn-auth "48575443F5E525AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16121_franciscalopes_62d0"
 ont add 1 29 sn-auth "49544253E8F8D36F" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "110_rafaelbattisti_618f"
 ont add 1 30 sn-auth "495442530D5809A6" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13227_elainemartins_1325"
 ont add 1 31 sn-auth "48575443594B7EB1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10525_francianesantos_c74f"
 ont add 1 32 sn-auth "49544253CFD73D31" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3684_walterpazze_e499"
 ont add 1 33 sn-auth "48575443F138C4B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "60_paulolucas_6e5a"
 ont add 1 34 sn-auth "5A4E54533F81F091" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "1977_ligia_santos_4485"
 ont add 1 35 sn-auth "49544253440E9188" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "12641_andreiasilva_ed56"
 ont add 1 36 sn-auth "49544253CFAD19AE" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3290_laionelknevitz_df8e"
 ont add 1 37 sn-auth "48575443F2FB87AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16387_taismoraes_c690"
 ont add 1 38 sn-auth "495442530A6E7168" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "14379_evangelaoliveira_8696"
 ont add 1 39 sn-auth "485754430F6A79B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16593_elianealves_8d54"
 ont add 1 40 sn-auth "46535454000068D7" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13161_camilaheppe_6000"
 ont add 1 41 sn-auth "485754430F6497B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17281_zilmaroliveira_2ponto_b0ad"
 ont add 1 42 sn-auth "485754430F65B5B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17413_shayanepacheco_dffc"
 ont add 1 43 sn-auth "48575443F5E5CFAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3334_wesleybrito_9865"
 ont add 1 44 sn-auth "465354540000DC38" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17535_marcooliveira_9ef3"
 ont add 1 45 sn-auth "48575443312732B2" omci ont-lineprofile-id 31 ont-srvprofile-id 1 desc "17563_cleberleal_73ad"
 ont add 1 46 sn-auth "4857544331281DB2" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17845_alexsandrofreitas_6eeb"
 ont add 1 47 sn-auth "485754433127CFB2" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3366_marilia_ferreiraoliveira_357d"
 ont add 1 48 sn-auth "465354540000DADA" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17629_claudiomiropeck_57ef"
 ont add 2 0 sn-auth "495442538B69A8FB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5895_lisiane_barbosa_d8fe"
 ont add 2 1 sn-auth "495442532C9E0724" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "1387_juliodias_5d66"
 ont add 2 2 sn-auth "5A4E54538C808A44" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "8955_silvanacorrea_silva_3417"
 ont add 2 3 sn-auth "5A4E54533FEFC305" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "11705_tassianealeixo_d202"
 ont add 2 4 sn-auth "485754430F74D1B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "14043_jueferson_santos_d406"
 ont add 2 5 sn-auth "495442530D28716F" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3055_veramachado_a2b1"
 ont add 2 6 sn-auth "48575443F5DE87AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4023_jefersonstoquetti_3fb2"
 ont add 2 7 sn-auth "495442530D2B808F" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10027_katielesilva_64b4"
 ont add 2 8 sn-auth "49544253E8F801E6" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "2591_simonedealmeida_6bc6"
 ont add 2 9 sn-auth "5A4E54533F81F03F" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5633_jairaladimpereira_53f8"
 ont add 2 10 sn-auth "4653545400007372" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "1113_karinesilva_4b7d"
 ont add 2 11 sn-auth "49544253321B5B64" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5365_silvanamelos_811a"
 ont add 2 14 sn-auth "48575443F5E5CCAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3357_carendasilva_1102"
 ont add 2 15 sn-auth "485754431D165B9B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "15583_micheledasilva_cee6"
 ont add 2 16 sn-auth "48575443F5E5CDAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5545_carla_garcia_bb54"
 ont add 2 17 sn-auth "48575443F5E7F7AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16065_zilmaroliveira_4474"
 ont add 2 18 sn-auth "48575443F2F74BAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3348_brunildasilva_c95a"
 ont add 2 19 sn-auth "465354540000759D" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4857_vanessadasilva_002f"
 ont add 2 20 sn-auth "495442530A6C8D1E" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3764_osorioneto_d3f0"
 ont add 2 21 sn-auth "4954425344389124" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "1086_tania_machado_bd3f"
 ont add 2 22 sn-auth "495442530A6E4142" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "83_antoniovidaleti_842b"
 ont add 2 23 sn-auth "495442530D2B8601" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "849_lucassilva_5b39"
 ont add 2 24 sn-auth "48575443F5E5DBAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "2715_veronicasilva_be22"
 ont add 2 25 sn-auth "4954425332791977" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3882_francianeviega_d04f"
 ont add 2 26 sn-auth "4954425332B62BF5" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "113_joaogomes_8334"
 ont add 2 28 sn-auth "485754430F66EEB1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "1641_celsouilsoares_fd0f"
 ont add 2 29 sn-auth "5A4E54532C9F73D0" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10849_alinesilva__7901"
 ont add 2 30 sn-auth "48575443F5E521AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "11241_larissasilva_72a8"
 ont add 2 31 sn-auth "48575443D22DFCB1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "839_elisangelapinto_dcee"
 ont add 2 32 sn-auth "48575443F5E6AAAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "12663_vilkaviviana_0532"
 ont add 2 33 sn-auth "49544253E8F6E377" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5331_reginaldosantos_d09e"
 ont add 2 34 sn-auth "5A4E54532C17370C" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "1041_maria_souza_e603"
 ont add 2 35 sn-auth "48575443F3035CAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "801_fabianasouza_bca6"
 ont add 2 36 sn-auth "485754431D6E449B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "6813_richardmauricio_17c2"
 ont add 2 37 sn-auth "485754430F6D5EB1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16313_saymon_lima_9e18"
 ont add 2 38 sn-auth "48575443F5E770AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "12045_jonas_avila_722b"
 ont add 2 39 sn-auth "5A4E54532C173B62" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4573_flavia_pacheco_363b"
 ont add 2 40 sn-auth "495442533271C617" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5105_silviosilva_e91a"
 ont add 2 41 sn-auth "4954425344A0FB49" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4203_mateus_oliveira_8852"
 ont add 2 42 sn-auth "5A4E54538C77F826" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5433_mirianline_silveira_3b45"
 ont add 2 43 sn-auth "495442533271E333" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5411_daiane_iendrasiak_de84"
 ont add 2 44 sn-auth "5A4E54532C061892" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17897_silviadasilva_3b10"
 ont add 2 45 sn-auth "48575443F5E79FAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5267_vera_marques_b114"
 ont add 2 46 sn-auth "495442538B699171" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5305_nathasha_nascimento_97b8"
 ont add 2 47 sn-auth "48575443F2FDCAAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16165_renatacorreia_fa88"
 ont add 2 48 sn-auth "48575443F2F6D9AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5035_tainarasilva_018d"
 ont add 2 49 sn-auth "485754430F6DB6B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16397_evertonmichels_a96d"
 ont add 2 50 sn-auth "49544253321BF2B4" omci ont-lineprofile-id 31 ont-srvprofile-id 1 desc "marliholscher"
 ont add 2 51 sn-auth "4954425344389260" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "9075_marceloherber_3320"
 ont add 2 52 sn-auth "48575443312829B2" omci ont-lineprofile-id 31 ont-srvprofile-id 1 desc "17327_fabiele_silva_013f"
 ont add 2 53 sn-auth "465354540000E5A0" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "12201_marlijesus_bb5f"
 ont add 3 0 sn-auth "48575443B37583B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "11017"
 ont add 3 1 sn-auth "48575443616461B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "12585"
 ont add 3 2 sn-auth "495442532CBEE5B3" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "2207_leonardodefreitas_ac1f"
 ont add 3 3 sn-auth "495442533252DFC6" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "luissantosdasilva"
 ont add 3 4 sn-auth "5A4E54532C0F7814" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "7785_gabriela_santos_fa6f"
 ont add 3 5 sn-auth "48575443F5E7DFAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "15655_robersonsantos_3d7d"
 ont add 3 6 sn-auth "485754431DEB3C9B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "12653"
 ont add 3 7 sn-auth "49544253443EA0A3" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "12815_ericafogaca_6b5b"
 ont add 3 8 sn-auth "49544253F19C42D2" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "2031_celestesilva_0118"
 ont add 3 9 sn-auth "49544253441CB669" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3415_stefaniemagalhaes_b051"
 ont add 3 10 sn-auth "5A4E54533FFA1113" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5315_tatiane_cardoso_fc94"
 ont add 3 11 sn-auth "5A4E54532C48CEBB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "6895_maiarasantos_15b1"
 ont add 3 12 sn-auth "48575443F5E61CAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "943_cristianorodrigues_60bf"
 ont add 3 13 sn-auth "495442532CBEE269" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "167_alexoliveira_45c8"
 ont add 3 14 sn-auth "495442530D7C8A44" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "11989_davisilva_e326"
 ont add 3 15 sn-auth "485754430F66D1B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17381_jeannpereira_77a8"
 ont add 3 16 sn-auth "49544253440DAAB3" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "11467_mayconlugcheer_f5d7"
 ont add 3 17 sn-auth "485754430F750DB1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3021_maribelsantos_d78e"
 ont add 3 18 sn-auth "49544253440E9186" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3125_rafaelirribarem_cb2c"
 ont add 3 19 sn-auth "495442533272E958" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4921_greice_jarozeski_9bcb"
 ont add 3 20 sn-auth "495442535F79CB0B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "9597_joaosilva_8020"
 ont add 3 21 sn-auth "485754430F5E6CB1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3019_merysantos_e84b"
 ont add 3 22 sn-auth "495442532CBEA39B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3531_magdasilva_79d4"
 ont add 3 23 sn-auth "495442530D5F35BA" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3141_matheuscoppola_1693"
 ont add 3 24 sn-auth "485754430F5EFDB1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16291_anselmolopes_e95e"
 ont add 3 25 sn-auth "48575443F5E5C5AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "14615_carinabarreto_d0fe"
 ont add 3 27 sn-auth "485754430F6270B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16465_elencandido_1fa7"
 ont add 3 28 sn-auth "485754430F5D8EB1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16477_simonepaz_f567"
 ont add 3 29 sn-auth "485754430F6B9BB1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17129_dyovanamilitor_4861"
 ont add 3 46 sn-auth "49544253321B5AA7" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "GILNEI_PIRES_DA_SILVA"
 ont add 3 47 sn-auth "5A4E54532C0F7812" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Maiara do Nascimento Sendon_ponto2"
 ont add 3 48 sn-auth "49544253E8DE6797" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Maiara_do_Nascimento_Sendon_ponto1"
 ont add 3 70 sn-auth "49544253E8DE698F" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "daiane_soares"
 ont add 5 0 sn-auth "49544253441CB745" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "12499_josegrigorio_b7b6"
 ont add 5 1 sn-auth "49544253441CBA21" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "8937_aline_espindula_9183"
 ont add 5 2 sn-auth "495442530A6E7052" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "14493_jorgeribeiro_68cc"
 ont add 5 3 sn-auth "485754430F69F8B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "9369_andersonbastos_a4ae"
 ont add 5 4 sn-auth "495442530D7BFD94" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "310_elizabethsilva_2504"
 ont add 5 5 sn-auth "495442538B69D8CD" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17189_kamilymachado_ca64"
 ont add 5 6 sn-auth "5A4E54532C14BC7D" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "11963_benjaminalmeida_c313"
 ont add 5 7 sn-auth "4954425344388EF0" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "869_danilogabbi_98e7"
 ont add 5 8 sn-auth "495442535F79CA91" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10947_douglaskrol_7046"
 ont add 5 9 sn-auth "49544253E8F6E455" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4963_michelboas_55b9"
 ont add 5 10 sn-auth "495442532C1752C6" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "6295_mariafraga_1d2d"
 ont add 5 11 sn-auth "5A4E54532C0BEB1E" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5847_giovanni_andrade_f308"
 ont add 5 12 sn-auth "495442532CB7FDC3" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "7081_edimarsouza_ca1d"
 ont add 5 13 sn-auth "495442532CBEE5A5" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "2657_cristianadejesus_a139"
 ont add 5 14 sn-auth "495442538B6A53A9" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5341_cristiankuhn_4452"
 ont add 5 15 sn-auth "5A4E54532CBD7996" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "923_gilmarchaves_2062"
 ont add 5 16 sn-auth "495442530D2B85FB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "2907_tatianeoliveira_d31a"
 ont add 5 17 sn-auth "495442532CBF7D01" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "1865_luizluz_854c"
 ont add 5 18 sn-auth "5A4E54532C173B52" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "1721_guaracimachado_38e6"
 ont add 5 19 sn-auth "465354540000586D" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "8845_soniacosta_035c"
 ont add 5 20 sn-auth "5A4E54532C1D4AA4" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "11245_marlibohrer_9dcf"
 ont add 5 21 sn-auth "5A4E54532C7178D5" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10801_alexsandrobarboza_513e"
 ont add 5 22 sn-auth "495442530D54AE16" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3558_priscilabarcellos_cfc5"
 ont add 5 23 sn-auth "495442532C6E1379" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "707_davimachado_7d74"
 ont add 5 24 sn-auth "495442532CBEA3A1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3738_silas_demoraes_2ffd"
 ont add 5 26 sn-auth "49544253324851D7" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4567_adao_martins_d333"
 ont add 5 27 sn-auth "485754430F6B4CB1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "12295_vilsonschimitz_911d"
 ont add 5 28 sn-auth "485754430F6B4FB1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "2205_fernanda_cardoso_5288"
 ont add 5 29 sn-auth "5A4E54532C061898" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "896_fernandacicelia_32ee"
 ont add 5 30 sn-auth "4954425332732716" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5467_taciane_santos_1881"
 ont add 5 31 sn-auth "4954425344388EFC" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3261_rubemwainaeme_c67a"
 ont add 5 32 sn-auth "495442538B69D7BF" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "2179_joaodossantos_79a9"
 ont add 5 33 sn-auth "5A4E54532CB80057" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10723_mauricio_lopes_2c1b"
 ont add 5 34 sn-auth "4648544301061341" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4123_caren_santos_f97d"
 ont add 5 35 sn-auth "495442530D2B85D1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "2751_joaopohlmann_b5a3"
 ont add 5 36 sn-auth "49544253326A5B28" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "2283_edersondacosta_6887"
 ont add 5 37 sn-auth "49544253443DB9AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "12961_stefhanisantos_1bcb"
 ont add 5 38 sn-auth "49544253E8F99DD3" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4969_jussara_rosa_e6db"
 ont add 5 39 sn-auth "5A4E54532C061882" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "170_cesarjunior_be14"
 ont add 5 40 sn-auth "5A4E54533F90B451" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "428_diegocenteno_7b44"
 ont add 5 41 sn-auth "46535454000066AA" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3023_marcosferreira_2ef0"
 ont add 5 42 sn-auth "495442530A6E708C" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5295_andressarosa_e167"
 ont add 5 43 sn-auth "48575443F2FB08AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "6063_ivaniwanzinck_b9ef"
 ont add 5 44 sn-auth "49544253CF17F9DA" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10245_vilsonverardi_45d2"
 ont add 5 45 sn-auth "495442530D7BFD50" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3521_daiane_castro_f94b"
 ont add 5 46 sn-auth "495442532C9ED030" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "956_marceloalmeida_acb9"
 ont add 5 47 sn-auth "495442532CE890ED" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "11981_emersonandrade_5f50"
 ont add 5 48 sn-auth "49544253443890BC" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4511_andre_ott_1210"
 ont add 5 49 sn-auth "5A4E54532C06188E" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "906_marcosrodrigues_c4aa"
 ont add 5 50 sn-auth "5A4E54532C12B201" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "7161_nicoleantoni_7783"
 ont add 5 51 sn-auth "46535454000075A3" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "910_alcioneilima_3569"
 ont add 5 52 sn-auth "5A4E54532C17389E" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5441_aldacirsouza_dccd"
 ont add 5 53 sn-auth "5A4E54533F81F0A3" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10605_darcisilva_8fb9"
 ont add 5 54 sn-auth "485754430F637EB1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3191_suelisouza_5e01"
 ont add 5 55 sn-auth "495442530D65E662" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "6755_rafaelrodrigues_f55e"
 ont add 5 56 sn-auth "4954425344A0FBA9" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16061_arionvieira_a7f0"
 ont add 5 57 sn-auth "4857544331292BB2" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "177_paulobruno_a481"
 ont add 5 58 sn-auth "5A4E54533F90B3FD" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "168_vivianlima_4202"
 ont add 5 59 sn-auth "46535454000061F0" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10869_michelesilva_f3f9"
 ont add 5 60 sn-auth "485754430F618CB1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "2849_maxflores_fb7b"
 ont add 5 61 sn-auth "495442538B6A5F4F" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10517_viniciussiqueira_efa4"
 ont add 5 62 sn-auth "48575443F5E5AFAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4437_carlos_specht_d737"
 ont add 5 63 sn-auth "495442533220443A" omci ont-lineprofile-id 31 ont-srvprofile-id 1 desc "6255_lismazzei_d044"
 ont add 5 64 sn-auth "49544253321E12AD" omci ont-lineprofile-id 31 ont-srvprofile-id 1 desc "6849_agnaldomoreira_26b4"
 ont add 5 65 sn-auth "49544253321C127C" omci ont-lineprofile-id 31 ont-srvprofile-id 1 desc "3641_tiagosouza_d81c"
 ont add 5 66 sn-auth "49544253E8DECDDC" omci ont-lineprofile-id 31 ont-srvprofile-id 1 desc "8513_joelbenetti_a512"
 ont add 5 67 sn-auth "485754430F61D0B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5427_rosimere_castro_b108"
 ont add 5 68 sn-auth "495442532CD271E9" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "6805_elaineevaldte_fe54"
 ont add 5 69 sn-auth "5A4E54532C173706" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "1034_altairsilva_b1bb"
 ont add 5 70 sn-auth "49544253E8F99DCA" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4997_tainadias_6495"
 ont add 5 71 sn-auth "5A4E54532C0095E4" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "936_rogerlindol_17a8"
 ont add 5 72 sn-auth "495442530D2B8609" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "875_elizetesantos_c995"
 ont add 5 73 sn-auth "465354540000E7ED" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16975_brunodeoliveira_2521"
 ont add 5 74 sn-auth "5A4E54532C12AFB5" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "7169_amanda_silva_be81"
 ont add 5 75 sn-auth "495442532C188BF5" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3147_gislainelima_8a01"
 ont add 5 76 sn-auth "495442530D590441" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "14851_raquelpacheco_47ac"
 ont add 5 77 sn-auth "495442532CBEDA31" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "1032_leonardocosta_16d7"
 ont add 5 78 sn-auth "44443732E606FAC8" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "elzacouto"
 ont add 5 79 sn-auth "485754430F5E00B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5829_rosane_brum_741d"
 ont add 5 80 sn-auth "495442530A6E413C" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "sidneisouza"
 ont add 5 81 sn-auth "495442530D2B4805" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "roselivargas"
 ont add 5 82 sn-auth "485754430F705EB1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "871_leandrosarmento_e2a1"
 ont add 5 83 sn-auth "49544253E8F6E47A" omci ont-lineprofile-id 31 ont-srvprofile-id 1 desc "leandrosarmento"
 ont add 5 84 sn-auth "5A4E54533FFE60CE" omci ont-lineprofile-id 31 ont-srvprofile-id 1 desc "beatrissantos"
 ont add 5 85 sn-auth "5A4E54532C1752E0" omci ont-lineprofile-id 31 ont-srvprofile-id 1 desc "carlosweiss"
 ont add 5 86 sn-auth "485754430F6415B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10735_audrayreis_f887"
 ont add 5 87 sn-auth "485754430F6D58B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "14971_alysonsperdiao_4755"
 ont add 5 88 sn-auth "485754430F70FEB1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "887_gmltda_4734"
 ont add 5 89 sn-auth "485754430F62E5B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10349_fernandabarboza_d20e"
 ont add 5 90 sn-auth "485754430F6149B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3641_tiagosouza_33f5"
 ont add 5 91 sn-auth "48575443312566B2" omci ont-lineprofile-id 31 ont-srvprofile-id 1 desc "10071_edemirhoring_4b84"
 ont add 5 92 sn-auth "495442532CB8539F" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "178_joaosieb_cdf1"
 ont add 5 93 sn-auth "485754430F6B2BB1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4018_luisdias_b464"
 ont add 5 94 sn-auth "46535454000067C6" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16279_josefreire_cddb"
 ont add 5 95 sn-auth "485754430F6603B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "6977_alexsandrosantosdossantos_ff99"
 ont add 5 96 sn-auth "465354540000DBAA" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17355_elisangelasouza_46b9"
 ont add 5 97 sn-auth "465354540000E5B0" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17443_ketlinmabila_3e00"
 ont add 5 98 sn-auth "46535454B81CFE00" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17753_wanessagoncalves_93b1"
 ont add 5 99 sn-auth "485754433127A9B2" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17921_audreyreis_2ponto_a545"
 ont add 5 100 sn-auth "46535454B81CED01" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "18031_marcianunes_c16c"
 ont add 5 101 sn-auth "485754433128CBB2" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "18057_ricardodasilva_cd26"
 ont add 6 0 sn-auth "485754430F6357B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "14195_dirceandrade_72e1"
 ont add 6 1 sn-auth "485754430F5FBDB1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "6551_sumaiamartins_0d7f"
 ont add 6 2 sn-auth "5A4E54532C173BAE" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "2133_pedrodossantos_b657"
 ont add 6 4 sn-auth "495442530D580A48" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10319_claudiosilva_3f6e"
 ont add 6 5 sn-auth "495442530A6E7002" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3149_cristinamachado_7325"
 ont add 6 6 sn-auth "495442535F79C919" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5941_bruna_pinto_2134"
 ont add 6 7 sn-auth "49544253327916AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "184_anasantos_d316"
 ont add 6 8 sn-auth "5A4E54532C1736D8" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10283_andre_machado_8618"
 ont add 6 9 sn-auth "495442530D7BFCC6" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16309_leandrosouza_3851"
 ont add 6 10 sn-auth "5A4E54533FFE60DA" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "239_robertolima_ebec"
 ont add 6 11 sn-auth "495442530D2B85CD" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "939_paulo.silva_9de0"
 ont add 6 12 sn-auth "495442532CD271E5" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13491_edernunes_51b6"
 ont add 6 13 sn-auth "5A4E54538C808B28" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "1877_edsonrosa_03c8"
 ont add 6 14 sn-auth "495442532C6E132B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16421_marciaanjos16421_b68b"
 ont add 6 15 sn-auth "495442532CE8F875" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13987_leonardo_santos_69c8"
 ont add 6 16 sn-auth "5A4E54532C1736CE" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "1055_romualdobergmann_0479"
 ont add 6 17 sn-auth "5A4E54538CAA5EF9" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5407_andersonjoserosa_93a2"
 ont add 6 18 sn-auth "485754430F6B58B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4581_dinorariosilva_00ad"
 ont add 6 19 sn-auth "5A4E54530D7C8BAC" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "25_luanasilva_9d9d"
 ont add 6 20 sn-auth "495442530A6E6F32" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3229_carlasperb_1cf8"
 ont add 6 21 sn-auth "495442530D1D0F00" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3175_igorrodrigues_ac23"
 ont add 6 22 sn-auth "49544253E8F6E37E" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "681_carlamelo_3abd"
 ont add 6 23 sn-auth "495442530D87DD88" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "171_carinevargas_4dcd"
 ont add 6 24 sn-auth "4954425344A1081B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "15473_diomarsouza_2ponto_e80e"
 ont add 6 25 sn-auth "5A4E54532C0F7808" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "950_silviocalistro_76cb"
 ont add 6 26 sn-auth "5A4E54532C1736D6" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "971_cleviovargas_063b"
 ont add 6 27 sn-auth "495442532C839719" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "868_igorfraga_c2c8"
 ont add 6 28 sn-auth "495442532CBEA1F5" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4259_volnei_scoppel_00b1"
 ont add 6 29 sn-auth "495442530D65E59E" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "872_jhonyschmidt_10ae"
 ont add 6 30 sn-auth "5A4E54532C1752C0" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "960_agenoroliveira_5d8d"
 ont add 6 31 sn-auth "495442535F66AE2B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3356_joicedasilva_d683"
 ont add 6 32 sn-auth "49544253441CB653" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "12885_andressa_silva_52e3"
 ont add 6 33 sn-auth "5A4E54530D580B14" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "12119_sergioluz_ed5d"
 ont add 6 34 sn-auth "495442532CE9EE15" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "2665_wagnerteixeira_2461"
 ont add 6 35 sn-auth "495442532CBEA3B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "1889_francieleandrade_56cd"
 ont add 6 36 sn-auth "5A4E54532C12B06B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3732_sinaraclaudino_0995"
 ont add 6 37 sn-auth "485754430F6C60B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "7437_josuegoncalvesoliveira_ec25"
 ont add 6 38 sn-auth "495442530D579F63" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4537_jadirmacedo_4acd"
 ont add 6 39 sn-auth "5A4E54532C061880" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "874_veralucia_696f"
 ont add 6 40 sn-auth "5A4E54532C061676" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5323_silvio_soares_7b97"
 ont add 6 41 sn-auth "485754434157F6AC" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "6411_daianarosa_56ed"
 ont add 6 42 sn-auth "485754430F6C9BB1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "26_elianesilva_6172"
 ont add 6 43 sn-auth "495442530A6E6D9C" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "9757_jmfeirelli_8421"
 ont add 6 44 sn-auth "5A4E54532C061672" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3463_airtonfraga_476e"
 ont add 6 45 sn-auth "495442530D6AAA4A" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17321_lurdessilva_a5f5"
 ont add 6 46 sn-auth "46535454B81CDF7B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17505_pamelarosa17505_022b"
 ont add 6 47 sn-auth "48575443312645B2" omci ont-lineprofile-id 31 ont-srvprofile-id 1 desc "17587_eversomonofre_5f2c"
 ont add 6 48 sn-auth "465354540000D6FB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17593_maraquintana_2ponto_9d29"
 ont add 6 49 sn-auth "485754430F6366B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17633_alessandradasilva_8ccc"
 ont add 6 100 sn-auth "495442530A6E6E18" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Liberado_Urgencia_0A6E6E18"
 ont add 6 101 sn-auth "5A4E54532CD287E1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Liberado_Urgencia_2CD287E1"
 ont add 7 0 sn-auth "495442530A6E6E3C" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "15453_cristianebaratieri_d41e"
 ont add 7 1 sn-auth "4653545400006502" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4289_alessandra_vicente_9bb2"
 ont add 7 2 sn-auth "5A4E54532C1736D0" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5815_vanessaoliveira_silva_7251"
 ont add 7 3 sn-auth "495442530A6E6E8E" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "2281_magnosgemelli_4804"
 ont add 7 4 sn-auth "495442533278BBF2" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "1096_rogerioalves_0686"
 ont add 7 5 sn-auth "49544253443E9FFF" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5129_janeoliveira_d1a2"
 ont add 7 6 sn-auth "495442530A6E7176" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "6043_antoniomeireles_7e53"
 ont add 7 8 sn-auth "46535454B81CE6EF" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16543_alinegomes_3b0a"
 ont add 7 9 sn-auth "495442532CCFE5F7" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "2115_susetesilva_df8c"
 ont add 7 10 sn-auth "4954425344388E90" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13277_luizcaceles_926a"
 ont add 7 11 sn-auth "5A4E54538CA3EE24" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13727_jeniferpozza_2ponto_2bfd"
 ont add 7 12 sn-auth "49544253F19C3D80" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13239_francielipogorzelski_df16"
 ont add 7 13 sn-auth "4954425332FCA949" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "14055_eduardograssi_aa31"
 ont add 7 14 sn-auth "495442532C54BC19" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3868_karine_sanches_e153"
 ont add 7 15 sn-auth "495442530A6E7098" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "14609_kauasousa_f754"
 ont add 7 16 sn-auth "49544253E8FEE155" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4435_jeniferpozza_ab2c"
 ont add 7 17 sn-auth "5A4E54533F90B401" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "395_karinesanches_9444"
 ont add 7 18 sn-auth "5A4E54533F81F6B3" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "220_angelarodzinski_38a6"
 ont add 7 19 sn-auth "5A4E54532C0BEB32" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16689_herrivaldaandrade_0f48"
 ont add 7 20 sn-auth "5A4E54532C20155D" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "14191_vanderleibrito_d94f"
 ont add 7 21 sn-auth "495442538B68EDE5" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "905_paulooliveira_350b"
 ont add 7 22 sn-auth "495442530DD56FED" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "8789_claudiateixeira_5c67"
 ont add 7 23 sn-auth "495442532CD271E3" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "6761_cintiakobylinski_55f2"
 ont add 7 101 sn-auth "465354540000E5A4" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16977_raqueldagostini_d14b"
 ont add 7 104 sn-auth "4653545400006B4A" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17389_leandrochaves_83f4"
 ont add 7 111 sn-auth "46535454000066C1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Liberado_Urgencia_000066C1"
 ont add 7 112 sn-auth "46535454000067C7" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Liberado_Urgencia_000067C7"
 ont add 7 113 sn-auth "46535454000072C1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Liberado_Urgencia_000072C1"
 ont add 7 114 sn-auth "46535454000075A9" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Liberado_Urgencia_000075A9"
 ont add 7 115 sn-auth "465354540000D832" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Liberado_Urgencia_0000D832"
 ont add 7 116 sn-auth "465354540000DD61" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Liberado_Urgencia_0000DD61"
 ont add 7 117 sn-auth "465354540000E44C" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Liberado_Urgencia_0000E44C"
 ont add 7 118 sn-auth "465354540000E5A5" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Liberado_Urgencia_0000E5A5"
 ont add 7 121 sn-auth "4954425332BA5ABF" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Liberado_Urgencia_32BA5ABF"
 ont add 7 124 sn-auth "4954425344388DF4" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Liberado_Urgencia_44388DF4"
 ont add 7 126 sn-auth "49544253E8DDEFE2" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Liberado_Urgencia_E8DDEFE2"
 ont add 8 0 sn-auth "495442530D4DB9CF" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "1054_franciscosousa_ef47"
 ont add 8 1 sn-auth "495442530D286EAF" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3243_paulodeczuta_a24d"
 ont add 8 2 sn-auth "495442532CEA287D" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "2631_izolinapimentel_ad65"
 ont add 8 3 sn-auth "495442532CE8E517" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3967_jorge_merode_5fec"
 ont add 8 4 sn-auth "5A4E54533F81F313" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "854_fernandasilva_2a3f"
 ont add 8 5 sn-auth "495442535FED8AE7" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4165_brunafreitas_1975"
 ont add 8 6 sn-auth "49544253443EA08F" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "2273_andresabueno_cca1"
 ont add 8 7 sn-auth "5A4E54532C061872" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "2381_silvanadosreis_7b4b"
 ont add 8 8 sn-auth "495442535F79CB0F" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16341_angelicawollman_2ponto_153d"
 ont add 8 9 sn-auth "44443732E606FED0" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "513_marciasilva_1fd6"
 ont add 8 10 sn-auth "465354540000E563" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3995_alcemarsilva_1de2"
 ont add 8 11 sn-auth "495442530DD660F9" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "355_carlosdornelles_8665"
 ont add 8 12 sn-auth "4954425332579CD7" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "788_edisoncarvalho_38b2"
 ont add 8 13 sn-auth "49544253F1E57666" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "185_clovisfontana_eb6b"
 ont add 8 14 sn-auth "495442538BF737D7" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10807_maickelborges10807_9e65"
 ont add 8 15 sn-auth "465354540000E40A" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "106_sindicatometropolitano_6d1e"
 ont add 8 16 sn-auth "495442532CBF7C93" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "82_deborafarias_ebf7"
 ont add 8 17 sn-auth "495442530A6E7110" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13693_agro_pecuipi_9e90"
 ont add 8 18 sn-auth "495442530D580942" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "6591_anapacheco_6930"
 ont add 8 19 sn-auth "495442532CBB028B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "1897_mariogil_042a"
 ont add 8 20 sn-auth "485754430F74E1B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17305_matildebrugnera_b72b"
 ont add 8 21 sn-auth "495442530D32779B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13457_anitacosta_a637"
 ont add 8 22 sn-auth "49544253CFCABE64" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "9355_hodaisabrehm_0bab"
 ont add 8 23 sn-auth "495442533252DFBD" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "12377_ronnierosa_7190"
 ont add 8 25 sn-auth "495442533221BE01" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "105_aline_silva_beec"
 ont add 8 26 sn-auth "495442530D5F35B2" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3173_sandraoliveira_89a5"
 ont add 8 27 sn-auth "49544253CFD838B6" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13925_leonardofonseca_244b"
 ont add 8 28 sn-auth "5A4E54533F909F6F" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "103_claudirsouza_a25f"
 ont add 8 29 sn-auth "495442532CBEDCF5" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "1941_jefersonsenthier_2fd5"
 ont add 8 30 sn-auth "495442532C70F35B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5819_rosnei_martins_078c"
 ont add 8 31 sn-auth "495442535B0E71EF" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "9883_ivairgomes_a2e8"
 ont add 8 32 sn-auth "5A4E54532C173AD6" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "353_beatrizsenthier_b607"
 ont add 8 33 sn-auth "5A4E54533FFA0F73" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "12133_IgrejaDeus_4fbf"
 ont add 8 34 sn-auth "465354540000692C" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16403_fernandasouto_f3b2"
 ont add 8 35 sn-auth "49544253443EA027" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "7159_brunaoliveira_fd2c"
 ont add 8 36 sn-auth "495442530D2B8629" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16861_rilarynascimento_6dd1"
 ont add 8 37 sn-auth "5A4E54533FFA0D5D" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3664_jeferson_silva_ace6"
 ont add 8 38 sn-auth "465354540000D92A" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3994_alex_diretor_77be"
 ont add 8 39 sn-auth "465354540000DCF6" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "1201_sadradamasceno_ffbc"
 ont add 8 40 sn-auth "495442530D87E3F8" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "6463_salaodefestas_cf70"
 ont add 8 41 sn-auth "465354540000E9B5" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3993_portaria_b467"
 ont add 8 42 sn-auth "465354540000E460" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "172_fabianapacheco_4981"
 ont add 8 43 sn-auth "465354540000DE0C" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "14251_camilamendes_3bb5"
 ont add 8 44 sn-auth "485754433125C9B2" omci ont-lineprofile-id 31 ont-srvprofile-id 1 desc "17571_hodaisabrehn_e665"
 ont add 8 80 sn-auth "465354540000D9FC" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Liberado_Urgencia_0000D9FC"
 ont add 8 81 sn-auth "465354540000DD7F" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Liberado_Urgencia_0000DD7F"
 ont add 8 82 sn-auth "465354540000E92F" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Liberado_Urgencia_0000E92F"
 ont add 8 83 sn-auth "495442530A6E6DCC" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Liberado_Urgencia_0A6E6DCC"
 ont add 8 84 sn-auth "495442530D5F3632" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Liberado_Urgencia_0D5F3632"
 ont add 8 85 sn-auth "495442532CB85399" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Liberado_Urgencia_2CB85399"
 ont add 8 86 sn-auth "49544253E8DE67E8" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Liberado_Urgencia_E8DE67E8"
 ont add 8 87 sn-auth "49544253E8F77511" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Liberado_Urgencia_E8F77511"
 ont add 9 0 sn-auth "4954425344A0FBB5" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17235_vilsonland_55b7"
 ont add 9 1 sn-auth "5A4E54538CA360DE" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3707_vagnersouza_586c"
 ont add 9 2 sn-auth "46535454000064FA" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13663_leandrocanabarro_0bd4"
 ont add 9 3 sn-auth "46535454000072C5" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "12959_ketlyngarcia_be14"
 ont add 9 4 sn-auth "5A4E54538C98E718" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "7843_marciatrindade_70f7"
 ont add 9 5 sn-auth "495442530A6C8D26" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "14141_jorgeazevedo_23b6"
 ont add 9 6 sn-auth "495442530A6E4622" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3505_gabrielleite_d6f7"
 ont add 9 7 sn-auth "495442530A6E70DA" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5575_bento_costa_899e"
 ont add 9 8 sn-auth "495442530A6E70E4" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17005_fernandareis_3ca6"
 ont add 9 9 sn-auth "495442530A6E7104" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "7331_janeteschneider_ef20"
 ont add 9 10 sn-auth "495442530D287157" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10317_anaalves_a214"
 ont add 9 11 sn-auth "495442530D580990" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "443_carlosgalvao_5503"
 ont add 9 12 sn-auth "495442530D6C24D4" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "12149_marcielikrolow_080b"
 ont add 9 13 sn-auth "495442530D7BFD78" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3516_cristinasilva_bad0"
 ont add 9 14 sn-auth "495442530DD66103" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "6107_eliane_souza_6e37"
 ont add 9 15 sn-auth "495442532C6E96D5" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "8761_maria_dias_1fc4"
 ont add 9 16 sn-auth "495442532C6E96FD" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3494_valtoirhorn_d35d"
 ont add 9 17 sn-auth "495442532C7D99D1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "156_adilsonmanoel_8686"
 ont add 9 18 sn-auth "4653545400006B39" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "15987_alexrosa_c879"
 ont add 9 19 sn-auth "495442532CBEDA49" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4805_jandiranevessilva_7aea"
 ont add 9 20 sn-auth "495442532CD271D9" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "354_almiralves_2d84"
 ont add 9 21 sn-auth "495442532CD282B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "7845_larissabastos_e056"
 ont add 9 22 sn-auth "495442532CEA35CD" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "1291_lizandrosilva_8fac"
 ont add 9 23 sn-auth "49544253325765B5" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5733_kahlel_santos_452a"
 ont add 9 24 sn-auth "49544253326A53BE" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5145_jairpereira_f86f"
 ont add 9 25 sn-auth "495442533278BBEC" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3858_edisonschau_ab65"
 ont add 9 26 sn-auth "49544253327916A9" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "8791_douglaslaner_5e29"
 ont add 9 27 sn-auth "49544253441CB65D" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16817_luanapinheiro_f8a5"
 ont add 9 28 sn-auth "49544253441CB70F" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3493_gislainebostel_afaf"
 ont add 9 29 sn-auth "49544253441CB721" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4785_sanderleimayer_62a3"
 ont add 9 30 sn-auth "49544253441CB731" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "12495_rosane_santos_156a"
 ont add 9 31 sn-auth "49544253441CB741" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3165_dionatanconstante_c813"
 ont add 9 32 sn-auth "49544253441CB743" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "12135_maiconsantos_7ba8"
 ont add 9 33 sn-auth "4954425344A0FB79" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17175_ricaomdalbosco_2e5f"
 ont add 9 34 sn-auth "4954425344A10863" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16425_henriquecardoso_e0e1"
 ont add 9 35 sn-auth "495442535F79CA0D" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "7291_catianefrankukoski_9369"
 ont add 9 36 sn-auth "495442538B69BB67" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4071_flavia_rodrigues_2e13"
 ont add 9 37 sn-auth "495442538B6A266D" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4044_evelen_silva_fa14"
 ont add 9 38 sn-auth "495442538CA3F082" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13797_marcelomarques_9375"
 ont add 9 39 sn-auth "49544253E8F6E68F" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "12345_marcosrogerio_4673"
 ont add 9 40 sn-auth "49544253E8FEE15B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4429_zaira_migliavaca_f9d8"
 ont add 9 41 sn-auth "49544253E8FEE167" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "486_arianasilva_abfd"
 ont add 9 42 sn-auth "49544253F1A921E0" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13297_elisandraoliveira_5ebc"
 ont add 9 43 sn-auth "49544253F1E576B2" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "15759_joserosbach_126c"
 ont add 9 44 sn-auth "5A4E54530D5F350E" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4241_eva_wollmann_c483"
 ont add 9 45 sn-auth "5A4E54532C055668" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "537_arturmonticelli_76db"
 ont add 9 46 sn-auth "5A4E54532C06167C" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "6079_reginapacheco_2abc"
 ont add 9 47 sn-auth "5A4E54532C061894" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3373_fernandawerner_dcdb"
 ont add 9 48 sn-auth "495442535FEE1BF5" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13541_vanessatrindade_0f43"
 ont add 9 49 sn-auth "5A4E54533F909F71" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "352_fabianooliveira_c20d"
 ont add 9 50 sn-auth "4857544331255EB2" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4479_vivianepozza_3ffd"
 ont add 9 51 sn-auth "5A4E54532C0BEB24" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4355_marcelle_dasilva_2744"
 ont add 9 52 sn-auth "5A4E54532C0F3ACD" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "14951_luizramos__d9fc"
 ont add 9 53 sn-auth "5A4E54532C12B187" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "427_rosangelasilveira_8d43"
 ont add 9 54 sn-auth "5A4E54532C1736E8" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "980_grazieleramos_401d"
 ont add 9 55 sn-auth "5A4E54532C173B5E" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "11683_adelaidesantana_f30e"
 ont add 9 56 sn-auth "5A4E54533F81F0B3" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "2845_marcos_silva_a581"
 ont add 9 57 sn-auth "5A4E54532C1752E4" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10301_jose_silveira_5810"
 ont add 9 58 sn-auth "5A4E54532C1752F0" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5077_flavianeesper_0b4d"
 ont add 9 59 sn-auth "5A4E54532C1C3AF1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3395_paulosergio_silva_bdf7"
 ont add 9 60 sn-auth "5A4E54532CD271D7" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3420_tatianalima_7097"
 ont add 9 61 sn-auth "5A4E54533F81EDC3" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3362_arlei_oliveira_23b7"
 ont add 9 62 sn-auth "5A4E54532C2015E7" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "11189_guilherme_souza_d659"
 ont add 9 63 sn-auth "495442530D554D5B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10269_leonardo_roque__8949"
 ont add 9 64 sn-auth "5A4E54532C2012B3" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "7755_tiagovieira_3bd0"
 ont add 9 65 sn-auth "495442532CCFE5F5" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "8703_keytygirelli_ef76"
 ont add 9 66 sn-auth "5A4E54533F81F2F7" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "396_digalli_a318"
 ont add 9 67 sn-auth "495442538B6A35AD" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "7257_julianaalves_2ca2"
 ont add 9 68 sn-auth "495442532C70F5FB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4081_quintino_flores_e9a2"
 ont add 9 69 sn-auth "49544253443891B4" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17285_clasigross_c891"
 ont add 9 70 sn-auth "4954425344A0FB69" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "14853_leonardodacosta_86f0"
 ont add 9 71 sn-auth "4954425344A1088F" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "127_gracielasilva_dd86"
 ont add 9 72 sn-auth "49544253441CB61D" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4571_marilei_ribeiro_5c3c"
 ont add 9 73 sn-auth "5A4E54538C77F908" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "8897_clebersantos_6699"
 ont add 9 74 sn-auth "4954425343020000" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "290_nelsondasilva_cc2b"
 ont add 9 75 sn-auth "495442535B0E71DC" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16995_marciofrancasilva_d288"
 ont add 9 76 sn-auth "5A4E54532C20126F" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10387_marialopes_8519"
 ont add 9 77 sn-auth "495442530D29F5D8" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "7105_hortencioluz_3537"
 ont add 9 78 sn-auth "5A4E54532C1D5A1C" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10477_ivansantos_d21d"
 ont add 9 79 sn-auth "49544253E8F80186" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3011_lucianamachado_ab94"
 ont add 9 80 sn-auth "495442530D7C8B9E" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3484_maria_ferreira_8c1d"
 ont add 9 81 sn-auth "5A4E54533F81F67B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13625_laiderosa_dbf0"
 ont add 9 82 sn-auth "485754430F675DB1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17781_anifogaca_e650"
 ont add 9 83 sn-auth "465354540000EA93" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17971_luizlunges_526d"
 ont add 9 104 sn-auth "495442532CBED9DF" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Liberado_Urgencia_2CBED9DF"
 ont add 9 105 sn-auth "495442532CBEDA5B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Liberado_Urgencia_2CBEDA5B"
 ont add 9 106 sn-auth "495442532CBF7EB3" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Liberado_Urgencia_2CBF7EB3"
 ont add 9 110 sn-auth "495442538BFB2BF8" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Liberado_Urgencia_8BFB2BF8"
 ont add 9 111 sn-auth "5A4E54532C0556D2" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Liberado_Urgencia_2C0556D2"
 ont add 11 0 sn-auth "5A4E54532C1752D2" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "9131_rm2_ponto_1_10d5"
 ont add 11 1 sn-auth "48575443F5E54FAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "15223_laerciozili_30fc"
 ont add 11 3 sn-auth "48575443F5E76BAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "8397_juliananunes_5ea2"
 ont add 11 4 sn-auth "495442532C6EE22B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5471_mariaelenamachado_52e7"
 ont add 11 5 sn-auth "48575443F2EFE0AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "6703_dionatan_taborda_2bc9"
 ont add 11 6 sn-auth "495442530D6A1B67" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "11999_leticianunes_3488"
 ont add 11 7 sn-auth "49544253326A5ABE" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10645_elsomirooliveira_71f5"
 ont add 11 8 sn-auth "495442533221BDE2" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5751_roberto_dasilva_4920"
 ont add 11 9 sn-auth "49544253E8F40234" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4917_claricesouza_0644"
 ont add 11 10 sn-auth "4954425344A0FBB9" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10079_lidianejesus_50f7"
 ont add 11 11 sn-auth "495442530D57A07D" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13499_fatimasilva_36a8"
 ont add 11 12 sn-auth "495442533272E924" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10603_jocastabenete_91a6"
 ont add 11 13 sn-auth "5A4E54532C12B021" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "11715_glacifernandes_b454"
 ont add 11 14 sn-auth "495442530D2B8647" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10575_danielabenete_7b60"
 ont add 11 15 sn-auth "5A4E54532C201267" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13353_gabrielefarias_521a"
 ont add 11 16 sn-auth "495442538BBC47A3" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "11815_cassiarosario_28c8"
 ont add 11 17 sn-auth "49544253441CB6E1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "12461_jessicaoliveira_7eea"
 ont add 11 18 sn-auth "5A4E54532C16B316" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10353_thaisnunes_a300"
 ont add 11 19 sn-auth "49544253E8F6E360" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5065_brunafraga_4c1e"
 ont add 11 20 sn-auth "49544253E8F8D373" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4905_moniqueguterra_fe34"
 ont add 11 21 sn-auth "485754430F5FE4B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16123_silvanavaz_2aa9"
 ont add 11 22 sn-auth "49544253E8FF079B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5429_otelino_souza_d387"
 ont add 11 23 sn-auth "46535454B81D00E4" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17999_janainaguimaraes_9ad6"
 ont add 11 24 sn-auth "485754430F73D5B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16523_wilianoliveira_b98b"
 ont add 11 25 sn-auth "485754430F6C86B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16491_carolinedias_03cf"
 ont add 11 26 sn-auth "495442535F554F5A" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "9651_paula_oliveira_7e4d"
 ont add 11 27 sn-auth "495442535F555010" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "13285_paulocardoso_07ac"
 ont add 11 28 sn-auth "485754430F73FFB1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "15201_kennysantos_cc15"
 ont add 11 29 sn-auth "495442530D7BFD52" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4791_giselefrantzsilva_9b0d"
 ont add 11 30 sn-auth "495442530A6E716A" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "9253_diegopires_6b5b"
 ont add 11 31 sn-auth "5A4E54532C0095E6" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "14173_julhaoliveira_188d"
 ont add 11 32 sn-auth "49544253440E9178" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "8061_silvarmoraes_e533"
 ont add 11 33 sn-auth "485754430F619BB1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10489_silvarmoraes_2ponto_0e8f"
 ont add 11 34 sn-auth "485754430F64B3B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "8097_ingritypinho_f322"
 ont add 11 35 sn-auth "485754430F7249B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10429_simonecarmo_7b18"
 ont add 11 36 sn-auth "485754430F7018B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "8137_ronaldomesquita_6a57"
 ont add 11 37 sn-auth "485754431D69679B" omci ont-lineprofile-id 3256 ont-srvprofile-id 3256 desc "ONT_HUAWEI"
 ont add 11 38 sn-auth "485754430F5D39B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "7703_gracielaporto_ad77"
 ont add 11 39 sn-auth "48575443F5E52EAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16987_alineoliveira_2cc9"
 ont add 11 40 sn-auth "485754430F71F6B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17011_marcioguimaraes_d7d3"
 ont add 11 41 sn-auth "485754430F6A92B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17151_andreiasouza_2c1c"
 ont add 11 42 sn-auth "485754430F67E5B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "11861_tamirescruz_5529"
 ont add 11 43 sn-auth "485754430F675CB1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17247_ubiratangoncalves_217f"
 ont add 11 44 sn-auth "5A4E54538C80899C" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17275_maicongama_f614"
 ont add 11 45 sn-auth "485754430F68CEB1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17345_cristianoalbuquerque_426a"
 ont add 11 46 sn-auth "4857544331297BB2" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17709_giovanilucas_298a"
 ont add 11 47 sn-auth "465354540000E7EE" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17741_danielrodrigues_5afd"
 ont add 11 48 sn-auth "48575443312939B2" omci ont-lineprofile-id 31 ont-srvprofile-id 1 desc "17993_mariadosreis_38cc"
 ont add 11 127 sn-auth "4954425332B582A5" omci ont-lineprofile-id 3 ont-srvprofile-id 3 desc "121AC_VL161"
 ont add 13 0 sn-auth "48575443B982F8B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "526_lucianamendes_850b"
 ont add 13 1 sn-auth "495442530A6E6E30" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "14471_paiindustriais_5b43"
 ont add 13 2 sn-auth "495442530A6E702A" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3246_luizlucas_32a3"
 ont add 13 3 sn-auth "495442530A6E7044" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "15291_luisrosa_2ponto_1829"
 ont add 13 4 sn-auth "495442530A6E714E" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "8115_jorgesilveira_cb38"
 ont add 13 5 sn-auth "495442533257654D" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "7783_marciaalves_4d06"
 ont add 13 6 sn-auth "495442530A6E7186" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "6829_matheuslopes_68a9"
 ont add 13 7 sn-auth "495442530D2B860B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3033_leonardo_roque_3ec8"
 ont add 13 8 sn-auth "5A4E54533F90B41B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5561_neila_dias_1547"
 ont add 13 9 sn-auth "495442530D2B862D" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5507_eusebio_greiner_fc3c"
 ont add 13 10 sn-auth "495442530D54AE2C" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "9805_igormunhoz_afcd"
 ont add 13 11 sn-auth "495442530D58FA4B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3235_marciasouza_7563"
 ont add 13 12 sn-auth "5A4E54533F7D48EF" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10585_edson_silva_4c16"
 ont add 13 13 sn-auth "5A4E54533F909F23" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "11807_patricia_barbosa_234f"
 ont add 13 14 sn-auth "495442530D7BFD9E" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3538_joaomuradas_f982"
 ont add 13 15 sn-auth "495442530D87E3D2" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "12113_dorlivioni_e08e"
 ont add 13 16 sn-auth "495442530DD660A7" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "12127_valmirsouza_a6bf"
 ont add 13 17 sn-auth "5A4E54532C173C22" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3914_lindomarsilva_7cec"
 ont add 13 18 sn-auth "5A4E54533F7D472B" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "650_jonaspiva_53f8"
 ont add 13 19 sn-auth "495442530DD927F2" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "15419_ellenmendes_2a44"
 ont add 13 20 sn-auth "5A4E54532C104028" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "14359_joao_moraes2ponto_1169"
 ont add 13 21 sn-auth "48575443F2FDD7AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "2315_patriciasantos_58c8"
 ont add 13 22 sn-auth "495442530DFF45A5" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "8619_anapadua_oliveira_7683"
 ont add 13 23 sn-auth "495442532C425B00" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "9125_sineiabueno_3cb7"
 ont add 13 24 sn-auth "4653545400005632" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3728_mara_silva_c09f"
 ont add 13 25 sn-auth "5A4E54532C0559F8" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10411_madalenarosa_b2d0"
 ont add 13 26 sn-auth "495442538B6984BD" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "7055_rodrigomoreira_b274"
 ont add 13 27 sn-auth "495442532CBEA1E9" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4929_verasouza_19b8"
 ont add 13 28 sn-auth "495442532CBEA1FD" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "2383_sonia_souza_caf9"
 ont add 13 29 sn-auth "49544253E8F6E3E6" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "8197_brunooliveira_7dcb"
 ont add 13 30 sn-auth "49544253E8F99CE5" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "4133_leandro_alves_3132"
 ont add 13 31 sn-auth "485754430F69EFB1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "8597_maicon_macedo_5b5e"
 ont add 13 32 sn-auth "495442532CBF77BD" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3702_viviane_soares_96bf"
 ont add 13 33 sn-auth "48575443F5E5F3AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3274_rosangelaschuck_9fb6"
 ont add 13 34 sn-auth "48575443F2F915AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "99_erickmendes_7083"
 ont add 13 35 sn-auth "495442532CE9028F" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "11037_juarezfonte_af59"
 ont add 13 36 sn-auth "48575443F5E5B5AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "81_zenildarodrigues_824d"
 ont add 13 37 sn-auth "465354540000642D" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "6901_mariamarques_6246"
 ont add 13 38 sn-auth "495442538BF23C8D" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10699_evertondavila_c7a2"
 ont add 13 39 sn-auth "49544253CFCABEB7" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "9827_martacruz_7a08"
 ont add 13 40 sn-auth "48575443F5E5C2AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "1515_vanildamendes_14c6"
 ont add 13 41 sn-auth "48575443F2F71CAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3276_enilsonschuck_7454"
 ont add 13 42 sn-auth "48575443F5E747AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10231_josebicca_dbda"
 ont add 13 43 sn-auth "495442538B69ACE5" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "8587_luisrosa_45be"
 ont add 13 44 sn-auth "495442538B6A2919" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "2785_claudiasouza_f895"
 ont add 13 45 sn-auth "48575443F30093AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3270_susie_pereira_2e97"
 ont add 13 46 sn-auth "495442532CB7FDDB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "18075_ruannunes_2f75"
 ont add 13 47 sn-auth "48575443F5E5D8AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3217_josiani_pinto_2f4b"
 ont add 13 48 sn-auth "4954425344A1087D" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "15247_luizlucas_2ponto_c37b"
 ont add 13 49 sn-auth "495442535F554F9A" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "9629_elieterossoni_f206"
 ont add 13 50 sn-auth "48575443F5E4C0AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "6379_mariojorgegil_a2c2"
 ont add 13 51 sn-auth "495442533231B94D" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "302_rosimerisevero_5742"
 ont add 13 52 sn-auth "4954425332576533" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "5027_amalia_souza_0ac6"
 ont add 13 53 sn-auth "495442533272E934" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10101_edenilsondalberto_bd0d"
 ont add 13 54 sn-auth "4954425344A0FB4F" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "15463_daianeborges_6f7f"
 ont add 13 55 sn-auth "49544253327916A5" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "9149_marcelolemos_2373"
 ont add 13 56 sn-auth "49544253441CB6D5" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "2249_helenasantos_d5b9"
 ont add 13 57 sn-auth "4653545400006564" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3293_paulorosa_jaskow_4d91"
 ont add 13 58 sn-auth "49544253441CB625" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "10427_nicoledill_4ec2"
 ont add 13 59 sn-auth "48575443F2F98DAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "7713_claudetelima_dbd5"
 ont add 13 60 sn-auth "48575443F2EE63AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3512_atirferreira_b408"
 ont add 13 61 sn-auth "4954425332810D2A" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "8375_rodrigo_moreira2ponto_aec2"
 ont add 13 62 sn-auth "48575443F5E72CAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17339_fabriciobueno_407b"
 ont add 13 63 sn-auth "485754430F6E6FB1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16843_gilbertoborges_3569"
 ont add 13 64 sn-auth "4653545400006814" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3272_vanessa_rosa_382b"
 ont add 13 65 sn-auth "495442532CBF7D25" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3410_jaquelinedias_8aa3"
 ont add 13 66 sn-auth "48575443F2ED06AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3237_kateaneoliveira_ccc8"
 ont add 13 67 sn-auth "48575443F5E489AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "7027_roger_silva_25a1"
 ont add 13 68 sn-auth "485754430F711EB1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "7557_alexmoura_13df"
 ont add 13 69 sn-auth "48575443F2E9A8AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3491_joao_moraes_e889"
 ont add 13 70 sn-auth "48575443F5E663AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "2745_patriciamartins_e2ad"
 ont add 13 71 sn-auth "48575443F5E360AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "7337_isaiasacunha_b290"
 ont add 13 72 sn-auth "48575443F5E505AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "3756_claudiabitelo_43f9"
 ont add 13 74 sn-auth "5A4E54532C12B26D" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "7127_ledaacunha_50bb"
 ont add 13 75 sn-auth "48575443F2EC0EAB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "12771_vitoriasouza_c198"
 ont add 13 76 sn-auth "48575443F5E839AB" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "2079_lisianabitencourt_caf3"
 ont add 13 77 sn-auth "485754430F633CB1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16481_prisciladuarte_9792"
 ont add 13 78 sn-auth "485754430F5F40B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "8853_ivosilva_0ee0"
 ont add 13 79 sn-auth "465354540000B372" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "16883_gilbertoborges_2ponto_b4e3"
 ont add 13 80 sn-auth "485754430F6501B1" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "17877_anarossoni_d2f6"
 ont port native-vlan 0 4 eth 1 vlan 31 priority 0
 ont port native-vlan 0 7 eth 1 vlan 31 priority 0
 ont port native-vlan 0 8 eth 1 vlan 31 priority 0
 ont port native-vlan 0 12 eth 1 vlan 31 priority 0
 ont port native-vlan 0 14 eth 1 vlan 31 priority 0
 ont port native-vlan 0 15 eth 1 vlan 31 priority 0
 ont port native-vlan 0 24 eth 1 vlan 31 priority 0
 ont port native-vlan 0 25 eth 1 vlan 31 priority 0
 ont port native-vlan 0 26 eth 1 vlan 31 priority 0
 ont port native-vlan 0 27 eth 1 vlan 31 priority 0
 ont port native-vlan 0 28 eth 1 vlan 31 priority 0
 ont port native-vlan 0 29 eth 1 vlan 31 priority 0
 ont port native-vlan 0 30 eth 1 vlan 31 priority 0
 ont port native-vlan 0 31 eth 1 vlan 31 priority 0
 ont port native-vlan 0 32 eth 1 vlan 31 priority 0
 ont port native-vlan 0 33 eth 1 vlan 31 priority 0
 ont port native-vlan 0 34 eth 1 vlan 31 priority 0
 ont port native-vlan 0 35 eth 1 vlan 31 priority 0
 ont port native-vlan 0 36 eth 1 vlan 31 priority 0
 ont port native-vlan 0 37 eth 1 vlan 31 priority 0
 ont port native-vlan 0 44 eth 1 vlan 31 priority 0
 ont port native-vlan 0 103 eth 1 vlan 31 priority 0
 ont port native-vlan 0 108 eth 1 vlan 31 priority 0
 ont port native-vlan 0 110 eth 1 vlan 31 priority 0
 ont port native-vlan 0 112 eth 1 vlan 31 priority 0
 ont port native-vlan 0 113 eth 1 vlan 31 priority 0
 ont port native-vlan 0 114 eth 1 vlan 31 priority 0
 ont port native-vlan 0 115 eth 1 vlan 31 priority 0
 ont port native-vlan 0 116 eth 1 vlan 31 priority 0
 ont port native-vlan 0 119 eth 1 vlan 31 priority 0
 ont port native-vlan 0 122 eth 1 vlan 31 priority 0
 ont port native-vlan 0 123 eth 1 vlan 31 priority 0
 ont port native-vlan 0 124 eth 1 vlan 31 priority 0
 ont port native-vlan 0 125 eth 1 vlan 31 priority 0
 ont port native-vlan 0 127 eth 1 vlan 31 priority 0
 ont port native-vlan 1 1 eth 1 vlan 31 priority 0
 ont port native-vlan 1 5 eth 1 vlan 31 priority 0
 ont port native-vlan 1 6 eth 1 vlan 31 priority 0
 ont port native-vlan 1 7 eth 1 vlan 31 priority 0
 ont port native-vlan 1 8 eth 1 vlan 31 priority 0
 ont port native-vlan 1 10 eth 1 vlan 31 priority 0
 ont port native-vlan 1 11 eth 1 vlan 31 priority 0
 ont port native-vlan 1 14 eth 1 vlan 31 priority 0
 ont port native-vlan 1 15 eth 1 vlan 31 priority 0
 ont port native-vlan 1 16 eth 1 vlan 31 priority 0
 ont port native-vlan 1 17 eth 1 vlan 31 priority 0
 ont port native-vlan 1 18 eth 1 vlan 31 priority 0
 ont port native-vlan 1 20 eth 1 vlan 31 priority 0
 ont port native-vlan 1 29 eth 1 vlan 31 priority 0
 ont port native-vlan 1 30 eth 1 vlan 31 priority 0
 ont port native-vlan 1 31 eth 1 vlan 31 priority 0
 ont port native-vlan 1 32 eth 1 vlan 31 priority 0
 ont port native-vlan 1 33 eth 1 vlan 31 priority 0
 ont port native-vlan 1 34 eth 1 vlan 31 priority 0
 ont port native-vlan 1 35 eth 1 vlan 31 priority 0
 ont port native-vlan 1 36 eth 1 vlan 31 priority 0
 ont port native-vlan 1 38 eth 1 vlan 31 priority 0
 ont port native-vlan 1 40 eth 1 vlan 31 priority 0
 ont port native-vlan 1 44 eth 1 vlan 31 priority 0
 ont port native-vlan 1 48 eth 1 vlan 31 priority 0
 ont port native-vlan 2 0 eth 1 vlan 31 priority 0
 ont port native-vlan 2 1 eth 1 vlan 31 priority 0
 ont port native-vlan 2 2 eth 1 vlan 31 priority 0
 ont port native-vlan 2 3 eth 1 vlan 31 priority 0
 ont port native-vlan 2 5 eth 1 vlan 31 priority 0
 ont port native-vlan 2 7 eth 1 vlan 31 priority 0
 ont port native-vlan 2 8 eth 1 vlan 31 priority 0
 ont port native-vlan 2 9 eth 1 vlan 31 priority 0
 ont port native-vlan 2 10 eth 1 vlan 31 priority 0
 ont port native-vlan 2 11 eth 1 vlan 31 priority 0
 ont port native-vlan 2 15 eth 1 vlan 31 priority 0
 ont port native-vlan 2 19 eth 1 vlan 31 priority 0
 ont port native-vlan 2 20 eth 1 vlan 31 priority 0
 ont port native-vlan 2 21 eth 1 vlan 31 priority 0
 ont port native-vlan 2 22 eth 1 vlan 31 priority 0
 ont port native-vlan 2 23 eth 1 vlan 31 priority 0
 ont port native-vlan 2 25 eth 1 vlan 31 priority 0
 ont port native-vlan 2 26 eth 1 vlan 31 priority 0
 ont port native-vlan 2 29 eth 1 vlan 31 priority 0
 ont port native-vlan 2 31 eth 1 vlan 31 priority 0
 ont port native-vlan 2 33 eth 1 vlan 31 priority 0
 ont port native-vlan 2 34 eth 1 vlan 31 priority 0
 ont port native-vlan 2 36 eth 1 vlan 31 priority 0
 ont port native-vlan 2 39 eth 1 vlan 31 priority 0
 ont port native-vlan 2 40 eth 1 vlan 31 priority 0
 ont port native-vlan 2 41 eth 1 vlan 31 priority 0
 ont port native-vlan 2 42 eth 1 vlan 31 priority 0
 ont port native-vlan 2 43 eth 1 vlan 31 priority 0
 ont port native-vlan 2 44 eth 1 vlan 31 priority 0
 ont port native-vlan 2 46 eth 1 vlan 31 priority 0
 ont port native-vlan 2 51 eth 1 vlan 31 priority 0
 ont port native-vlan 2 53 eth 1 vlan 31 priority 0
 ont port native-vlan 3 0 eth 1 vlan 31 priority 0
 ont port native-vlan 3 1 eth 1 vlan 31 priority 0
 ont port native-vlan 3 2 eth 1 vlan 31 priority 0
 ont port native-vlan 3 3 eth 1 vlan 31 priority 0
 ont port native-vlan 3 4 eth 1 vlan 31 priority 0
 ont port native-vlan 3 6 eth 1 vlan 31 priority 0
 ont port native-vlan 3 7 eth 1 vlan 31 priority 0
 ont port native-vlan 3 8 eth 1 vlan 31 priority 0
 ont port native-vlan 3 9 eth 1 vlan 31 priority 0
 ont port native-vlan 3 10 eth 1 vlan 31 priority 0
 ont port native-vlan 3 11 eth 1 vlan 31 priority 0
 ont port native-vlan 3 13 eth 1 vlan 31 priority 0
 ont port native-vlan 3 14 eth 1 vlan 31 priority 0
 ont port native-vlan 3 16 eth 1 vlan 31 priority 0
 ont port native-vlan 3 18 eth 1 vlan 31 priority 0
 ont port native-vlan 3 19 eth 1 vlan 31 priority 0
 ont port native-vlan 3 20 eth 1 vlan 31 priority 0
 ont port native-vlan 3 22 eth 1 vlan 31 priority 0
 ont port native-vlan 3 23 eth 1 vlan 31 priority 0
 ont port native-vlan 3 47 eth 1 vlan 31 priority 0
 ont port native-vlan 5 0 eth 1 vlan 31 priority 0
 ont port native-vlan 5 1 eth 1 vlan 31 priority 0
 ont port native-vlan 5 2 eth 1 vlan 31 priority 0
 ont port native-vlan 5 4 eth 1 vlan 31 priority 0
 ont port native-vlan 5 5 eth 1 vlan 31 priority 0
 ont port native-vlan 5 6 eth 1 vlan 31 priority 0
 ont port native-vlan 5 7 eth 1 vlan 31 priority 0
 ont port native-vlan 5 8 eth 1 vlan 31 priority 0
 ont port native-vlan 5 9 eth 1 vlan 31 priority 0
 ont port native-vlan 5 10 eth 1 vlan 31 priority 0
 ont port native-vlan 5 11 eth 1 vlan 31 priority 0
 ont port native-vlan 5 12 eth 1 vlan 31 priority 0
 ont port native-vlan 5 13 eth 1 vlan 31 priority 0
 ont port native-vlan 5 14 eth 1 vlan 31 priority 0
 ont port native-vlan 5 15 eth 1 vlan 31 priority 0
 ont port native-vlan 5 16 eth 1 vlan 31 priority 0
 ont port native-vlan 5 17 eth 1 vlan 31 priority 0
 ont port native-vlan 5 18 eth 1 vlan 31 priority 0
 ont port native-vlan 5 19 eth 1 vlan 31 priority 0
 ont port native-vlan 5 20 eth 1 vlan 31 priority 0
 ont port native-vlan 5 21 eth 1 vlan 31 priority 0
 ont port native-vlan 5 22 eth 1 vlan 31 priority 0
 ont port native-vlan 5 23 eth 1 vlan 31 priority 0
 ont port native-vlan 5 24 eth 1 vlan 31 priority 0
 ont port native-vlan 5 26 eth 1 vlan 31 priority 0
 ont port native-vlan 5 29 eth 1 vlan 31 priority 0
 ont port native-vlan 5 30 eth 1 vlan 31 priority 0
 ont port native-vlan 5 31 eth 1 vlan 31 priority 0
 ont port native-vlan 5 32 eth 1 vlan 31 priority 0
 ont port native-vlan 5 33 eth 1 vlan 31 priority 0
 ont port native-vlan 5 34 eth 1 vlan 31 priority 0
 ont port native-vlan 5 35 eth 1 vlan 31 priority 0
 ont port native-vlan 5 36 eth 1 vlan 31 priority 0
 ont port native-vlan 5 37 eth 1 vlan 31 priority 0
 ont port native-vlan 5 38 eth 1 vlan 31 priority 0
 ont port native-vlan 5 39 eth 1 vlan 31 priority 0
 ont port native-vlan 5 40 eth 1 vlan 31 priority 0
 ont port native-vlan 5 41 eth 1 vlan 31 priority 0
 ont port native-vlan 5 42 eth 1 vlan 31 priority 0
 ont port native-vlan 5 44 eth 1 vlan 31 priority 0
 ont port native-vlan 5 45 eth 1 vlan 31 priority 0
 ont port native-vlan 5 46 eth 1 vlan 31 priority 0
 ont port native-vlan 5 47 eth 1 vlan 31 priority 0
 ont port native-vlan 5 48 eth 1 vlan 31 priority 0
 ont port native-vlan 5 49 eth 1 vlan 31 priority 0
 ont port native-vlan 5 50 eth 1 vlan 31 priority 0
 ont port native-vlan 5 51 eth 1 vlan 31 priority 0
 ont port native-vlan 5 52 eth 1 vlan 31 priority 0
 ont port native-vlan 5 53 eth 1 vlan 31 priority 0
 ont port native-vlan 5 55 eth 1 vlan 31 priority 0
 ont port native-vlan 5 56 eth 1 vlan 31 priority 0
 ont port native-vlan 5 58 eth 1 vlan 31 priority 0
 ont port native-vlan 5 59 eth 1 vlan 31 priority 0
 ont port native-vlan 5 61 eth 1 vlan 31 priority 0
 ont port native-vlan 5 64 eth 1 vlan 31 priority 0
 ont port native-vlan 5 68 eth 1 vlan 31 priority 0
 ont port native-vlan 5 69 eth 1 vlan 31 priority 0
 ont port native-vlan 5 70 eth 1 vlan 31 priority 0
 ont port native-vlan 5 71 eth 1 vlan 31 priority 0
 ont port native-vlan 5 72 eth 1 vlan 31 priority 0
 ont port native-vlan 5 73 eth 1 vlan 31 priority 0
 ont port native-vlan 5 74 eth 1 vlan 31 priority 0
 ont port native-vlan 5 75 eth 1 vlan 31 priority 0
 ont port native-vlan 5 76 eth 1 vlan 31 priority 0
 ont port native-vlan 5 77 eth 1 vlan 31 priority 0
 ont port native-vlan 5 78 eth 1 vlan 31 priority 0
 ont port native-vlan 5 80 eth 1 vlan 31 priority 0
 ont port native-vlan 5 81 eth 1 vlan 31 priority 0
 ont port native-vlan 5 83 eth 1 vlan 31 priority 0
 ont port native-vlan 5 84 eth 1 vlan 31 priority 0
 ont port native-vlan 5 85 eth 1 vlan 31 priority 0
 ont port native-vlan 5 92 eth 1 vlan 31 priority 0
 ont port native-vlan 5 94 eth 1 vlan 31 priority 0
 ont port native-vlan 5 96 eth 1 vlan 31 priority 0
 ont port native-vlan 5 97 eth 1 vlan 31 priority 0
 ont port native-vlan 5 98 eth 1 vlan 31 priority 0
 ont port native-vlan 5 100 eth 1 vlan 31 priority 0
 ont port native-vlan 6 2 eth 1 vlan 31 priority 0
 ont port native-vlan 6 4 eth 1 vlan 31 priority 0
 ont port native-vlan 6 5 eth 1 vlan 31 priority 0
 ont port native-vlan 6 6 eth 1 vlan 31 priority 0
 ont port native-vlan 6 7 eth 1 vlan 31 priority 0
 ont port native-vlan 6 8 eth 1 vlan 31 priority 0
 ont port native-vlan 6 9 eth 1 vlan 31 priority 0
 ont port native-vlan 6 10 eth 1 vlan 31 priority 0
 ont port native-vlan 6 11 eth 1 vlan 31 priority 0
 ont port native-vlan 6 12 eth 1 vlan 31 priority 0
 ont port native-vlan 6 13 eth 1 vlan 31 priority 0
 ont port native-vlan 6 14 eth 1 vlan 31 priority 0
 ont port native-vlan 6 15 eth 1 vlan 31 priority 0
 ont port native-vlan 6 16 eth 1 vlan 31 priority 0
 ont port native-vlan 6 17 eth 1 vlan 31 priority 0
 ont port native-vlan 6 19 eth 1 vlan 31 priority 0
 ont port native-vlan 6 20 eth 1 vlan 31 priority 0
 ont port native-vlan 6 21 eth 1 vlan 31 priority 0
 ont port native-vlan 6 22 eth 1 vlan 31 priority 0
 ont port native-vlan 6 23 eth 1 vlan 31 priority 0
 ont port native-vlan 6 24 eth 1 vlan 31 priority 0
 ont port native-vlan 6 25 eth 1 vlan 31 priority 0
 ont port native-vlan 6 26 eth 1 vlan 31 priority 0
 ont port native-vlan 6 27 eth 1 vlan 31 priority 0
 ont port native-vlan 6 28 eth 1 vlan 31 priority 0
 ont port native-vlan 6 29 eth 1 vlan 31 priority 0
 ont port native-vlan 6 30 eth 1 vlan 31 priority 0
 ont port native-vlan 6 31 eth 1 vlan 31 priority 0
 ont port native-vlan 6 32 eth 1 vlan 31 priority 0
 ont port native-vlan 6 33 eth 1 vlan 31 priority 0
 ont port native-vlan 6 34 eth 1 vlan 31 priority 0
 ont port native-vlan 6 35 eth 1 vlan 31 priority 0
 ont port native-vlan 6 36 eth 1 vlan 31 priority 0
 ont port native-vlan 6 38 eth 1 vlan 31 priority 0
 ont port native-vlan 6 39 eth 1 vlan 31 priority 0
 ont port native-vlan 6 40 eth 1 vlan 31 priority 0
 ont port native-vlan 6 43 eth 1 vlan 31 priority 0
 ont port native-vlan 6 44 eth 1 vlan 31 priority 0
 ont port native-vlan 6 45 eth 1 vlan 31 priority 0
 ont port native-vlan 6 46 eth 1 vlan 31 priority 0
 ont port native-vlan 6 48 eth 1 vlan 31 priority 0
 ont port native-vlan 6 100 eth 1 vlan 31 priority 0
 ont port native-vlan 6 101 eth 1 vlan 31 priority 0
 ont port native-vlan 7 0 eth 1 vlan 31 priority 0
 ont port native-vlan 7 1 eth 1 vlan 31 priority 0
 ont port native-vlan 7 2 eth 1 vlan 31 priority 0
 ont port native-vlan 7 3 eth 1 vlan 31 priority 0
 ont port native-vlan 7 4 eth 1 vlan 31 priority 0
 ont port native-vlan 7 5 eth 1 vlan 31 priority 0
 ont port native-vlan 7 6 eth 1 vlan 31 priority 0
 ont port native-vlan 7 8 eth 1 vlan 31 priority 0
 ont port native-vlan 7 9 eth 1 vlan 31 priority 0
 ont port native-vlan 7 10 eth 1 vlan 31 priority 0
 ont port native-vlan 7 11 eth 1 vlan 31 priority 0
 ont port native-vlan 7 12 eth 1 vlan 31 priority 0
 ont port native-vlan 7 13 eth 1 vlan 31 priority 0
 ont port native-vlan 7 14 eth 1 vlan 31 priority 0
 ont port native-vlan 7 15 eth 1 vlan 31 priority 0
 ont port native-vlan 7 16 eth 1 vlan 31 priority 0
 ont port native-vlan 7 17 eth 1 vlan 31 priority 0
 ont port native-vlan 7 18 eth 1 vlan 31 priority 0
 ont port native-vlan 7 19 eth 1 vlan 31 priority 0
 ont port native-vlan 7 20 eth 1 vlan 31 priority 0
 ont port native-vlan 7 21 eth 1 vlan 31 priority 0
 ont port native-vlan 7 22 eth 1 vlan 31 priority 0
 ont port native-vlan 7 23 eth 1 vlan 31 priority 0
 ont port native-vlan 7 101 eth 1 vlan 31 priority 0
 ont port native-vlan 7 104 eth 1 vlan 31 priority 0
 ont port native-vlan 7 111 eth 1 vlan 31 priority 0
 ont port native-vlan 7 112 eth 1 vlan 31 priority 0
 ont port native-vlan 7 113 eth 1 vlan 31 priority 0
 ont port native-vlan 7 114 eth 1 vlan 31 priority 0
 ont port native-vlan 7 115 eth 1 vlan 31 priority 0
 ont port native-vlan 7 116 eth 1 vlan 31 priority 0
 ont port native-vlan 7 117 eth 1 vlan 31 priority 0
 ont port native-vlan 7 118 eth 1 vlan 31 priority 0
 ont port native-vlan 7 121 eth 1 vlan 31 priority 0
 ont port native-vlan 7 124 eth 1 vlan 31 priority 0
 ont port native-vlan 7 126 eth 1 vlan 31 priority 0
 ont port native-vlan 8 0 eth 1 vlan 31 priority 0
 ont port native-vlan 8 1 eth 1 vlan 31 priority 0
 ont port native-vlan 8 2 eth 1 vlan 31 priority 0
 ont port native-vlan 8 3 eth 1 vlan 31 priority 0
 ont port native-vlan 8 4 eth 1 vlan 31 priority 0
 ont port native-vlan 8 5 eth 1 vlan 31 priority 0
 ont port native-vlan 8 6 eth 1 vlan 31 priority 0
 ont port native-vlan 8 7 eth 1 vlan 31 priority 0
 ont port native-vlan 8 8 eth 1 vlan 31 priority 0
 ont port native-vlan 8 9 eth 1 vlan 31 priority 0
 ont port native-vlan 8 10 eth 1 vlan 31 priority 0
 ont port native-vlan 8 11 eth 1 vlan 31 priority 0
 ont port native-vlan 8 12 eth 1 vlan 31 priority 0
 ont port native-vlan 8 13 eth 1 vlan 31 priority 0
 ont port native-vlan 8 14 eth 1 vlan 31 priority 0
 ont port native-vlan 8 15 eth 1 vlan 31 priority 0
 ont port native-vlan 8 16 eth 1 vlan 31 priority 0
 ont port native-vlan 8 17 eth 1 vlan 31 priority 0
 ont port native-vlan 8 18 eth 1 vlan 31 priority 0
 ont port native-vlan 8 19 eth 1 vlan 31 priority 0
 ont port native-vlan 8 21 eth 1 vlan 31 priority 0
 ont port native-vlan 8 22 eth 1 vlan 31 priority 0
 ont port native-vlan 8 23 eth 1 vlan 31 priority 0
 ont port native-vlan 8 25 eth 1 vlan 31 priority 0
 ont port native-vlan 8 26 eth 1 vlan 31 priority 0
 ont port native-vlan 8 27 eth 1 vlan 31 priority 0
 ont port native-vlan 8 28 eth 1 vlan 31 priority 0
 ont port native-vlan 8 29 eth 1 vlan 31 priority 0
 ont port native-vlan 8 30 eth 1 vlan 31 priority 0
 ont port native-vlan 8 31 eth 1 vlan 31 priority 0
 ont port native-vlan 8 32 eth 1 vlan 31 priority 0
 ont port native-vlan 8 33 eth 1 vlan 31 priority 0
 ont port native-vlan 8 34 eth 1 vlan 31 priority 0
 ont port native-vlan 8 35 eth 1 vlan 31 priority 0
 ont port native-vlan 8 36 eth 1 vlan 31 priority 0
 ont port native-vlan 8 37 eth 1 vlan 31 priority 0
 ont port native-vlan 8 38 eth 1 vlan 31 priority 0
 ont port native-vlan 8 39 eth 1 vlan 31 priority 0
 ont port native-vlan 8 40 eth 1 vlan 31 priority 0
 ont port native-vlan 8 41 eth 1 vlan 31 priority 0
 ont port native-vlan 8 42 eth 1 vlan 31 priority 0
 ont port native-vlan 8 43 eth 1 vlan 31 priority 0
 ont port native-vlan 8 80 eth 1 vlan 31 priority 0
 ont port native-vlan 8 81 eth 1 vlan 31 priority 0
 ont port native-vlan 8 82 eth 1 vlan 31 priority 0
 ont port native-vlan 8 83 eth 1 vlan 31 priority 0
 ont port native-vlan 8 84 eth 1 vlan 31 priority 0
 ont port native-vlan 8 85 eth 1 vlan 31 priority 0
 ont port native-vlan 8 86 eth 1 vlan 31 priority 0
 ont port native-vlan 8 87 eth 1 vlan 31 priority 0
 ont port native-vlan 9 0 eth 1 vlan 31 priority 0
 ont port native-vlan 9 1 eth 1 vlan 31 priority 0
 ont port native-vlan 9 2 eth 1 vlan 31 priority 0
 ont port native-vlan 9 3 eth 1 vlan 31 priority 0
 ont port native-vlan 9 4 eth 1 vlan 31 priority 0
 ont port native-vlan 9 5 eth 1 vlan 31 priority 0
 ont port native-vlan 9 6 eth 1 vlan 31 priority 0
 ont port native-vlan 9 7 eth 1 vlan 31 priority 0
 ont port native-vlan 9 8 eth 1 vlan 31 priority 0
 ont port native-vlan 9 9 eth 1 vlan 31 priority 0
 ont port native-vlan 9 10 eth 1 vlan 31 priority 0
 ont port native-vlan 9 11 eth 1 vlan 31 priority 0
 ont port native-vlan 9 12 eth 1 vlan 31 priority 0
 ont port native-vlan 9 13 eth 1 vlan 31 priority 0
 ont port native-vlan 9 14 eth 1 vlan 31 priority 0
 ont port native-vlan 9 15 eth 1 vlan 31 priority 0
 ont port native-vlan 9 16 eth 1 vlan 31 priority 0
 ont port native-vlan 9 17 eth 1 vlan 31 priority 0
 ont port native-vlan 9 18 eth 1 vlan 31 priority 0
 ont port native-vlan 9 19 eth 1 vlan 31 priority 0
 ont port native-vlan 9 20 eth 1 vlan 31 priority 0
 ont port native-vlan 9 21 eth 1 vlan 31 priority 0
 ont port native-vlan 9 22 eth 1 vlan 31 priority 0
 ont port native-vlan 9 23 eth 1 vlan 31 priority 0
 ont port native-vlan 9 24 eth 1 vlan 31 priority 0
 ont port native-vlan 9 25 eth 1 vlan 31 priority 0
 ont port native-vlan 9 26 eth 1 vlan 31 priority 0
 ont port native-vlan 9 27 eth 1 vlan 31 priority 0
 ont port native-vlan 9 28 eth 1 vlan 31 priority 0
 ont port native-vlan 9 29 eth 1 vlan 31 priority 0
 ont port native-vlan 9 30 eth 1 vlan 31 priority 0
 ont port native-vlan 9 31 eth 1 vlan 31 priority 0
 ont port native-vlan 9 32 eth 1 vlan 31 priority 0
 ont port native-vlan 9 33 eth 1 vlan 31 priority 0
 ont port native-vlan 9 34 eth 1 vlan 31 priority 0
 ont port native-vlan 9 35 eth 1 vlan 31 priority 0
 ont port native-vlan 9 36 eth 1 vlan 31 priority 0
 ont port native-vlan 9 37 eth 1 vlan 31 priority 0
 ont port native-vlan 9 38 eth 1 vlan 31 priority 0
 ont port native-vlan 9 39 eth 1 vlan 31 priority 0
 ont port native-vlan 9 40 eth 1 vlan 31 priority 0
 ont port native-vlan 9 41 eth 1 vlan 31 priority 0
 ont port native-vlan 9 42 eth 1 vlan 31 priority 0
 ont port native-vlan 9 43 eth 1 vlan 31 priority 0
 ont port native-vlan 9 44 eth 1 vlan 31 priority 0
 ont port native-vlan 9 45 eth 1 vlan 31 priority 0
 ont port native-vlan 9 46 eth 1 vlan 31 priority 0
 ont port native-vlan 9 47 eth 1 vlan 31 priority 0
 ont port native-vlan 9 48 eth 1 vlan 31 priority 0
 ont port native-vlan 9 49 eth 1 vlan 31 priority 0
 ont port native-vlan 9 51 eth 1 vlan 31 priority 0
 ont port native-vlan 9 52 eth 1 vlan 31 priority 0
 ont port native-vlan 9 53 eth 1 vlan 31 priority 0
 ont port native-vlan 9 54 eth 1 vlan 31 priority 0
 ont port native-vlan 9 55 eth 1 vlan 31 priority 0
 ont port native-vlan 9 56 eth 1 vlan 31 priority 0
 ont port native-vlan 9 57 eth 1 vlan 31 priority 0
 ont port native-vlan 9 58 eth 1 vlan 31 priority 0
 ont port native-vlan 9 59 eth 1 vlan 31 priority 0
 ont port native-vlan 9 60 eth 1 vlan 31 priority 0
 ont port native-vlan 9 61 eth 1 vlan 31 priority 0
 ont port native-vlan 9 62 eth 1 vlan 31 priority 0
 ont port native-vlan 9 63 eth 1 vlan 31 priority 0
 ont port native-vlan 9 64 eth 1 vlan 31 priority 0
 ont port native-vlan 9 65 eth 1 vlan 31 priority 0
 ont port native-vlan 9 66 eth 1 vlan 31 priority 0
 ont port native-vlan 9 67 eth 1 vlan 31 priority 0
 ont port native-vlan 9 68 eth 1 vlan 31 priority 0
 ont port native-vlan 9 69 eth 1 vlan 31 priority 0
 ont port native-vlan 9 70 eth 1 vlan 31 priority 0
 ont port native-vlan 9 71 eth 1 vlan 31 priority 0
 ont port native-vlan 9 72 eth 1 vlan 31 priority 0
 ont port native-vlan 9 73 eth 1 vlan 31 priority 0
 ont port native-vlan 9 74 eth 1 vlan 31 priority 0
 ont port native-vlan 9 75 eth 1 vlan 31 priority 0
 ont port native-vlan 9 76 eth 1 vlan 31 priority 0
 ont port native-vlan 9 77 eth 1 vlan 31 priority 0
 ont port native-vlan 9 78 eth 1 vlan 31 priority 0
 ont port native-vlan 9 79 eth 1 vlan 31 priority 0
 ont port native-vlan 9 80 eth 1 vlan 31 priority 0
 ont port native-vlan 9 81 eth 1 vlan 31 priority 0
 ont port native-vlan 9 83 eth 1 vlan 31 priority 0
 ont port native-vlan 9 104 eth 1 vlan 31 priority 0
 ont port native-vlan 9 105 eth 1 vlan 31 priority 0
 ont port native-vlan 9 106 eth 1 vlan 31 priority 0
 ont port native-vlan 9 110 eth 1 vlan 31 priority 0
 ont port native-vlan 9 111 eth 1 vlan 31 priority 0
 ont port native-vlan 11 0 eth 1 vlan 31 priority 0
 ont port native-vlan 11 4 eth 1 vlan 31 priority 0
 ont port native-vlan 11 6 eth 1 vlan 31 priority 0
 ont port native-vlan 11 7 eth 1 vlan 31 priority 0
 ont port native-vlan 11 8 eth 1 vlan 31 priority 0
 ont port native-vlan 11 9 eth 1 vlan 31 priority 0
 ont port native-vlan 11 10 eth 1 vlan 31 priority 0
 ont port native-vlan 11 11 eth 1 vlan 31 priority 0
 ont port native-vlan 11 12 eth 1 vlan 31 priority 0
 ont port native-vlan 11 13 eth 1 vlan 31 priority 0
 ont port native-vlan 11 14 eth 1 vlan 31 priority 0
 ont port native-vlan 11 15 eth 1 vlan 31 priority 0
 ont port native-vlan 11 16 eth 1 vlan 31 priority 0
 ont port native-vlan 11 17 eth 1 vlan 31 priority 0
 ont port native-vlan 11 18 eth 1 vlan 31 priority 0
 ont port native-vlan 11 19 eth 1 vlan 31 priority 0
 ont port native-vlan 11 20 eth 1 vlan 31 priority 0
 ont port native-vlan 11 22 eth 1 vlan 31 priority 0
 ont port native-vlan 11 23 eth 1 vlan 31 priority 0
 ont port native-vlan 11 26 eth 1 vlan 31 priority 0
 ont port native-vlan 11 27 eth 1 vlan 31 priority 0
 ont port native-vlan 11 29 eth 1 vlan 31 priority 0
 ont port native-vlan 11 30 eth 1 vlan 31 priority 0
 ont port native-vlan 11 31 eth 1 vlan 31 priority 0
 ont port native-vlan 11 32 eth 1 vlan 31 priority 0
 ont port native-vlan 11 37 eth 1 vlan 3256 priority 0
 ont port native-vlan 11 44 eth 1 vlan 31 priority 0
 ont port native-vlan 11 47 eth 1 vlan 31 priority 0
 ont port native-vlan 13 0 eth 1 vlan 31 priority 0
 ont port native-vlan 13 1 eth 1 vlan 31 priority 0
 ont port native-vlan 13 2 eth 1 vlan 31 priority 0
 ont port native-vlan 13 3 eth 1 vlan 31 priority 0
 ont port native-vlan 13 4 eth 1 vlan 31 priority 0
 ont port native-vlan 13 5 eth 1 vlan 31 priority 0
 ont port native-vlan 13 6 eth 1 vlan 31 priority 0
 ont port native-vlan 13 7 eth 1 vlan 31 priority 0
 ont port native-vlan 13 8 eth 1 vlan 31 priority 0
 ont port native-vlan 13 9 eth 1 vlan 31 priority 0
 ont port native-vlan 13 10 eth 1 vlan 31 priority 0
 ont port native-vlan 13 11 eth 1 vlan 31 priority 0
 ont port native-vlan 13 12 eth 1 vlan 31 priority 0
 ont port native-vlan 13 13 eth 1 vlan 31 priority 0
 ont port native-vlan 13 14 eth 1 vlan 31 priority 0
 ont port native-vlan 13 15 eth 1 vlan 31 priority 0
 ont port native-vlan 13 16 eth 1 vlan 31 priority 0
 ont port native-vlan 13 17 eth 1 vlan 31 priority 0
 ont port native-vlan 13 18 eth 1 vlan 31 priority 0
 ont port native-vlan 13 19 eth 1 vlan 31 priority 0
 ont port native-vlan 13 20 eth 1 vlan 31 priority 0
 ont port native-vlan 13 22 eth 1 vlan 31 priority 0
 ont port native-vlan 13 23 eth 1 vlan 31 priority 0
 ont port native-vlan 13 24 eth 1 vlan 31 priority 0
 ont port native-vlan 13 25 eth 1 vlan 31 priority 0
 ont port native-vlan 13 26 eth 1 vlan 31 priority 0
 ont port native-vlan 13 27 eth 1 vlan 31 priority 0
 ont port native-vlan 13 28 eth 1 vlan 31 priority 0
 ont port native-vlan 13 29 eth 1 vlan 31 priority 0
 ont port native-vlan 13 30 eth 1 vlan 31 priority 0
 ont port native-vlan 13 32 eth 1 vlan 31 priority 0
 ont port native-vlan 13 35 eth 1 vlan 31 priority 0
 ont port native-vlan 13 37 eth 1 vlan 31 priority 0
 ont port native-vlan 13 38 eth 1 vlan 31 priority 0
 ont port native-vlan 13 39 eth 1 vlan 31 priority 0
 ont port native-vlan 13 43 eth 1 vlan 31 priority 0
 ont port native-vlan 13 44 eth 1 vlan 31 priority 0
 ont port native-vlan 13 46 eth 1 vlan 31 priority 0
 ont port native-vlan 13 48 eth 1 vlan 31 priority 0
 ont port native-vlan 13 49 eth 1 vlan 31 priority 0
 ont port native-vlan 13 51 eth 1 vlan 31 priority 0
 ont port native-vlan 13 52 eth 1 vlan 31 priority 0
 ont port native-vlan 13 53 eth 1 vlan 31 priority 0
 ont port native-vlan 13 54 eth 1 vlan 31 priority 0
 ont port native-vlan 13 55 eth 1 vlan 31 priority 0
 ont port native-vlan 13 56 eth 1 vlan 31 priority 0
 ont port native-vlan 13 57 eth 1 vlan 31 priority 0
 ont port native-vlan 13 58 eth 1 vlan 31 priority 0
 ont port native-vlan 13 61 eth 1 vlan 31 priority 0
 ont port native-vlan 13 64 eth 1 vlan 31 priority 0
 ont port native-vlan 13 65 eth 1 vlan 31 priority 0
 ont port native-vlan 13 74 eth 1 vlan 31 priority 0
 ont port native-vlan 13 79 eth 1 vlan 31 priority 0
#
[platform-config]
  <platform-config>
 autosave type data
 autosave interval on
 autosave interval 1442
 autosave time off
 autosave time 01:30:00
 autosave type configuration
 autosave interval on
 autosave interval 1442
 autosave time on
 autosave time 01:00:00
 autosave interval configuration 480
#
[emu-config]
  <emu-config>
 emu add 0 fan 0 1  "H902FMSA"
#
[bbs-config]
  <bbs-config>
 service-port 0 vlan 31 gpon 0/1/0 ont 127 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1 vlan 31 gpon 0/1/0 ont 24 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2 vlan 31 gpon 0/1/0 ont 125 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 3 vlan 31 gpon 0/1/0 ont 124 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 4 vlan 31 gpon 0/1/0 ont 123 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 5 vlan 31 gpon 0/1/0 ont 122 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 6 vlan 31 gpon 0/1/0 ont 121 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 7 vlan 31 gpon 0/1/0 ont 120 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 8 vlan 31 gpon 0/1/0 ont 119 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 9 vlan 31 gpon 0/1/0 ont 118 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 10 vlan 31 gpon 0/1/0 ont 9 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 11 vlan 31 gpon 0/1/0 ont 116 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 12 vlan 31 gpon 0/1/0 ont 115 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 13 vlan 31 gpon 0/1/0 ont 114 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 14 vlan 31 gpon 0/1/3 ont 2 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 15 vlan 31 gpon 0/1/0 ont 112 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 16 vlan 31 gpon 0/1/0 ont 110 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 17 vlan 31 gpon 0/1/0 ont 108 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 18 vlan 31 gpon 0/1/0 ont 107 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 19 vlan 31 gpon 0/1/0 ont 25 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 20 vlan 31 gpon 0/1/0 ont 8 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 21 vlan 31 gpon 0/1/3 ont 3 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 22 vlan 31 gpon 0/1/0 ont 26 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 23 vlan 31 gpon 0/1/0 ont 27 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 24 vlan 31 gpon 0/1/0 ont 28 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 25 vlan 31 gpon 0/1/0 ont 29 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 26 vlan 31 gpon 0/1/0 ont 30 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 27 vlan 31 gpon 0/1/0 ont 31 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 28 vlan 31 gpon 0/1/0 ont 32 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 29 vlan 31 gpon 0/1/0 ont 33 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 31 vlan 31 gpon 0/1/2 ont 0 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 33 vlan 31 gpon 0/1/0 ont 37 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 36 vlan 161 gpon 0/1/11 ont 127 gemport 161 multi-service user-vlan 161 tag-transform translate
 service-port 37 vlan 31 gpon 0/1/1 ont 5 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 38 vlan 31 gpon 0/1/1 ont 6 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 39 vlan 31 gpon 0/1/1 ont 7 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 40 vlan 31 gpon 0/1/1 ont 8 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 41 vlan 31 gpon 0/1/2 ont 1 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 42 vlan 31 gpon 0/1/0 ont 42 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 43 vlan 31 gpon 0/1/0 ont 43 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 44 vlan 31 gpon 0/1/0 ont 35 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 46 vlan 31 gpon 0/1/3 ont 46 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 47 vlan 31 gpon 0/1/3 ont 47 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 48 vlan 31 gpon 0/1/3 ont 48 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 49 vlan 31 gpon 0/1/2 ont 2 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 50 vlan 31 gpon 0/1/13 ont 74 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 51 vlan 31 gpon 0/1/13 ont 0 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 52 vlan 31 gpon 0/1/13 ont 1 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 53 vlan 31 gpon 0/1/13 ont 2 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 54 vlan 31 gpon 0/1/13 ont 3 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 55 vlan 31 gpon 0/1/13 ont 4 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 57 vlan 31 gpon 0/1/13 ont 6 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 58 vlan 31 gpon 0/1/13 ont 7 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 59 vlan 31 gpon 0/1/13 ont 8 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 60 vlan 31 gpon 0/1/13 ont 9 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 61 vlan 31 gpon 0/1/13 ont 10 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 62 vlan 31 gpon 0/1/13 ont 11 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 63 vlan 31 gpon 0/1/13 ont 12 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 64 vlan 31 gpon 0/1/13 ont 13 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 65 vlan 31 gpon 0/1/13 ont 14 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 66 vlan 31 gpon 0/1/13 ont 15 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 67 vlan 31 gpon 0/1/13 ont 16 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 68 vlan 31 gpon 0/1/13 ont 17 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 69 vlan 31 gpon 0/1/13 ont 18 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 70 vlan 31 gpon 0/1/3 ont 70 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 71 vlan 31 gpon 0/1/13 ont 19 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 72 vlan 31 gpon 0/1/13 ont 20 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 74 vlan 31 gpon 0/1/13 ont 22 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 75 vlan 31 gpon 0/1/13 ont 23 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 76 vlan 31 gpon 0/1/5 ont 80 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 77 vlan 31 gpon 0/1/13 ont 25 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 78 vlan 31 gpon 0/1/5 ont 78 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 79 vlan 31 gpon 0/1/13 ont 27 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 80 vlan 31 gpon 0/1/13 ont 28 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 81 vlan 31 gpon 0/1/13 ont 29 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 82 vlan 31 gpon 0/1/13 ont 30 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 83 vlan 31 gpon 0/1/5 ont 81 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 84 vlan 31 gpon 0/1/13 ont 32 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 85 vlan 31 gpon 0/1/1 ont 21 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 86 vlan 31 gpon 0/1/0 ont 38 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 87 vlan 31 gpon 0/1/13 ont 35 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 88 vlan 31 gpon 0/1/1 ont 4 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 90 vlan 31 gpon 0/1/13 ont 38 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 91 vlan 31 gpon 0/1/13 ont 39 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 92 vlan 31 gpon 0/1/1 ont 22 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 93 vlan 31 gpon 0/1/13 ont 76 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 94 vlan 31 gpon 0/1/5 ont 83 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 95 vlan 31 gpon 0/1/13 ont 43 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 96 vlan 31 gpon 0/1/13 ont 44 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 97 vlan 31 gpon 0/1/2 ont 3 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 99 vlan 31 gpon 0/1/2 ont 5 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 100 vlan 31 gpon 0/1/13 ont 48 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 101 vlan 31 gpon 0/1/13 ont 49 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 103 vlan 31 gpon 0/1/13 ont 51 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 104 vlan 31 gpon 0/1/13 ont 52 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 105 vlan 31 gpon 0/1/13 ont 53 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 106 vlan 31 gpon 0/1/0 ont 106 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 107 vlan 31 gpon 0/1/13 ont 54 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 108 vlan 31 gpon 0/1/13 ont 55 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 109 vlan 31 gpon 0/1/13 ont 56 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 111 vlan 31 gpon 0/1/13 ont 58 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 112 vlan 31 gpon 0/1/5 ont 84 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 113 vlan 31 gpon 0/1/0 ont 113 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 114 vlan 31 gpon 0/1/13 ont 60 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 115 vlan 31 gpon 0/1/0 ont 4 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 116 vlan 31 gpon 0/1/13 ont 61 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 117 vlan 31 gpon 0/1/5 ont 85 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 119 vlan 31 gpon 0/1/13 ont 5 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 120 vlan 31 gpon 0/1/13 ont 26 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 122 vlan 31 gpon 0/1/13 ont 64 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 123 vlan 31 gpon 0/1/13 ont 65 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 125 vlan 31 gpon 0/1/2 ont 6 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 126 vlan 31 gpon 0/1/2 ont 8 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 127 vlan 31 gpon 0/1/13 ont 50 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 128 vlan 31 gpon 0/1/13 ont 41 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 129 vlan 31 gpon 0/1/13 ont 33 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 130 vlan 31 gpon 0/1/13 ont 34 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 131 vlan 31 gpon 0/1/13 ont 37 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 132 vlan 31 gpon 0/1/13 ont 59 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 134 vlan 31 gpon 0/1/13 ont 67 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 135 vlan 31 gpon 0/1/13 ont 36 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 136 vlan 31 gpon 0/1/2 ont 50 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 137 vlan 31 gpon 0/1/13 ont 66 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 138 vlan 31 gpon 0/1/13 ont 69 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 139 vlan 31 gpon 0/1/13 ont 70 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 140 vlan 31 gpon 0/1/13 ont 71 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 141 vlan 31 gpon 0/1/13 ont 72 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 142 vlan 31 gpon 0/1/1 ont 9 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 143 vlan 31 gpon 0/1/13 ont 40 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 144 vlan 31 gpon 0/1/13 ont 45 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 145 vlan 31 gpon 0/1/2 ont 9 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 146 vlan 31 gpon 0/1/2 ont 10 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 147 vlan 31 gpon 0/1/1 ont 10 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 148 vlan 31 gpon 0/1/1 ont 11 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 151 vlan 31 gpon 0/1/1 ont 14 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 152 vlan 31 gpon 0/1/1 ont 15 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 153 vlan 31 gpon 0/1/1 ont 16 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 154 vlan 31 gpon 0/1/1 ont 17 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 155 vlan 31 gpon 0/1/1 ont 18 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 157 vlan 31 gpon 0/1/1 ont 20 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 160 vlan 31 gpon 0/1/2 ont 11 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 161 vlan 31 gpon 0/1/13 ont 24 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 166 vlan 31 gpon 0/1/2 ont 14 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 167 vlan 31 gpon 0/1/1 ont 23 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 168 vlan 31 gpon 0/1/11 ont 0 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 169 vlan 31 gpon 0/1/2 ont 7 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 170 vlan 31 gpon 0/1/2 ont 15 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 171 vlan 31 gpon 0/1/11 ont 1 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 172 vlan 31 gpon 0/1/2 ont 16 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 175 vlan 31 gpon 0/1/2 ont 17 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 176 vlan 31 gpon 0/1/1 ont 24 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 178 vlan 31 gpon 0/1/2 ont 19 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 179 vlan 31 gpon 0/1/2 ont 20 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 180 vlan 31 gpon 0/1/2 ont 21 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 181 vlan 31 gpon 0/1/2 ont 22 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 182 vlan 31 gpon 0/1/2 ont 23 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 184 vlan 31 gpon 0/1/2 ont 25 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 185 vlan 31 gpon 0/1/2 ont 26 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 190 vlan 31 gpon 0/1/2 ont 24 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 191 vlan 31 gpon 0/1/1 ont 25 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 193 vlan 31 gpon 0/1/2 ont 29 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 194 vlan 31 gpon 0/1/2 ont 30 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 196 vlan 31 gpon 0/1/2 ont 31 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 197 vlan 31 gpon 0/1/2 ont 32 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 198 vlan 31 gpon 0/1/2 ont 33 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 200 vlan 31 gpon 0/1/2 ont 34 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 201 vlan 31 gpon 0/1/2 ont 35 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 202 vlan 31 gpon 0/1/2 ont 36 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 203 vlan 31 gpon 0/1/1 ont 27 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 205 vlan 31 gpon 0/1/2 ont 18 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 207 vlan 31 gpon 0/1/1 ont 28 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 209 vlan 31 gpon 0/1/3 ont 5 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 210 vlan 31 gpon 0/1/2 ont 39 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 211 vlan 31 gpon 0/1/2 ont 40 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 212 vlan 31 gpon 0/1/2 ont 41 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 213 vlan 31 gpon 0/1/2 ont 42 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 214 vlan 31 gpon 0/1/2 ont 43 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 217 vlan 31 gpon 0/1/2 ont 46 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 218 vlan 31 gpon 0/1/1 ont 29 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 219 vlan 31 gpon 0/1/1 ont 30 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 220 vlan 31 gpon 0/1/1 ont 31 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 221 vlan 31 gpon 0/1/1 ont 32 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 222 vlan 31 gpon 0/1/1 ont 33 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 223 vlan 31 gpon 0/1/1 ont 34 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 224 vlan 31 gpon 0/1/1 ont 35 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 225 vlan 31 gpon 0/1/1 ont 36 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 227 vlan 31 gpon 0/1/1 ont 38 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 228 vlan 31 gpon 0/1/2 ont 45 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 229 vlan 31 gpon 0/1/2 ont 47 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 230 vlan 31 gpon 0/1/13 ont 21 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 231 vlan 31 gpon 0/1/0 ont 13 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 232 vlan 31 gpon 0/1/2 ont 48 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 233 vlan 31 gpon 0/1/3 ont 24 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 235 vlan 31 gpon 0/1/13 ont 42 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 237 vlan 31 gpon 0/1/13 ont 75 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 238 vlan 31 gpon 0/1/11 ont 3 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 240 vlan 31 gpon 0/1/1 ont 37 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 241 vlan 31 gpon 0/1/2 ont 28 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 242 vlan 31 gpon 0/1/0 ont 20 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 245 vlan 31 gpon 0/1/2 ont 37 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 247 vlan 31 gpon 0/1/1 ont 26 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 248 vlan 31 gpon 0/1/0 ont 22 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 249 vlan 31 gpon 0/1/2 ont 49 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 250 vlan 31 gpon 0/1/3 ont 27 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 251 vlan 31 gpon 0/1/13 ont 31 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 252 vlan 31 gpon 0/1/3 ont 28 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 253 vlan 31 gpon 0/1/13 ont 77 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 255 vlan 31 gpon 0/1/11 ont 4 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 256 vlan 31 gpon 0/1/11 ont 5 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 257 vlan 31 gpon 0/1/11 ont 6 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 258 vlan 31 gpon 0/1/11 ont 7 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 259 vlan 31 gpon 0/1/11 ont 8 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 261 vlan 31 gpon 0/1/11 ont 9 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 264 vlan 31 gpon 0/1/11 ont 10 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 265 vlan 31 gpon 0/1/11 ont 11 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 268 vlan 31 gpon 0/1/11 ont 12 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 269 vlan 31 gpon 0/1/11 ont 13 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 270 vlan 31 gpon 0/1/11 ont 14 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 271 vlan 31 gpon 0/1/11 ont 15 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 272 vlan 31 gpon 0/1/11 ont 16 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 275 vlan 31 gpon 0/1/11 ont 17 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 276 vlan 31 gpon 0/1/11 ont 19 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 279 vlan 31 gpon 0/1/11 ont 18 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 281 vlan 31 gpon 0/1/11 ont 20 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 282 vlan 31 gpon 0/1/11 ont 22 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 285 vlan 31 gpon 0/1/11 ont 24 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 286 vlan 31 gpon 0/1/11 ont 25 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 287 vlan 31 gpon 0/1/11 ont 21 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 288 vlan 31 gpon 0/1/11 ont 26 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 289 vlan 31 gpon 0/1/1 ont 19 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 291 vlan 31 gpon 0/1/11 ont 27 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 293 vlan 31 gpon 0/1/11 ont 29 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 294 vlan 31 gpon 0/1/11 ont 30 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 295 vlan 31 gpon 0/1/11 ont 31 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 296 vlan 31 gpon 0/1/11 ont 32 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 298 vlan 31 gpon 0/1/11 ont 33 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 299 vlan 31 gpon 0/1/11 ont 34 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 300 vlan 31 gpon 0/1/11 ont 28 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 301 vlan 31 gpon 0/1/11 ont 35 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 302 vlan 31 gpon 0/1/11 ont 36 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 303 vlan 31 gpon 0/1/2 ont 38 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 304 vlan 31 gpon 0/1/5 ont 0 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 305 vlan 31 gpon 0/1/5 ont 1 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 306 vlan 31 gpon 0/1/5 ont 2 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 308 vlan 31 gpon 0/1/5 ont 4 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 310 vlan 31 gpon 0/1/5 ont 6 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 311 vlan 31 gpon 0/1/5 ont 7 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 312 vlan 31 gpon 0/1/5 ont 8 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 313 vlan 31 gpon 0/1/5 ont 9 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 314 vlan 31 gpon 0/1/5 ont 10 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 315 vlan 31 gpon 0/1/5 ont 11 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 316 vlan 31 gpon 0/1/5 ont 12 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 317 vlan 31 gpon 0/1/5 ont 13 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 319 vlan 31 gpon 0/1/5 ont 15 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 320 vlan 31 gpon 0/1/5 ont 16 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 321 vlan 31 gpon 0/1/5 ont 17 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 322 vlan 31 gpon 0/1/5 ont 18 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 324 vlan 31 gpon 0/1/5 ont 20 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 325 vlan 31 gpon 0/1/5 ont 21 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 326 vlan 31 gpon 0/1/5 ont 19 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 327 vlan 31 gpon 0/1/5 ont 22 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 328 vlan 31 gpon 0/1/5 ont 23 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 329 vlan 31 gpon 0/1/5 ont 24 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 331 vlan 31 gpon 0/1/5 ont 26 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 333 vlan 31 gpon 0/1/5 ont 29 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 334 vlan 31 gpon 0/1/5 ont 30 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 335 vlan 31 gpon 0/1/5 ont 31 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 336 vlan 31 gpon 0/1/5 ont 32 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 337 vlan 31 gpon 0/1/5 ont 33 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 338 vlan 31 gpon 0/1/5 ont 34 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 339 vlan 31 gpon 0/1/5 ont 35 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 340 vlan 31 gpon 0/1/5 ont 36 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 341 vlan 31 gpon 0/1/5 ont 37 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 342 vlan 31 gpon 0/1/5 ont 38 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 343 vlan 31 gpon 0/1/5 ont 39 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 344 vlan 31 gpon 0/1/5 ont 40 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 345 vlan 31 gpon 0/1/5 ont 41 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 346 vlan 31 gpon 0/1/5 ont 42 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 348 vlan 31 gpon 0/1/5 ont 44 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 349 vlan 31 gpon 0/1/5 ont 45 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 350 vlan 31 gpon 0/1/5 ont 46 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 351 vlan 31 gpon 0/1/5 ont 47 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 352 vlan 31 gpon 0/1/5 ont 48 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 353 vlan 31 gpon 0/1/5 ont 49 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 354 vlan 31 gpon 0/1/5 ont 50 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 356 vlan 31 gpon 0/1/5 ont 52 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 357 vlan 31 gpon 0/1/5 ont 53 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 359 vlan 31 gpon 0/1/5 ont 55 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 360 vlan 31 gpon 0/1/5 ont 56 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 362 vlan 31 gpon 0/1/5 ont 58 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 363 vlan 31 gpon 0/1/5 ont 59 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 367 vlan 31 gpon 0/1/5 ont 63 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 370 vlan 31 gpon 0/1/5 ont 66 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 373 vlan 31 gpon 0/1/5 ont 68 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 374 vlan 31 gpon 0/1/5 ont 69 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 375 vlan 31 gpon 0/1/5 ont 70 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 376 vlan 31 gpon 0/1/5 ont 71 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 377 vlan 31 gpon 0/1/5 ont 72 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 379 vlan 31 gpon 0/1/5 ont 74 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 380 vlan 31 gpon 0/1/5 ont 75 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 381 vlan 31 gpon 0/1/5 ont 76 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 383 vlan 31 gpon 0/1/5 ont 77 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 384 vlan 31 gpon 0/1/5 ont 65 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 387 vlan 31 gpon 0/1/5 ont 61 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 388 vlan 31 gpon 0/1/5 ont 64 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 391 vlan 31 gpon 0/1/5 ont 28 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 392 vlan 31 gpon 0/1/5 ont 67 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 393 vlan 31 gpon 0/1/5 ont 87 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 395 vlan 31 gpon 0/1/5 ont 89 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 396 vlan 31 gpon 0/1/5 ont 90 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 398 vlan 31 gpon 0/1/5 ont 60 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 400 vlan 31 gpon 0/1/5 ont 79 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 403 vlan 31 gpon 0/1/5 ont 82 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 404 vlan 31 gpon 0/1/3 ont 21 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 408 vlan 31 gpon 0/1/5 ont 54 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 410 vlan 31 gpon 0/1/1 ont 39 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 413 vlan 31 gpon 0/1/1 ont 3 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 416 vlan 31 gpon 0/1/5 ont 88 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 417 vlan 31 gpon 0/1/5 ont 92 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 418 vlan 31 gpon 0/1/3 ont 17 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 419 vlan 31 gpon 0/1/1 ont 2 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 420 vlan 31 gpon 0/1/5 ont 43 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 421 vlan 31 gpon 0/1/5 ont 14 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 422 vlan 31 gpon 0/1/5 ont 3 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 423 vlan 31 gpon 0/1/5 ont 62 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 425 vlan 31 gpon 0/1/11 ont 38 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 427 vlan 31 gpon 0/1/13 ont 63 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 428 vlan 31 gpon 0/1/2 ont 4 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 429 vlan 31 gpon 0/1/11 ont 39 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 432 vlan 31 gpon 0/1/11 ont 40 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 434 vlan 31 gpon 0/1/0 ont 41 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 435 vlan 31 gpon 0/1/5 ont 93 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 436 vlan 31 gpon 0/1/5 ont 27 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 437 vlan 31 gpon 0/1/13 ont 47 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 442 vlan 31 gpon 0/1/1 ont 12 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 446 vlan 3256 gpon 0/1/11 ont 37 gemport 256 multi-service user-vlan 3256 tag-transform translate
 service-port 448 vlan 31 gpon 0/1/3 ont 29 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 449 vlan 31 gpon 0/1/11 ont 41 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 450 vlan 31 gpon 0/1/5 ont 94 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 451 vlan 31 gpon 0/1/1 ont 40 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 452 vlan 31 gpon 0/1/11 ont 42 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 453 vlan 31 gpon 0/1/5 ont 5 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 455 vlan 31 gpon 0/1/0 ont 23 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 456 vlan 31 gpon 0/1/13 ont 78 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 458 vlan 31 gpon 0/1/5 ont 95 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 459 vlan 31 gpon 0/1/11 ont 43 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 465 vlan 31 gpon 0/1/6 ont 4 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 467 vlan 31 gpon 0/1/6 ont 5 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 468 vlan 31 gpon 0/1/6 ont 6 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 469 vlan 31 gpon 0/1/6 ont 7 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 470 vlan 31 gpon 0/1/6 ont 8 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 471 vlan 31 gpon 0/1/6 ont 9 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 472 vlan 31 gpon 0/1/6 ont 10 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 473 vlan 31 gpon 0/1/6 ont 11 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 474 vlan 31 gpon 0/1/6 ont 12 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 475 vlan 31 gpon 0/1/6 ont 13 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 476 vlan 31 gpon 0/1/6 ont 14 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 477 vlan 31 gpon 0/1/6 ont 15 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 478 vlan 31 gpon 0/1/6 ont 16 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 479 vlan 31 gpon 0/1/6 ont 17 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 481 vlan 31 gpon 0/1/6 ont 19 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 482 vlan 31 gpon 0/1/6 ont 20 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 483 vlan 31 gpon 0/1/6 ont 21 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 484 vlan 31 gpon 0/1/6 ont 22 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 485 vlan 31 gpon 0/1/6 ont 2 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 486 vlan 31 gpon 0/1/6 ont 23 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 487 vlan 31 gpon 0/1/6 ont 24 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 488 vlan 31 gpon 0/1/6 ont 25 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 489 vlan 31 gpon 0/1/6 ont 26 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 491 vlan 31 gpon 0/1/6 ont 28 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 494 vlan 31 gpon 0/1/6 ont 30 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 495 vlan 31 gpon 0/1/6 ont 29 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 497 vlan 31 gpon 0/1/6 ont 32 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 498 vlan 31 gpon 0/1/6 ont 33 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 501 vlan 31 gpon 0/1/6 ont 0 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 503 vlan 31 gpon 0/1/6 ont 34 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 504 vlan 31 gpon 0/1/6 ont 35 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 505 vlan 31 gpon 0/1/6 ont 36 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 508 vlan 31 gpon 0/1/6 ont 37 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 510 vlan 31 gpon 0/1/6 ont 38 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 511 vlan 31 gpon 0/1/6 ont 39 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 512 vlan 31 gpon 0/1/6 ont 40 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 514 vlan 31 gpon 0/1/6 ont 1 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 515 vlan 31 gpon 0/1/6 ont 41 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 516 vlan 31 gpon 0/1/6 ont 42 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 520 vlan 31 gpon 0/1/6 ont 27 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 524 vlan 31 gpon 0/1/6 ont 43 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 525 vlan 31 gpon 0/1/1 ont 41 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 526 vlan 31 gpon 0/1/6 ont 44 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 528 vlan 31 gpon 0/1/11 ont 44 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 529 vlan 31 gpon 0/1/7 ont 0 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 530 vlan 31 gpon 0/1/7 ont 1 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 531 vlan 31 gpon 0/1/7 ont 2 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 532 vlan 31 gpon 0/1/7 ont 3 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 533 vlan 31 gpon 0/1/7 ont 4 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 534 vlan 31 gpon 0/1/7 ont 5 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 536 vlan 31 gpon 0/1/7 ont 6 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 539 vlan 31 gpon 0/1/7 ont 9 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 540 vlan 31 gpon 0/1/7 ont 10 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 541 vlan 31 gpon 0/1/7 ont 11 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 542 vlan 31 gpon 0/1/7 ont 12 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 543 vlan 31 gpon 0/1/7 ont 13 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 545 vlan 31 gpon 0/1/7 ont 15 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 546 vlan 31 gpon 0/1/7 ont 16 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 549 vlan 31 gpon 0/1/7 ont 14 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 550 vlan 31 gpon 0/1/7 ont 17 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 551 vlan 31 gpon 0/1/7 ont 18 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 552 vlan 31 gpon 0/1/7 ont 19 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 553 vlan 31 gpon 0/1/7 ont 20 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 554 vlan 31 gpon 0/1/7 ont 21 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 556 vlan 31 gpon 0/1/7 ont 22 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 630 vlan 31 gpon 0/1/8 ont 0 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 631 vlan 31 gpon 0/1/8 ont 1 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 632 vlan 31 gpon 0/1/8 ont 2 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 635 vlan 31 gpon 0/1/8 ont 3 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 636 vlan 31 gpon 0/1/8 ont 4 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1540 vlan 31 gpon 0/1/0 ont 0 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1542 vlan 31 gpon 0/1/0 ont 1 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1547 vlan 31 gpon 0/1/0 ont 5 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1548 vlan 31 gpon 0/1/0 ont 2 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1549 vlan 31 gpon 0/1/3 ont 0 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1553 vlan 31 gpon 0/1/0 ont 7 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1554 vlan 31 gpon 0/1/3 ont 4 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1557 vlan 31 gpon 0/1/3 ont 7 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1559 vlan 31 gpon 0/1/3 ont 8 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1560 vlan 31 gpon 0/1/3 ont 9 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1561 vlan 31 gpon 0/1/3 ont 10 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1562 vlan 31 gpon 0/1/3 ont 11 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1564 vlan 31 gpon 0/1/3 ont 13 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1565 vlan 31 gpon 0/1/3 ont 14 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1567 vlan 31 gpon 0/1/3 ont 16 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1569 vlan 31 gpon 0/1/3 ont 18 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1570 vlan 31 gpon 0/1/3 ont 19 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1571 vlan 31 gpon 0/1/3 ont 20 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1573 vlan 31 gpon 0/1/3 ont 22 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1574 vlan 31 gpon 0/1/3 ont 23 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1575 vlan 31 gpon 0/1/3 ont 12 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1576 vlan 31 gpon 0/1/0 ont 10 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1577 vlan 31 gpon 0/1/0 ont 11 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1578 vlan 31 gpon 0/1/0 ont 12 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1581 vlan 31 gpon 0/1/0 ont 15 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1582 vlan 31 gpon 0/1/0 ont 16 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1584 vlan 31 gpon 0/1/0 ont 17 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1585 vlan 31 gpon 0/1/1 ont 0 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1588 vlan 31 gpon 0/1/0 ont 18 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1589 vlan 31 gpon 0/1/0 ont 19 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1593 vlan 31 gpon 0/1/0 ont 21 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1594 vlan 31 gpon 0/1/3 ont 25 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1596 vlan 31 gpon 0/1/3 ont 6 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1599 vlan 31 gpon 0/1/0 ont 3 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1600 vlan 31 gpon 0/1/3 ont 1 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1804 vlan 31 gpon 0/1/7 ont 111 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1805 vlan 31 gpon 0/1/7 ont 112 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1806 vlan 31 gpon 0/1/7 ont 113 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1807 vlan 31 gpon 0/1/7 ont 114 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1808 vlan 31 gpon 0/1/7 ont 115 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1809 vlan 31 gpon 0/1/7 ont 116 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1810 vlan 31 gpon 0/1/7 ont 117 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1811 vlan 31 gpon 0/1/7 ont 118 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1814 vlan 31 gpon 0/1/7 ont 121 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1817 vlan 31 gpon 0/1/7 ont 124 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1819 vlan 31 gpon 0/1/7 ont 126 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1821 vlan 31 gpon 0/1/8 ont 5 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1822 vlan 31 gpon 0/1/8 ont 6 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1823 vlan 31 gpon 0/1/8 ont 7 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1824 vlan 31 gpon 0/1/8 ont 8 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1825 vlan 31 gpon 0/1/8 ont 9 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1827 vlan 31 gpon 0/1/8 ont 11 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1828 vlan 31 gpon 0/1/8 ont 12 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1829 vlan 31 gpon 0/1/8 ont 13 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1830 vlan 31 gpon 0/1/8 ont 14 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1832 vlan 31 gpon 0/1/8 ont 16 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1833 vlan 31 gpon 0/1/8 ont 17 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1834 vlan 31 gpon 0/1/8 ont 18 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1835 vlan 31 gpon 0/1/8 ont 19 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1836 vlan 31 gpon 0/1/8 ont 20 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1837 vlan 31 gpon 0/1/8 ont 21 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1839 vlan 31 gpon 0/1/8 ont 22 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1840 vlan 31 gpon 0/1/6 ont 45 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1841 vlan 31 gpon 0/1/8 ont 23 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1843 vlan 31 gpon 0/1/8 ont 25 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1844 vlan 31 gpon 0/1/8 ont 26 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1845 vlan 31 gpon 0/1/8 ont 27 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1847 vlan 31 gpon 0/1/8 ont 28 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1849 vlan 31 gpon 0/1/8 ont 30 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1850 vlan 31 gpon 0/1/8 ont 31 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1851 vlan 31 gpon 0/1/8 ont 32 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1854 vlan 31 gpon 0/1/8 ont 33 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1856 vlan 31 gpon 0/1/2 ont 51 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1860 vlan 31 gpon 0/1/8 ont 29 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1869 vlan 31 gpon 0/1/8 ont 35 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1871 vlan 31 gpon 0/1/8 ont 36 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1873 vlan 31 gpon 0/1/8 ont 37 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1881 vlan 31 gpon 0/1/8 ont 80 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1882 vlan 31 gpon 0/1/8 ont 81 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1883 vlan 31 gpon 0/1/8 ont 82 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1884 vlan 31 gpon 0/1/8 ont 83 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1885 vlan 31 gpon 0/1/8 ont 84 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1886 vlan 31 gpon 0/1/8 ont 85 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1887 vlan 31 gpon 0/1/8 ont 86 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1888 vlan 31 gpon 0/1/8 ont 87 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1889 vlan 31 gpon 0/1/13 ont 62 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1890 vlan 31 gpon 0/1/6 ont 100 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1891 vlan 31 gpon 0/1/8 ont 15 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1892 vlan 31 gpon 0/1/8 ont 38 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1893 vlan 31 gpon 0/1/8 ont 39 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1896 vlan 31 gpon 0/1/5 ont 96 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1897 vlan 31 gpon 0/1/11 ont 45 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1898 vlan 31 gpon 0/1/8 ont 40 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1900 vlan 31 gpon 0/1/8 ont 41 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1901 vlan 31 gpon 0/1/0 ont 44 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1902 vlan 31 gpon 0/1/8 ont 42 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1903 vlan 31 gpon 0/1/0 ont 36 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1904 vlan 31 gpon 0/1/0 ont 34 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1906 vlan 31 gpon 0/1/7 ont 101 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1907 vlan 31 gpon 0/1/5 ont 73 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1913 vlan 31 gpon 0/1/5 ont 91 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1916 vlan 31 gpon 0/1/1 ont 42 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1918 vlan 31 gpon 0/1/13 ont 79 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1919 vlan 31 gpon 0/1/5 ont 97 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1920 vlan 31 gpon 0/1/7 ont 104 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1921 vlan 31 gpon 0/1/5 ont 51 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1922 vlan 31 gpon 0/1/8 ont 43 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1923 vlan 31 gpon 0/1/8 ont 34 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1924 vlan 31 gpon 0/1/9 ont 0 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1925 vlan 31 gpon 0/1/2 ont 53 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1926 vlan 31 gpon 0/1/9 ont 1 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1927 vlan 31 gpon 0/1/9 ont 2 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1928 vlan 31 gpon 0/1/9 ont 3 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1929 vlan 31 gpon 0/1/9 ont 4 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1930 vlan 31 gpon 0/1/9 ont 5 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1931 vlan 31 gpon 0/1/9 ont 6 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1932 vlan 31 gpon 0/1/9 ont 7 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1933 vlan 31 gpon 0/1/9 ont 8 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1934 vlan 31 gpon 0/1/9 ont 9 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1935 vlan 31 gpon 0/1/9 ont 10 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1936 vlan 31 gpon 0/1/9 ont 11 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1937 vlan 31 gpon 0/1/9 ont 12 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1938 vlan 31 gpon 0/1/9 ont 13 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1939 vlan 31 gpon 0/1/9 ont 14 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1940 vlan 31 gpon 0/1/9 ont 15 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1941 vlan 31 gpon 0/1/9 ont 16 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1942 vlan 31 gpon 0/1/9 ont 17 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1943 vlan 31 gpon 0/1/9 ont 18 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1944 vlan 31 gpon 0/1/9 ont 19 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1945 vlan 31 gpon 0/1/9 ont 20 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1946 vlan 31 gpon 0/1/9 ont 21 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1947 vlan 31 gpon 0/1/9 ont 22 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1948 vlan 31 gpon 0/1/9 ont 23 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1949 vlan 31 gpon 0/1/9 ont 24 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1950 vlan 31 gpon 0/1/9 ont 25 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1951 vlan 31 gpon 0/1/9 ont 26 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1952 vlan 31 gpon 0/1/9 ont 27 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1953 vlan 31 gpon 0/1/9 ont 28 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1954 vlan 31 gpon 0/1/9 ont 29 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1955 vlan 31 gpon 0/1/9 ont 30 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1956 vlan 31 gpon 0/1/9 ont 31 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1957 vlan 31 gpon 0/1/9 ont 32 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1958 vlan 31 gpon 0/1/9 ont 33 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1959 vlan 31 gpon 0/1/9 ont 34 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1960 vlan 31 gpon 0/1/9 ont 35 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1961 vlan 31 gpon 0/1/9 ont 36 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1962 vlan 31 gpon 0/1/9 ont 37 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1963 vlan 31 gpon 0/1/9 ont 38 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1964 vlan 31 gpon 0/1/9 ont 39 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1965 vlan 31 gpon 0/1/9 ont 40 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1966 vlan 31 gpon 0/1/9 ont 41 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1967 vlan 31 gpon 0/1/9 ont 42 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1968 vlan 31 gpon 0/1/9 ont 43 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1969 vlan 31 gpon 0/1/9 ont 44 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1970 vlan 31 gpon 0/1/9 ont 45 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1971 vlan 31 gpon 0/1/9 ont 46 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1972 vlan 31 gpon 0/1/9 ont 47 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1973 vlan 31 gpon 0/1/9 ont 48 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1974 vlan 31 gpon 0/1/9 ont 49 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1976 vlan 31 gpon 0/1/9 ont 51 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1977 vlan 31 gpon 0/1/9 ont 52 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1978 vlan 31 gpon 0/1/9 ont 53 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1979 vlan 31 gpon 0/1/9 ont 54 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1980 vlan 31 gpon 0/1/9 ont 55 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1981 vlan 31 gpon 0/1/9 ont 56 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1982 vlan 31 gpon 0/1/9 ont 57 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1983 vlan 31 gpon 0/1/9 ont 58 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1984 vlan 31 gpon 0/1/9 ont 59 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1985 vlan 31 gpon 0/1/9 ont 60 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1986 vlan 31 gpon 0/1/9 ont 61 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1987 vlan 31 gpon 0/1/9 ont 62 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1988 vlan 31 gpon 0/1/9 ont 63 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1989 vlan 31 gpon 0/1/9 ont 64 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1990 vlan 31 gpon 0/1/9 ont 65 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1991 vlan 31 gpon 0/1/9 ont 66 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1992 vlan 31 gpon 0/1/9 ont 67 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1993 vlan 31 gpon 0/1/9 ont 68 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1994 vlan 31 gpon 0/1/9 ont 69 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 1995 vlan 31 gpon 0/1/9 ont 70 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2891 vlan 31 gpon 0/1/6 ont 101 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2894 vlan 31 gpon 0/1/9 ont 104 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2895 vlan 31 gpon 0/1/9 ont 105 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2896 vlan 31 gpon 0/1/9 ont 106 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2900 vlan 31 gpon 0/1/9 ont 110 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2901 vlan 31 gpon 0/1/9 ont 111 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2902 vlan 31 gpon 0/1/9 ont 71 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2903 vlan 31 gpon 0/1/9 ont 72 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2904 vlan 31 gpon 0/1/9 ont 73 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2905 vlan 31 gpon 0/1/9 ont 74 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2906 vlan 31 gpon 0/1/9 ont 75 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2907 vlan 31 gpon 0/1/9 ont 76 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2908 vlan 31 gpon 0/1/9 ont 77 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2909 vlan 31 gpon 0/1/9 ont 78 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2910 vlan 31 gpon 0/1/0 ont 14 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2911 vlan 31 gpon 0/1/9 ont 79 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2913 vlan 31 gpon 0/1/9 ont 80 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2914 vlan 31 gpon 0/1/5 ont 86 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2915 vlan 31 gpon 0/1/9 ont 81 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2916 vlan 31 gpon 0/1/1 ont 43 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2918 vlan 31 gpon 0/1/13 ont 57 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2919 vlan 31 gpon 0/1/6 ont 46 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2920 vlan 31 gpon 0/1/6 ont 18 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2921 vlan 31 gpon 0/1/1 ont 44 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2922 vlan 31 gpon 0/1/1 ont 45 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2923 vlan 31 gpon 0/1/8 ont 44 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2924 vlan 31 gpon 0/1/6 ont 47 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2925 vlan 31 gpon 0/1/6 ont 48 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2926 vlan 31 gpon 0/1/6 ont 49 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2927 vlan 31 gpon 0/1/7 ont 23 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2928 vlan 31 gpon 0/1/6 ont 31 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2929 vlan 31 gpon 0/1/5 ont 57 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2930 vlan 31 gpon 0/1/1 ont 1 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2931 vlan 31 gpon 0/1/11 ont 46 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2932 vlan 31 gpon 0/1/5 ont 98 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2933 vlan 31 gpon 0/1/11 ont 47 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2934 vlan 31 gpon 0/1/9 ont 82 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2935 vlan 31 gpon 0/1/0 ont 6 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2936 vlan 31 gpon 0/1/1 ont 46 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2942 vlan 31 gpon 0/1/7 ont 8 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2943 vlan 31 gpon 0/1/13 ont 80 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2944 vlan 31 gpon 0/1/9 ont 50 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2945 vlan 31 gpon 0/1/2 ont 44 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2946 vlan 31 gpon 0/1/1 ont 47 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2950 vlan 31 gpon 0/1/5 ont 99 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2952 vlan 31 gpon 0/1/2 ont 52 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2953 vlan 31 gpon 0/1/9 ont 83 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2954 vlan 31 gpon 0/1/3 ont 15 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2955 vlan 31 gpon 0/1/11 ont 48 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2956 vlan 31 gpon 0/1/11 ont 23 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2957 vlan 31 gpon 0/1/8 ont 10 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2958 vlan 31 gpon 0/1/5 ont 100 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2959 vlan 31 gpon 0/1/1 ont 48 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2960 vlan 31 gpon 0/1/5 ont 101 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2961 vlan 31 gpon 0/1/13 ont 46 gemport 31 multi-service user-vlan 31 tag-transform translate
 service-port 2963 vlan 31 gpon 0/1/13 ont 68 gemport 31 multi-service user-vlan 31 tag-transform translate
 monitor uplink-port non-unicast port 0/3/0
 monitor uplink-port non-unicast port 0/3/1
 monitor uplink-port non-unicast port 0/3/2
 monitor uplink-port non-unicast port 0/3/3
 monitor uplink-port non-unicast port 0/4/0
 monitor uplink-port non-unicast port 0/4/1
 monitor uplink-port non-unicast port 0/4/2
 monitor uplink-port non-unicast port 0/4/3
#
[abs-config]
  <abs-config>
 monitor uplink-port pppoe port 0/3/0
 monitor uplink-port pppoe port 0/3/1
 monitor uplink-port pppoe port 0/3/2
 monitor uplink-port pppoe port 0/3/3
 monitor uplink-port pppoe port 0/4/0
 monitor uplink-port pppoe port 0/4/1
 monitor uplink-port pppoe port 0/4/2
 monitor uplink-port pppoe port 0/4/3
 nac bind pki-domain default
#
[pki-config]
  <pki-config>
pki domain default
 pki import-certificate local filename huawei_equipment.crt
 pki import-certificate trusted-ca filename huawei_access_product_ca.crt
 pki import-certificate trusted-ca filename huawei_equipment_root_ca.crt
pki switch preset-certificate chain link
#
[dimmng-config]
  <dimmng-config>
dim measure disable
#
[snmp]
  <snmp>
 snmp-agent local-engineid 800007DB035856C20F7965
 snmp-agent community read cipher "%$%#cV(!!!!!!!!!!!!zSZM~N!u@!X`a0P/44*.<8.B!eyBGGEZy",v6%@"'.rn8Sf&%J6aui!*3_#62f40BNq44:%$%#"
 snmp-agent sys-info version v2c
#
[ip-tunnel-profile]
  <ip-tunnel-profile>
 ip tunnel priority-profile gre index 0 name "default-profile-0" inbound dscp-outer dscp-inner
#
 ip tunnel priority-profile vxlan index 0 name "default-profile-0" inbound dscp-outer cos-inner
#
#
set neid 0xD18DBD
#
[aaa]
  <aaa>
aaa
 #
 local-user "suporte" password irreversible-cipher "$1c$u4_yTP.,P-$%~xw~!yE/>g@!`H[A--SfLHl'3+`c3WEve>7<u.,$"
 local-user "suporte" service-type terminal
 local-user "suporte" privilege level 1
 #
 authentication-scheme "default"
 #
 authorization-scheme "default"
 #
 accounting-scheme "default"
 #
 domain "default"
#
[Interface]
  <Vlanif30>
interface Vlanif30
 ip address 10.244.3.254 255.255.255.252
#
  <MEth0>
interface MEth0
 ip address 10.11.104.2 255.255.255.0
#
  <NULL0>
interface NULL0
#
undo dcn
#
[route-static]
  <route-static>
ip route-static 0.0.0.0 0.0.0.0 10.244.3.253
#
[post-system]
  <post-system>
 ssh server auth-timeout 300
 ssh user "radiusnet" authentication-type password
 ssh user "root" authentication-type password
 ssh user "suporte" authentication-type password
 ssh user "zandona" authentication-type password
 ssh server cipher aes256_gcm aes128_gcm aes256_ctr aes192_ctr aes128_ctr chacha20_poly1305
 ssh server hmac sha2_512 sha2_256 sha1
 ssh server key-exchange dh_group_exchange_sha256 curve25519_sha256
 ssh server dh-exchange min-len 2048
 ssh server publickey rsa x509v3-ssh-rsa rsa_sha2_256 rsa_sha2_512 x509v3-rsa2048-sha256 ed25519
 ntp-service server source-interface all disable
 ntp-service ipv6 server source-interface all disable
 ssh client publickey rsa rsa_sha2_256 rsa_sha2_512 ed25519
 ssh client cipher aes256_gcm aes128_gcm aes256_ctr aes192_ctr aes128_ctr chacha20_poly1305
 ssh client hmac sha2_512 sha2_256 sha1
 ssh client key-exchange dh_group_exchange_sha256 curve25519_sha256
#
[source-interface]
  <source-interface>
 sysman server source ssh meth 0
 sysman server source ssh any-interface
 sysman server source snmp any-interface
 sysman server source telnet any-interface
#
return

POP03_OLT1_GPON_HUAWEI#
```
