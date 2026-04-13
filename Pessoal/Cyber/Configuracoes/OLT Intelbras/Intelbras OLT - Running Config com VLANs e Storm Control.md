```yaml

Starting configuration dump ...
=========================================

session timeout 60
session command-wait on


onu block disable gpon 1
onu block disable gpon 2
onu block disable gpon 3
onu block disable gpon 4
onu block disable gpon 5
onu block disable gpon 6
onu block disable gpon 7
onu block disable gpon 8

olt set mac-aging-time 3600

port modify eth 5 storm-control broadcast 100 mbps
port modify eth 5 storm-control multicast 400 mbps
port modify eth 5 storm-control unknown-unicast 100 mbps
port modify gpon 2 storm-control broadcast 125 mbps
port modify gpon 2 storm-control multicast 500 mbps
port modify gpon 2 storm-control unknown-unicast 125 mbps
port modify gpon 3 storm-control broadcast 125 mbps
port modify gpon 3 storm-control multicast 500 mbps
port modify gpon 3 storm-control unknown-unicast 125 mbps
port modify gpon 4 storm-control broadcast 125 mbps
port modify gpon 4 storm-control multicast 500 mbps
port modify gpon 4 storm-control unknown-unicast 125 mbps
port modify gpon 5 storm-control broadcast 125 mbps
port modify gpon 5 storm-control multicast 500 mbps
port modify gpon 5 storm-control unknown-unicast 125 mbps
port modify gpon 6 storm-control broadcast 125 mbps
port modify gpon 6 storm-control multicast 500 mbps
port modify gpon 6 storm-control unknown-unicast 125 mbps
port modify gpon 8 storm-control broadcast 125 mbps
port modify gpon 8 storm-control multicast 500 mbps
port modify gpon 8 storm-control unknown-unicast 125 mbps
port description add eth 7 text GM_CAMERA_TRANSP_VLAN_3102
port description add gpon 6 text ESTEIO
port description add eth 6 text LINK_OLT_P06_SW1POP25_P06_CYBER
port description add eth 8 text LINK_OLT_P08_SW1POP25_P08_POWER
port description add eth 5 text LINK_OLT_P05_SW1POP25_P05_CYBER

gpon-traffic-profile add 12
256
0
0
12800
nonassured

gpon-traffic-profile add 10
256
0
0
409600
nonassured


cpe-mgr add local gpon 4 onu 7 gtp 2 gem 266
cpe-mgr add local gpon 2 onu 7 gtp 2 gem 276

rule add ratelimit 1/1 cir 409600 pir 409600 cbs 409600 ebs 409600

bridge add eth 5 uplink vlan 253 tagged
bridge add eth 5 uplink vlan 258 tagged
bridge add eth 5 uplink vlan 902 tagged
bridge add eth 5 uplink vlan 903 tagged
bridge add eth 5 uplink vlan 904 tagged
bridge add eth 5 uplink vlan 918 tagged
bridge add eth 5 uplink vlan 925 tagged
bridge add eth 5 uplink vlan 929 tagged
bridge add eth 5 uplink vlan 930 tagged
bridge add eth 5 uplink vlan 931 tagged
bridge add eth 5 uplink vlan 935 tagged
bridge add eth 5 uplink vlan 944 tagged
bridge add eth 5 uplink vlan 951 tagged
bridge add eth 5 uplink vlan 955 tagged
bridge add eth 5 uplink vlan 961 tagged
bridge add eth 5 uplink vlan 964 tagged
bridge add eth 5 uplink vlan 967 tagged
bridge add eth 5 uplink vlan 971 tagged
bridge add eth 5 uplink vlan 976 tagged
bridge add eth 5 uplink vlan 978 tagged
bridge add eth 5 uplink vlan 979 tagged
bridge add eth 5 uplink vlan 981 tagged
bridge add eth 5 uplink vlan 987 tagged
bridge add eth 5 uplink vlan 988 tagged
bridge add eth 5 uplink vlan 989 tagged
bridge add eth 5 uplink vlan 991 tagged
bridge add eth 5 uplink vlan 992 tagged
bridge add eth 5 uplink vlan 994 tagged
bridge add eth 5 uplink vlan 999 tagged
bridge add eth 5 tls vlan 3001 tagged
bridge-path modify eth 5 vlan 3001 mode flap
bridge add eth 5 uplink vlan 3101 tagged
bridge add eth 5 uplink vlan 3256 tagged
bridge add eth 5 uplink vlan 3258 tagged
bridge add eth 6 uplink vlan 3102 tagged
bridge add eth 6 uplink vlan 3540 tagged
bridge add eth 8 uplink vlan 250 tagged
bridge add xeth 1 uplink vlan 251 tagged
bridge add xeth 1 uplink vlan 252 tagged
bridge add xeth 1 uplink vlan 3560 tagged
bridge add gpon 1 onu 1 downlink vlan 3101 tagged data eth 1
bridge-path modify gpon 1 onu 1 gem 257 mode flap
bridge add gpon 1 onu 2 downlink vlan 3101 tagged data eth 1
bridge-path modify gpon 1 onu 2 gem 258 mode flap
bridge add gpon 1 onu 3 downlink vlan 3101 tagged data eth 1
bridge-path modify gpon 1 onu 3 gem 259 mode flap
bridge add gpon 1 onu 7 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 1 onu 7 gem 265 mode flap
bridge add gpon 1 onu 8 downlink vlan 992 tagged data eth 1
bridge-path modify gpon 1 onu 8 gem 263 mode flap
bridge add gpon 1 onu 10 downlink vlan 991 tagged data eth 1
bridge-path modify gpon 1 onu 10 gem 264 mode flap
bridge add gpon 1 onu 11 downlink vlan 989 tagged data eth 1
bridge-path modify gpon 1 onu 11 gem 268 mode flap
bridge add gpon 1 onu 12 downlink vlan 999 tagged data eth 1
bridge-path modify gpon 1 onu 12 gem 270 mode flap
bridge add gpon 1 onu 13 downlink vlan 987 tagged data eth 1
bridge-path modify gpon 1 onu 13 gem 271 mode flap
bridge add gpon 1 onu 14 downlink vlan 931 tagged data eth 1
bridge-path modify gpon 1 onu 14 gem 272 mode flap
bridge add gpon 1 onu 15 downlink vlan 930 tagged data eth 1
bridge-path modify gpon 1 onu 15 gem 262 mode flap
bridge add gpon 2 onu 1 downlink vlan 3102 tagged data eth 1
bridge-path modify gpon 2 onu 1 gem 258 mode flap
bridge add gpon 2 onu 1 downlink vlan 253 tagged data eth 2
bridge-path modify gpon 2 onu 1 gem 265 mode flap
bridge add gpon 2 onu 2 downlink vlan 3101 tagged data eth 1
bridge-path modify gpon 2 onu 2 gem 260 mode flap
bridge add gpon 2 onu 3 downlink vlan 3540 tagged data eth 1
bridge-path modify gpon 2 onu 3 gem 262 mode flap
bridge add gpon 2 onu 4 downlink vlan 3101 tagged data eth 1
bridge-path modify gpon 2 onu 4 gem 261 mode flap
bridge add gpon 2 onu 5 downlink vlan 3101 tagged data eth 1
bridge-path modify gpon 2 onu 5 gem 267 mode flap
bridge add gpon 2 onu 7 downlink vlan 3560 tagged router
bridge-path modify gpon 2 onu 7 gem 259 mode flap
bridge add gpon 2 onu 8 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 2 onu 8 gem 264 mode flap
bridge add gpon 2 onu 9 downlink vlan 3540 tagged data eth 1
bridge-path modify gpon 2 onu 9 gem 266 mode flap
bridge add gpon 2 onu 10 downlink vlan 981 tagged data eth 1
bridge-path modify gpon 2 onu 10 gem 269 mode flap
bridge add gpon 2 onu 11 downlink vlan 902 tagged data eth 1
bridge-path modify gpon 2 onu 11 gem 268 mode flap
bridge add gpon 2 onu 12 downlink vlan 935 tagged data eth 1
bridge-path modify gpon 2 onu 12 gem 270 mode flap
bridge add gpon 2 onu 13 downlink vlan 978 tagged data eth 1
bridge-path modify gpon 2 onu 13 gem 271 mode flap
bridge add gpon 2 onu 14 downlink vlan 979 tagged data eth 1
bridge-path modify gpon 2 onu 14 gem 272 mode flap
bridge add gpon 2 onu 15 downlink vlan 988 tagged data eth 1
bridge-path modify gpon 2 onu 15 gem 273 mode flap
bridge add gpon 2 onu 16 downlink vlan 994 tagged data eth 1
bridge-path modify gpon 2 onu 16 gem 274 mode flap
bridge add gpon 2 onu 17 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 2 onu 17 gem 275 mode flap
bridge add gpon 3 onu 1 downlink vlan 251 tagged data eth 1
bridge-path modify gpon 3 onu 1 gem 257 mode flap
bridge add gpon 3 onu 2 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 3 onu 2 gem 258 mode flap
bridge add gpon 3 onu 3 downlink vlan 929 tagged data eth 1
bridge-path modify gpon 3 onu 3 gem 262 mode flap
bridge add gpon 3 onu 4 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 3 onu 4 gem 260 mode flap
bridge add gpon 3 onu 5 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 3 onu 5 gem 259 mode flap
bridge add gpon 3 onu 6 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 3 onu 6 gem 261 mode flap
bridge add gpon 3 onu 7 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 3 onu 7 gem 263 mode flap
bridge add gpon 3 onu 8 downlink vlan 253 tagged data eth 1
bridge-path modify gpon 3 onu 8 gem 264 mode flap
bridge add gpon 3 onu 9 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 3 onu 9 gem 268 mode flap
bridge add gpon 3 onu 10 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 3 onu 10 gem 269 mode flap
bridge add gpon 3 onu 11 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 3 onu 11 gem 265 mode flap
bridge add gpon 3 onu 12 downlink vlan 964 tagged data eth 1
bridge-path modify gpon 3 onu 12 gem 270 mode flap
bridge add gpon 3 onu 13 downlink vlan 967 tagged data eth 1
bridge-path modify gpon 3 onu 13 gem 271 mode flap
bridge add gpon 3 onu 14 downlink vlan 918 tagged data eth 1
bridge-path modify gpon 3 onu 14 gem 272 mode flap
bridge add gpon 3 onu 16 downlink vlan 3540 tagged data eth 1
bridge-path modify gpon 3 onu 16 gem 273 mode flap
bridge add gpon 4 onu 1 downlink vlan 3101 tagged data eth 1
bridge-path modify gpon 4 onu 1 gem 258 mode flap
bridge add gpon 4 onu 2 downlink vlan 3101 tagged data eth 1
bridge-path modify gpon 4 onu 2 gem 259 mode flap
bridge add gpon 4 onu 3 downlink vlan 3101 tagged data eth 1
bridge-path modify gpon 4 onu 3 gem 260 mode flap
bridge add gpon 4 onu 4 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 4 onu 4 gem 262 mode flap
bridge add gpon 4 onu 5 downlink vlan 3101 tagged data eth 1
bridge-path modify gpon 4 onu 5 gem 261 mode flap
bridge add gpon 4 onu 6 downlink vlan 251 tagged router
bridge-path modify gpon 4 onu 6 gem 257 mode flap
bridge add gpon 4 onu 7 downlink vlan 3560 tagged router
bridge-path modify gpon 4 onu 7 gem 265 mode flap
bridge add gpon 4 onu 10 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 4 onu 10 gem 269 mode flap
bridge add gpon 4 onu 11 downlink vlan 925 tagged data eth 1
bridge-path modify gpon 4 onu 11 gem 267 mode flap
bridge add gpon 4 onu 12 downlink vlan 944 tagged data eth 1
bridge-path modify gpon 4 onu 12 gem 270 mode flap
bridge add gpon 4 onu 13 downlink vlan 976 tagged data eth 1
bridge-path modify gpon 4 onu 13 gem 271 mode flap
bridge add gpon 4 onu 15 downlink vlan 955 tagged data eth 1
bridge-path modify gpon 4 onu 15 gem 263 mode flap
bridge add gpon 4 onu 16 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 4 onu 16 gem 272 mode flap
bridge add gpon 4 onu 17 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 4 onu 17 gem 274 mode flap
bridge add gpon 5 onu 1 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 5 onu 1 gem 257 mode flap
bridge add gpon 5 onu 2 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 5 onu 2 gem 258 mode flap
bridge add gpon 5 onu 3 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 5 onu 3 gem 259 mode flap
bridge add gpon 5 onu 4 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 5 onu 4 gem 260 mode flap
bridge add gpon 5 onu 5 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 5 onu 5 gem 261 mode flap
bridge add gpon 5 onu 7 downlink vlan 904 tagged data eth 1
bridge-path modify gpon 5 onu 7 gem 266 mode flap
bridge add gpon 5 onu 8 downlink vlan 951 tagged data eth 1
bridge-path modify gpon 5 onu 8 gem 264 mode flap
bridge add gpon 5 onu 9 downlink vlan 961 tagged data eth 1
bridge-path modify gpon 5 onu 9 gem 265 mode flap
bridge add gpon 5 onu 10 downlink vlan 251 tagged data eth 1
bridge-path modify gpon 5 onu 10 gem 263 mode flap
bridge add gpon 7 onu 1 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 7 onu 1 gem 257 mode flap
bridge add gpon 7 onu 2 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 7 onu 2 gem 258 mode flap
bridge add gpon 7 onu 3 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 7 onu 3 gem 259 mode flap
bridge add gpon 7 onu 4 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 7 onu 4 gem 260 mode flap
bridge add gpon 8 onu 1 downlink vlan 903 tagged data eth 1
bridge-path modify gpon 8 onu 1 gem 257 mode flap
bridge add gpon 8 onu 2 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 8 onu 2 gem 258 mode flap
bridge add gpon 8 onu 3 downlink vlan 3256 tagged data eth 1
bridge-path modify gpon 8 onu 3 gem 260 mode flap
bridge add gpon 8 onu 4 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 8 onu 4 gem 259 mode flap
bridge add gpon 8 onu 5 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 8 onu 5 gem 261 mode flap
bridge add gpon 8 onu 6 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 8 onu 6 gem 262 mode flap
bridge add gpon 8 onu 7 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 8 onu 7 gem 263 mode flap
bridge add gpon 8 onu 8 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 8 onu 8 gem 264 mode flap

interface modify oob new-ip 10.244.25.254/30
interface add inband ip 10.244.25.250/30 vlan 250

snmp community add CyberWeb rw


route add default 10.244.25.253

bridge-profile add default-bridge downlink vlan 251 tagged eth 1 gtp 0
bridge-profile add default-router downlink vlan 253 tagged router gtp 0

bridge-profile bind add default-bridge device intelbras-110 gpon 1
bridge-profile bind add default-bridge device intelbras-110 gpon 2
bridge-profile bind add default-bridge device intelbras-110 gpon 3
bridge-profile bind add default-bridge device intelbras-110 gpon 4
bridge-profile bind add default-bridge device intelbras-110 gpon 5
bridge-profile bind add default-bridge device intelbras-110 gpon 6
bridge-profile bind add default-bridge device intelbras-110 gpon 7
bridge-profile bind add default-bridge device intelbras-110 gpon 8
bridge-profile bind add default-bridge device intelbras-110b gpon 1
bridge-profile bind add default-bridge device intelbras-110b gpon 2
bridge-profile bind add default-bridge device intelbras-110b gpon 3
bridge-profile bind add default-bridge device intelbras-110b gpon 4
bridge-profile bind add default-bridge device intelbras-110b gpon 5
bridge-profile bind add default-bridge device intelbras-110b gpon 6
bridge-profile bind add default-bridge device intelbras-110b gpon 7
bridge-profile bind add default-bridge device intelbras-110b gpon 8
bridge-profile bind add default-bridge device intelbras-110g gpon 1
bridge-profile bind add default-bridge device intelbras-110g gpon 2
bridge-profile bind add default-bridge device intelbras-110g gpon 3
bridge-profile bind add default-bridge device intelbras-110g gpon 4
bridge-profile bind add default-bridge device intelbras-110g gpon 5
bridge-profile bind add default-bridge device intelbras-110g gpon 6
bridge-profile bind add default-bridge device intelbras-110g gpon 7
bridge-profile bind add default-bridge device intelbras-110g gpon 8
bridge-profile bind add default-router device intelbras-121ac gpon 1
bridge-profile bind add default-router device intelbras-121ac gpon 2
bridge-profile bind add default-router device intelbras-121ac gpon 3
bridge-profile bind add default-router device intelbras-121ac gpon 4
bridge-profile bind add default-router device intelbras-121ac gpon 5
bridge-profile bind add default-router device intelbras-121ac gpon 6
bridge-profile bind add default-router device intelbras-121ac gpon 7
bridge-profile bind add default-router device intelbras-121ac gpon 8

auto-service disable
yes

onu set gpon 1 noauto
yes
onu set gpon 2 noauto
yes
onu set gpon 3 noauto
yes
onu set gpon 4 noauto
yes
onu set gpon 5 noauto
yes
onu set gpon 6 noauto
yes
onu set gpon 7 noauto
yes
onu set gpon 8 noauto
yes


=========================================
intelbras-olt>

```
