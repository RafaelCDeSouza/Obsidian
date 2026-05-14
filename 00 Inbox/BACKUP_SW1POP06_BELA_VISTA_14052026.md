```sql
(admin@10.244.188.6) Password:
(admin@10.244.188.6) Password:
Welcome to the DmOS CLI
User admin last logged in 2021-04-21T14:42:37.404901+00:00, to DM4370, from 10.244.254.54 using cli-ssh
admin connected from 10.244.254.54 using ssh on SW1POP06_BELA_VISTA
SW1POP06_BELA_VISTA# conf
Entering configuration mode terminal
SW1POP06_BELA_VISTA(config)# aaa
--------------------------------^
syntax error: incomplete path: 'aaa'
SW1POP06_BELA_VISTA(config)# ?
Possible completions:
  aaa                       Authentication, authorization and accounting configuration
  access-list               Access Control List (ACL) configuration
  alias                     Command alias configuration
  assistant-task            Assistant task configuration
  backup-link               Backup-Link protection configuration
  banner                    Banner configuration
  clear                     Clear all configuration changes
  clock                     System clock configuration
  copy                      Copy a list entry
  counters                  User-defined Counters configuration
  cpu-dos-protect           CPU denial-of-service (DoS) protection
  dhcp                      DHCP configuration
  dot1q                     Dot1q configuration and status
  eaps                      RFC3619 Ethernet Automatic Protection Switching
  erps                      ITU-T G.8032 Ethernet Ring Protection Switching
  hold-time                 Delay for processing L1 interface link changes
  hostname                  Hostname for this equipment
  icmp-probe                Configuration for remote ICMP ping automation
  interface                 Equipment interfaces configuration
  ip                        IP information
  layer2-control-protocol   Layer 2 Control Protocols Configuration
  license                   Feature licensing configuration
  link-aggregation          LAG configuration
  link-flap                 Link Flap Detection with port blocking
  lldp                      Link Layer Discovery Protocol Configuration
  log                       System log configuration
  loopback-detection        Loopback Detection with port blocking
  mac-address-table         MAC address table configuration
  monitor                   Configure traffic monitoring
  mpls                      Multiprotocol Label Switching configuration
  multicast                 Multicast configuration
  oam                       Operations, Administration and Management (OAM)
  prefix-list               IP prefix-list
  qos                       Equipment QoS features configuration
  remote-devices            Remote Devices Management Configuration
  router                    Routing process
  session                   Global default CLI session parameters
  snmp                      Top-level container for SNMP related configuration and status objects
  sntp                      SNTP configuration
  spanning-tree             Spanning tree protocol information
  ssh-server                SSH server parameters
  switchport                Switchport options for L2 Interfaces
  synchronization           Clock synchronization configuration
  telnet-server             Telnet server configuration
  tls                       Global TLS keystore configuration
  traffic-loop              Front-end Traffic Loopback testing
  user                      User specific command aliases and default CLI session parameters
  vlan-mapping              VLAN Tag mapping
  vrf                       IP VPN Routing/Forwarding instance
  ---
  abort                     Abort configuration session
  commit                    Commit current set of changes
  compare                   Compare configuration
  do                        Run an operational-mode command
  end                       Terminate configuration session
  exit                      Exit from current mode
  help                      Provide help information
  insert                    Insert a parameter
  load                      Load configuration from an ASCII file or from terminal
  move                      Move a parameter
  no                        Negate a command or set its defaults
  pwd                       Display current mode path
  rename                    Rename an identifier
  resolved                  Conflicts have been resolved
  rollback                  Roll back database to last committed version
  save                      Save configuration to an ASCII file
  service                   Modify use of network based services
  show                      Show information about the system
  top                       Exit to top level or execute a command at the top level
  ---
  management
SW1POP06_BELA_VISTA(config)# aaa
---------------------------------^
syntax error: incomplete path: 'aaa'
SW1POP06_BELA_VISTA(config)# aaa ?
Possible completions:
  authentication-next-method-on-fail   Use next authentication method in authentication order list upon a security server FAIL response.
  authentication-order                 Authentication order configuration
  authentication-type                  The authentication type requested from server
  server                               AAA (Authentication, Authorization and Accounting) server configuration
  user                                 Local users configuration
SW1POP06_BELA_VISTA(config)# aaa user admin
SW1POP06_BELA_VISTA(config-user-admin)# password
(<The password must contain at least one number
The password must contain at least one lowercase letter
The password must contain at least one uppercase letter
The password must be at least 8 characters long and cannot be longer than 64 characters>): ************
SW1POP06_BELA_VISTA(config-user-admin)# comm
Commit complete.
SW1POP06_BELA_VISTA(config-user-admin)#
SW1POP06_BELA_VISTA(config-user-admin)#
SW1POP06_BELA_VISTA(config-user-admin)#
SW1POP06_BELA_VISTA(config-user-admin)# top
SW1POP06_BELA_VISTA(config)# sho
aaa authentication-order [ local ]
aaa user admin
 password $1$Mp0B7WVv$MPKU69N9YtN92GrEH1j711
 group admin
!
mpls ldp
 lsr-id loopback-0
  interface l3-L3_VLAN1106_MPLS
  !
  neighbor targeted 10.244.188.0
  !
  neighbor targeted 10.244.188.2
  !
  neighbor targeted 10.244.189.0
  !
 !
!
mpls l2vpn
 vpls-group POP06_BELA_VISTA
  vpn VSI_60_CY_NOC0_POP06_B_VIS_MGNT
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 60
    !
    neighbor 10.244.189.0
     pw-id 60
    !
   !
   bridge-domain
    dot1q 60
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/2
    !
   !
  !
  vpn VSI_61_CY_NOC0_POP06_B_VIS_OLT1
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 61
    !
    neighbor 10.244.189.0
     pw-id 61
    !
   !
   bridge-domain
    dot1q 61
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/2
    !
   !
  !
 !
!
snmp system location -29.8271388,-51.0251659
snmp traps config-commit
snmp traps cpu-core
snmp traps cpu-load
snmp traps link-status
snmp traps login-success
snmp agent enabled
snmp agent version v2c
snmp agent version v3
snmp agent engine-id from-mac-address 18:81:ed:7e:92:7b
snmp community CyberWeb
 sec-name CyberWeb
!
snmp community public
 sec-name public
!
snmp notify std_v1_trap
 tag std_v1_trap
!
snmp notify std_v2_inform
 tag std_v2_inform
 type inform
!
snmp notify std_v2_trap
 tag std_v2_trap
!
snmp notify std_v3_inform
 tag std_v3_inform
 type inform
!
snmp notify std_v3_trap
 tag std_v3_trap
!
snmp vacm group CyberWeb
 member CyberWeb
  sec-model [ v2c ]
 !
 access "" v2c no-auth-no-priv
  read-view root
  notify-view root
 !
!
snmp vacm group public
 member public
  sec-model [ v2c ]
 !
 access "" v2c no-auth-no-priv
  read-view root
  write-view root
  notify-view root
 !
!
snmp vacm view root
 subtree 1.3
  included
 !
!
interface gigabit-ethernet 1/1/1
 shutdown
 negotiation
 duplex full
 speed 100M
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix auto
 mtu 12266
!
interface gigabit-ethernet 1/1/2
 shutdown
 negotiation
 duplex full
 speed 100M
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix auto
 mtu 12266
!
interface gigabit-ethernet 1/1/3
 shutdown
 negotiation
 duplex full
 speed 100M
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix auto
 mtu 12266
!
interface gigabit-ethernet 1/1/4
 shutdown
 negotiation
 duplex full
 speed 100M
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix auto
 mtu 12266
!
interface gigabit-ethernet 1/1/5
 shutdown
 negotiation
 duplex full
 speed 1G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface gigabit-ethernet 1/1/6
 shutdown
 negotiation
 duplex full
 speed 1G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface gigabit-ethernet 1/1/7
 shutdown
 negotiation
 duplex full
 speed 1G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface gigabit-ethernet 1/1/8
 shutdown
 negotiation
 duplex full
 speed 1G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/1
 no shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/2
 no shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/3
 no shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/4
 no shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface l3 L3_VLAN1106_MPLS
 lower-layer-if vlan 1106
 ipv4 address 10.244.106.2/30
!
interface mgmt 1/1/1
 ipv4 address 192.168.0.25/24
!
interface loopback 0
 ipv4 address 10.244.188.6/32
!
clock timezone BRA -3
hostname SW1POP06_BELA_VISTA
telnet-server enabled
oam
 efm
  interface gigabit-ethernet-1/1/1
   mode passive
  !
  interface gigabit-ethernet-1/1/2
   mode passive
  !
  interface gigabit-ethernet-1/1/3
   mode passive
  !
  interface gigabit-ethernet-1/1/4
   mode passive
  !
  interface gigabit-ethernet-1/1/5
   mode passive
  !
  interface gigabit-ethernet-1/1/6
   mode passive
  !
  interface gigabit-ethernet-1/1/7
   mode passive
  !
  interface gigabit-ethernet-1/1/8
   mode passive
  !
  interface ten-gigabit-ethernet-1/1/1
   mode passive
  !
  interface ten-gigabit-ethernet-1/1/2
   mode passive
  !
  interface ten-gigabit-ethernet-1/1/3
   mode passive
  !
  interface ten-gigabit-ethernet-1/1/4
   mode passive
  !
 !
!
loopback-detection
 destination-address alternative
!
mac-address-table
 aging-time 600
!
layer2-control-protocol
 tunnel-mac datacom
 tunnel-priority 7
!
vrf global
!
vrf mgmt
!
router ospf 1 vrf global
 router-id 10.244.188.6
 redistribute static
 !
 area 0.0.0.0
  interface l3-L3_VLAN1106_MPLS
   cost 100
   bfd
    session-type desired
   !
   network-type point-to-point
  !
  interface loopback-0
  !
 !
!
dot1q
 vlan 1106
  name VL_1106_SW1POP07_SW1POP06_MPLS
  interface ten-gigabit-ethernet-1/1/1
  !
 !
!
license mpls enabled
license mpls key ***
remote-devices
 interface gigabit-ethernet-1/1/1
 !
 interface gigabit-ethernet-1/1/2
 !
 interface gigabit-ethernet-1/1/3
 !
 interface gigabit-ethernet-1/1/4
 !
 interface gigabit-ethernet-1/1/5
 !
 interface gigabit-ethernet-1/1/6
 !
 interface gigabit-ethernet-1/1/7
 !
 interface gigabit-ethernet-1/1/8
 !
 interface ten-gigabit-ethernet-1/1/1
 !
 interface ten-gigabit-ethernet-1/1/2
 !
 interface ten-gigabit-ethernet-1/1/3
 !
 interface ten-gigabit-ethernet-1/1/4
 !
!
SW1POP06_BELA_VISTA(config)#
```
