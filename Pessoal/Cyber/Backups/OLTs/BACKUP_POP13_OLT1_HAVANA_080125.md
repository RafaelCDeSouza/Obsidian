```yaml
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
 sysname POP13_OLT1_HAVANA
 terminal user-profile name suporte 0 0 00:00:00 00:00:00
 terminal user name buildrun_new_password root *j$3b$'|xh%#oao0xa$1(v3b7.$+k:\Y;S_M)j]fhN32ilONqgZN^,[zQ@SA*;IFbG7$* 7 0000:00:00:00:00:00 2023:07:09:10:34:44 root 1 first-login-info 0 self-changed-password 1 "-----"
 terminal user name buildrun_new_password radiusnet *~uc$3b$\Q_wUL$Uv@5f73XgY/HX$TM<cMMzCN1VXy&(x>D.DB`,g'|o1QEt&_TJ(X5E3$* 0 2023:07:01:04:49:35 2023:07:01:04:59:48 root 2 first-login-info 0 self-changed-password 1 "-----"
 terminal user name buildrun_new_password suporte *~ub$3b$!g]SB`[/$G%eagGgRk.A$x9iQ,(I7A&kM2IKKD!a@pQX/Zn|E_&:)M>PVYNt>$* 0 2025:07:28:09:24:10 2025:07:28:09:24:47 suporte 3 first-login-info 0 self-changed-password 1 "Suporte Operador"
 system modify logon password enable all
 system user password security mode enhance
 system user password security-length 12
 terminal user name history_password root *j$3b$q|rIE*eMKIVFPXI9%VG5$'zA6B5)7#0/t|:Vh@Aw<+fEK5[t.o;%+'P)&^$D5$* *j$3b$w{C62YDl,&$[3iCFU'a4$bRBk.w,A!UTH9,,ZN'R0G^k%1_'PKF9%]\U$:^!*$* *j$3b$3|X`>Rv]tJ@'.}G~}tJH$9%rLG;^HlWl@hg1,Qo,CM2TbL8)M0E$fz$LB:]WA$* *j$3b$QZ)ENC'Zi;lvR~>F&H|M$aCVw7;jLL~Fsv'~sNh;@GHw}M{qJD~31r+M0gXo)$*
 terminal user name history_password radiusnet *~uc$3b$-qex9:,/",oYL*3yOJ~V$/`rK-B.k-Na^m*7n>/lNKO]iJu4d$:vL%<1Znm(;$*
 terminal user name history_password suporte *~ub$3b$\["@~sYK5:x^|2I=A*xY$B$,rCB^k0)yA=xJzGUK@XyE;2J$sGGar;^U,7^jG$*
 ssh client key-exchange sftp dh_group_exchange_sha256 curve25519_sha256
 ssh client dh-exchange sftp min-len 2048
 xpon ont optical-ddm quick-query disable
 dba-profile add profile-id 10 profile-name "dba-profile_10" type4 max 1024000
 dba-profile add profile-id 11 profile-name "dba-profile_11" type4 max 102400
 dba-profile add profile-id 12 profile-name "dba-profile_12" type4 max 204800
 ont wan-profile profile-id 0 profile-name "wan-profile_0"
  nat enable
  quit
 ont-srvprofile gpon profile-id 1 profile-name "SRVPROFILE_ROUTER"
  ont-port pots 1 eth 2
  port vlan eth 1 transparent
  port vlan eth 2 transparent
  port vlan iphost translation 131 user-vlan 131
  commit
 ont-srvprofile gpon profile-id 3 profile-name "SRVPROFILE_ROUTER_CYBER"
  ont-port pots 1 eth 2
  port vlan eth 1 transparent
  port vlan eth 2 transparent
  port vlan iphost translation 133 user-vlan 133
  commit
 ont-srvprofile gpon profile-id 10 profile-name "ONT-1GE"
  ont-port eth 1 catv adaptive 8
  ring check enable
  commit
 ont-srvprofile gpon profile-id 21 profile-name "SRVPROFILE_BRIDGE_21"
  ont-port eth 1
  port vlan eth 1 translation 21 user-vlan 21
  commit
 ont-srvprofile gpon profile-id 30 profile-name "SRVPROFILE_BRIDGE_30_DUASP"
  ont-port eth 2
  port vlan eth 1 translation 3104 user-vlan 3104
  port vlan eth 2 translation 3108 user-vlan 3108
  commit
 ont-srvprofile gpon profile-id 131 profile-name "SRVPROFILE_BRIDGE_131"
  ont-port eth 1
  port vlan eth 1 translation 131 user-vlan 131
  commit
 ont-srvprofile gpon profile-id 133 profile-name "SRVPROFILE_BRIDGE_133"
  ont-port eth 1
  port vlan eth 1 translation 133 user-vlan 133
  commit
 ont-srvprofile gpon profile-id 134 profile-name "SRVPROFILE_BRIDGE_133_DUASP"
  ont-port eth 2
  port vlan eth 1 translation 133 user-vlan 133
  port vlan eth 2 translation 133 user-vlan 133
  commit
 ont-srvprofile gpon profile-id 964 profile-name "SRVPROFILE_BRIDGE_3964"
  ont-port eth 1
  port q-in-q eth 1 enable
  commit
 ont-srvprofile gpon profile-id 2107 profile-name "SRVPROFILE2_BRIDGE_3107"
  ont-port eth 1
  port vlan eth 1 translation 3107 user-vlan 3107
  commit
 ont-srvprofile gpon profile-id 3005 profile-name "SRVPROFILE_BRIDGE_V3005"
  ont-port eth 2
  port q-in-q eth 1 enable
  commit
 ont-srvprofile gpon profile-id 3103 profile-name "SRVPROFILE_BRIDGE_3103"
  ont-port eth 1
  port vlan eth 1 translation 3103 user-vlan 3103
  commit
 ont-srvprofile gpon profile-id 3104 profile-name "SRVPROFILE_BRIDGE_3104"
  ont-port eth 1
  port vlan eth 1 translation 3104 user-vlan 3104
  commit
 ont-srvprofile gpon profile-id 3105 profile-name "SRVPROFILE_BRIDGE_3105"
  ont-port eth 1
  port vlan eth 1 translation 3105 user-vlan 3105
  commit
 ont-srvprofile gpon profile-id 3106 profile-name "SRVPROFILE_BRIDGE_3106"
  ont-port eth 4
  port vlan eth 1 translation 133 user-vlan 133
  port vlan eth 2 translation 3106 user-vlan 3106
  port vlan eth 3 translation 3106 user-vlan 3106
  port vlan eth 4 translation 3106 user-vlan 3106
  commit
 ont-srvprofile gpon profile-id 3107 profile-name "SRVPROFILE_BRIDGE_3107"
  ont-port eth 2
  port vlan eth 1 translation 3107 user-vlan 3107
  port vlan eth 2 translation 3108 user-vlan 3108
  commit
 ont-srvprofile gpon profile-id 3108 profile-name "SRVPROFILE_BRIDGE_3108"
  ont-port eth 1
  port vlan eth 1 translation 3108 user-vlan 3108
  commit
 ont-srvprofile gpon profile-id 3540 profile-name "SRVPROFILE_BRIDGE_3540"
  ont-port eth 1
  port vlan eth 1 translation 3540 user-vlan 3540
  commit
 ont-srvprofile gpon profile-id 3907 profile-name "SRVPROFILE_BRIDGE_3907"
  ont-port eth 2
  port q-in-q eth 1 enable
  port vlan eth 1 translation 3907 user-vlan 3907
  port vlan eth 2 translation 133 user-vlan 133
  commit
 ont-srvprofile gpon profile-id 3964 profile-name "SRVPROFILE_BRIDGE_V3964"
  ont-port eth 2
  port q-in-q eth 1 enable
  commit
 ont-lineprofile gpon profile-id 0 profile-name "line-profile_default_0"
  omcc encrypt off
  tcont 0 dba-profile-id 2
  tcont 1 dba-profile-id 0
  commit
  quit
 ont-lineprofile gpon profile-id 1 profile-name "SMARTOLT_FLEXIBLE_GPON"
  fec-upstream enable
  omcc encrypt on
  tr069-management enable
  mapping-mode priority
  tcont 0 dba-profile-id 2
  tcont 1 dba-profile-id 11
  tcont 2 dba-profile-id 11
  tcont 3 dba-profile-id 11
  gem add 1 eth tcont 1 encrypt on
  gem add 2 eth tcont 2 encrypt on
  gem add 3 eth tcont 3 encrypt on
  gem mapping 1 1 priority 0
  gem mapping 2 1 priority 2
  gem mapping 3 1 priority 5
  commit
  quit
 ont-lineprofile gpon profile-id 2 profile-name "line-profile_2"
  omcc encrypt on
  commit
  quit
 ont-lineprofile gpon profile-id 21 profile-name "LINE_PROFILE_21"
  omcc encrypt on
  tcont 1 dba-profile-id 10
  gem add 21 eth tcont 1 encrypt on
  gem mapping 21 0 vlan 21
  commit
  quit
 ont-lineprofile gpon profile-id 30 profile-name "LINE_PROFILE_30"
  omcc encrypt on
  tcont 1 dba-profile-id 10
  tcont 2 dba-profile-id 10
  gem add 104 eth tcont 1 encrypt on
  gem add 108 eth tcont 2 encrypt on
  gem mapping 104 0 vlan 3104
  gem mapping 108 0 vlan 3108
  commit
  quit
 ont-lineprofile gpon profile-id 131 profile-name "LINE_PROFILE_131"
  omcc encrypt on
  tcont 1 dba-profile-id 10
  gem add 131 eth tcont 1 encrypt on
  gem mapping 131 0 vlan 131
  commit
  quit
 ont-lineprofile gpon profile-id 133 profile-name "LINE_PROFILE_133"
  omcc encrypt on
  tcont 1 dba-profile-id 10
  gem add 133 eth tcont 1 encrypt on
  gem mapping 133 0 vlan 133
  commit
  quit
 ont-lineprofile gpon profile-id 134 profile-name "LINE_PROFILE_V133_DUASP"
  omcc encrypt on
  tcont 1 dba-profile-id 10
  tcont 2 dba-profile-id 10
  gem add 131 eth tcont 1 encrypt on
  gem add 133 eth tcont 2 encrypt on
  gem mapping 131 0 vlan 131
  gem mapping 133 0 vlan 133
  commit
  quit
 ont-lineprofile gpon profile-id 964 profile-name "LINE_PROFILE_3964"
  omcc encrypt on
  tcont 1 dba-profile-id 10
  gem add 964 eth tcont 1 encrypt on
  gem mapping 964 0 vlan 3964
  commit
  quit
 ont-lineprofile gpon profile-id 2107 profile-name "LINE_PROFILE2_3107"
  omcc encrypt on
  tcont 1 dba-profile-id 11
  gem add 107 eth tcont 1 encrypt on
  gem mapping 107 0 vlan 3107
  commit
  quit
 ont-lineprofile gpon profile-id 3005 profile-name "LINE_PROFILE_V3005"
  omcc encrypt on
  tcont 1 dba-profile-id 10
  gem add 5 eth tcont 0 encrypt on
  gem mapping 5 0 vlan 3005
  commit
  quit
 ont-lineprofile gpon profile-id 3103 profile-name "LINE_PROFILE_3103"
  omcc encrypt on
  tcont 1 dba-profile-id 11
  gem add 103 eth tcont 1 encrypt on
  gem mapping 103 0 vlan 3103
  commit
  quit
 ont-lineprofile gpon profile-id 3104 profile-name "LINE_PROFILE_3104"
  omcc encrypt on
  tcont 1 dba-profile-id 11
  gem add 104 eth tcont 1 encrypt on
  gem mapping 104 0 vlan 3104
  commit
  quit
 ont-lineprofile gpon profile-id 3105 profile-name "LINE_PROFILE_3105"
  omcc encrypt on
  tcont 1 dba-profile-id 11
  gem add 105 eth tcont 1 encrypt on
  gem mapping 105 0 vlan 3105
  commit
  quit
 ont-lineprofile gpon profile-id 3106 profile-name "LINE_PROFILE_3106"
  omcc encrypt on
  tcont 1 dba-profile-id 10
  tcont 2 dba-profile-id 11
  gem add 106 eth tcont 2 encrypt on
  gem add 133 eth tcont 1 encrypt on
  gem mapping 106 0 vlan 3106
  gem mapping 133 0 vlan 133
  commit
  quit
 ont-lineprofile gpon profile-id 3107 profile-name "LINE_PROFILE_3107"
  omcc encrypt on
  tcont 1 dba-profile-id 11
  tcont 2 dba-profile-id 11
  gem add 107 eth tcont 1 encrypt on
  gem add 108 eth tcont 2 encrypt on
  gem mapping 107 0 vlan 3107
  gem mapping 108 0 vlan 310
  commit
  quit
 ont-lineprofile gpon profile-id 3108 profile-name "LINE_PROFILE_3108"
  omcc encrypt on
  tcont 1 dba-profile-id 11
  gem add 108 eth tcont 1 encrypt on
  gem mapping 108 0 vlan 3108
  commit
  quit
 ont-lineprofile gpon profile-id 3540 profile-name "LINE_PROFILE_3540"
  omcc encrypt on
  tcont 1 dba-profile-id 10
  gem add 540 eth tcont 1 encrypt on
  gem mapping 540 0 vlan 3540
  commit
  quit
 ont-lineprofile gpon profile-id 3907 profile-name "LINE_PROFILE_3907"
  omcc encrypt on
  tcont 1 dba-profile-id 12
  tcont 2 dba-profile-id 12
  gem add 133 eth tcont 2 encrypt on
  gem add 907 eth tcont 1 encrypt on
  gem mapping 133 0 vlan 133
  gem mapping 907 0 vlan 3907
  commit
  quit
 ont-lineprofile gpon profile-id 3964 profile-name "LINE_PROFILE_V3964"
  omcc encrypt on
  tcont 1 dba-profile-id 10
  gem add 964 eth tcont 0 encrypt on
  gem mapping 964 0 vlan 3964
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
 vlan 21 smart
 vlan 130 to 131 smart
 vlan 133 smart
 vlan 3005 smart
 vlan 3103 to 3108 smart
 vlan 3540 smart
 vlan 3907 smart
 vlan 3964 smart
 vlan desc 21 description "VLAN21_POP17_OLT1_PPPOE_SCHOSSL"
 vlan desc 130 description "VLAN130_POP13_OLT1_GERENCIA"
 vlan desc 131 description "VLAN131_POP13_OLT1_PPPOE"
 vlan desc 133 description "VLAN133_POP13_OLT1_PPPOE"
 vlan desc 3005 description "VLAN_3005_TRANSP_L2_TELIUM"
 vlan desc 3107 description "VLAN_3107_POA_+_SEG"
 vlan desc 3108 description "VLAN_3108_POA_+_SEG"
 vlan desc 3540 description "VLAN_3540_MEDIANET"
 vlan desc 3907 description "VLAN_3907_TRANSP_ALIANCA"
 vlan desc 3964 description "VLAN_3964_TRANSP_L2_ALT"
 port vlan 21 0/3 0
 port vlan 21 0/3 1
 port vlan 21 0/3 2
 port vlan 130 to 131 0/3 0
 port vlan 130 to 131 0/3 1
 port vlan 130 to 131 0/3 2
 port vlan 133 0/3 0
 port vlan 133 0/3 1
 port vlan 133 0/3 2
 port vlan 3005 0/3 0
 port vlan 3005 0/3 1
 port vlan 3005 0/3 2
 port vlan 3103 to 3108 0/3 0
 port vlan 3103 to 3108 0/3 1
 port vlan 3103 to 3108 0/3 2
 port vlan 3540 0/3 0
 port vlan 3540 0/3 1
 port vlan 3540 0/3 2
 port vlan 3907 0/3 0
 port vlan 3907 0/3 1
 port vlan 3907 0/3 2
 port vlan 3964 0/3 0
 port vlan 3964 0/3 1
 port vlan 3964 0/3 2
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
 jumbo-frame 0 enable
 jumbo-frame 1 enable
 jumbo-frame 2 enable
 jumbo-frame 3 enable
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
 ont add 0 0 sn-auth "48575443F5E5A8AB" omci ont-lineprofile-id 131 ont-srvprofile-id 131 desc "15063_andreafatorri_dfde"
 ont add 2 0 sn-auth "48575443C6A45AB1" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "113"
 ont add 2 1 sn-auth "485754431D0CEE9B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "SAUDE_PUC"
 ont add 2 2 sn-auth "485754431D76B79B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 2 3 sn-auth "485754431DB8849B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "551"
 ont add 2 4 sn-auth "48575443F2F962AB" omci ont-lineprofile-id 131 ont-srvprofile-id 131 desc "15885_paulosilveira_2927"
 ont add 2 5 sn-auth "485754431D53899B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "569"
 ont add 2 6 sn-auth "485754430F72EEB1" omci ont-lineprofile-id 131 ont-srvprofile-id 131 desc "16515_dellasltda_29d8"
 ont add 2 7 sn-auth "485754431D70DD9B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "703"
 ont add 2 8 sn-auth "485754430F6670B1" omci ont-lineprofile-id 131 ont-srvprofile-id 131 desc "16891_antoniodasilva_2f98"
 ont add 6 0 sn-auth "485754431D2F209B" omci ont-lineprofile-id 964 ont-srvprofile-id 964 desc "ONT_HUAWEI"
 ont add 6 1 sn-auth "485754431D917D9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 6 2 sn-auth "485754431D7F809B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 6 3 sn-auth "49544253E8F6E69B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "499"
 ont add 6 4 sn-auth "485754431D00EB9B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 6 5 sn-auth "485754431DD4269B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "341"
 ont add 6 6 sn-auth "485754431D90F69B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 6 7 sn-auth "485754431D1BCD9B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "175"
 ont add 6 8 sn-auth "49544253E8F6E466" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "503"
 ont add 6 9 sn-auth "48575443A6A4929B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "507"
 ont add 6 10 sn-auth "49544253E8F6E46B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "509"
 ont add 6 11 sn-auth "495442530A6E7038" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "521"
 ont add 6 12 sn-auth "485754431DFE479B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 6 13 sn-auth "485754431D99689B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "527"
 ont add 6 14 sn-auth "485754431D5F089B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "511"
 ont add 6 15 sn-auth "49544253E8F6E697" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "513"
 ont add 6 16 sn-auth "49544253E8F6E69D" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "517"
 ont add 6 17 sn-auth "49544253E8F6E6A4" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "519"
 ont add 6 18 sn-auth "495442538B6899B9" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "535"
 ont add 6 19 sn-auth "485754431D38009B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 6 20 sn-auth "52434D471998831F" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "529"
 ont add 6 21 sn-auth "485754431DDF599B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 6 22 sn-auth "49544253E8F6E69C" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "515"
 ont add 6 23 sn-auth "52434D473A98232B" omci ont-lineprofile-id 21 ont-srvprofile-id 21 desc "11047_br_sulnet_1e0e"
 ont add 6 24 sn-auth "485754431DAB359B" omci ont-lineprofile-id 131 ont-srvprofile-id 131 desc "9933_gevanildosantos_b860"
 ont add 6 25 sn-auth "485754431D5C2F9B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 6 26 sn-auth "495442533271C76F" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "533"
 ont add 6 27 sn-auth "52434D47199881D4" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "525"
 ont add 6 28 sn-auth "52434D4719988743" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "537"
 ont add 6 29 sn-auth "52434D47199880D2" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "539"
 ont add 6 30 sn-auth "495442533271C78D" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "541"
 ont add 6 31 sn-auth "52434D4719988CDA" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "543"
 ont add 6 32 sn-auth "485754431D4F509B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 6 33 sn-auth "52434D4719988311" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "547"
 ont add 6 34 sn-auth "485754431D74FF9B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "561"
 ont add 6 35 sn-auth "485754431D7C619B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "555"
 ont add 6 36 sn-auth "485754431D6F829B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "325"
 ont add 6 37 sn-auth "485754431DA7649B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "559"
 ont add 6 38 sn-auth "485754431D95CE9B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "557"
 ont add 6 39 sn-auth "485754431D6AEE9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 6 40 sn-auth "48575443F2F34EAB" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "ONT_HUAWEI"
 ont add 6 41 sn-auth "485754431DB5979B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 6 42 sn-auth "485754431D386D9B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "523"
 ont add 6 43 sn-auth "485754431D8A8D9B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "ONT_HUAWEI"
 ont add 6 44 sn-auth "485754431D41749B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 6 45 sn-auth "485754434B23899C" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 6 46 sn-auth "465354540000E3FB" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 6 47 sn-auth "46535454B81CDDD7" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 6 48 sn-auth "48575443F262089E" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 6 49 sn-auth "485754431D0AB89B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 6 50 sn-auth "48575443B463809E" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 6 51 sn-auth "48575443A63A459B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 6 52 sn-auth "46535454B81CF304" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 6 53 sn-auth "46535454B81D0B15" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 6 54 sn-auth "46535454B81CF12B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 6 55 sn-auth "46535454B81CE041" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 6 56 sn-auth "48575443A23AFD9D" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 12 0 sn-auth "52434D4719988363" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "109"
 ont add 12 1 sn-auth "52434D4719988276" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "107"
 ont add 12 2 sn-auth "52434D47199882A7" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "111"
 ont add 12 3 sn-auth "485754431D3AE69B" omci ont-lineprofile-id 3106 ont-srvprofile-id 3106 desc "SSP_3106"
 ont add 12 4 sn-auth "49544253E8F6DF7E" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "123"
 ont add 12 5 sn-auth "485754431DF4E69B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "125"
 ont add 12 6 sn-auth "495442533221BE08" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "1197"
 ont add 12 7 sn-auth "52434D4719987EC8" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "137"
 ont add 12 8 sn-auth "52434D471998D22B" omci ont-lineprofile-id 3106 ont-srvprofile-id 3106 desc "CLIENTE_DEDICADO"
 ont add 12 9 sn-auth "52434D4719987FC9" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "135"
 ont add 12 10 sn-auth "485754431DA6499B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "141"
 ont add 12 11 sn-auth "485754431DD9A39B" omci ont-lineprofile-id 3907 ont-srvprofile-id 3907 desc "CLIENTE_DEDICADO_ADVICEIT"
 ont add 12 12 sn-auth "485754431DE2AF9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 12 13 sn-auth "485754431D29539B" omci ont-lineprofile-id 3005 ont-srvprofile-id 3005 desc "TRANSP_L2_TELIUM_S_CAS"
 ont add 12 14 sn-auth "485754431D9B7F9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 12 15 sn-auth "485754431D2EF29B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 12 16 sn-auth "485754431D0F779B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 12 17 sn-auth "485754431D175B9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 12 18 sn-auth "485754431DC47E9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 12 19 sn-auth "485754431D82C89B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 12 20 sn-auth "485754431DAE569B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 12 21 sn-auth "485754431DE04D9B" omci ont-lineprofile-id 30 ont-srvprofile-id 30 desc "ONU_CEIC"
 ont add 12 22 sn-auth "485754431D03569B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 12 23 sn-auth "485754431D3ABA9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 12 24 sn-auth "485754431D39A29B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 12 25 sn-auth "485754431D22759B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 12 26 sn-auth "485754431D04499B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 12 27 sn-auth "485754431DE8ED9B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "343"
 ont add 12 28 sn-auth "485754431D04339B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 12 29 sn-auth "485754431D53079B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 12 30 sn-auth "485754431DC9FF9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 12 31 sn-auth "485754431D07D39B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 12 32 sn-auth "485754431D23EF9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 12 33 sn-auth "485754431D6C069B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 12 34 sn-auth "49544253325312A2" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "369"
 ont add 12 35 sn-auth "44443732E606FE80" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "373"
 ont add 12 36 sn-auth "49544253E8F8D375" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "371"
 ont add 12 37 sn-auth "485754431D69929B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 12 38 sn-auth "485754431DD70D9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 12 39 sn-auth "485754431DAE039B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 12 40 sn-auth "485754431D87919B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 12 41 sn-auth "485754431D01D59B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 12 42 sn-auth "485754431DEDB19B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 12 43 sn-auth "485754431DD0EA9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 12 44 sn-auth "485754431D261B9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 12 45 sn-auth "485754431DAAB59B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "567"
 ont add 12 46 sn-auth "485754431D61E39B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 12 47 sn-auth "485754431D01D49B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "CAMERA"
 ont add 12 48 sn-auth "485754431DCBDE9B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 12 49 sn-auth "485754431D637B9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 12 50 sn-auth "485754431D8DA19B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 12 51 sn-auth "485754431DCEEA9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 12 52 sn-auth "485754431D34DE9B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "663"
 ont add 12 53 sn-auth "485754431DC18D9B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 12 54 sn-auth "485754431DFAC69B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 12 55 sn-auth "485754431D6FFF9B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "169"
 ont add 12 56 sn-auth "485754431D52589B" omci ont-lineprofile-id 3540 ont-srvprofile-id 3540 desc "CLIENTE_MIDIANET"
 ont add 12 57 sn-auth "48575443E7165C9E" omci ont-lineprofile-id 3540 ont-srvprofile-id 3540 desc "CLIENTE_MIDIANET"
 ont add 12 58 sn-auth "485754433217A59D" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "ONT_HUAWEI"
 ont add 12 59 sn-auth "4857544380B1A79A" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "TELEALARME_PONTO4"
 ont add 14 0 sn-auth "485754431D5E219B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 14 1 sn-auth "485754431D1BB49B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 14 2 sn-auth "485754431D10639B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 14 3 sn-auth "485754431D63CE9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 14 4 sn-auth "485754431DAB889B" omci ont-lineprofile-id 131 ont-srvprofile-id 131 desc "15245_lojaquero_quero_8cc9"
 ont add 14 5 sn-auth "485754431DEE7C9B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 14 6 sn-auth "485754431DF11A9B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 14 7 sn-auth "485754431DB2F89B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 14 8 sn-auth "485754431DBE379B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 14 9 sn-auth "485754431DCD239B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 14 10 sn-auth "485754431D29499B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 14 11 sn-auth "485754431D2E7B9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 14 12 sn-auth "485754431DBB729B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 14 13 sn-auth "48575443326D819D" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 14 14 sn-auth "48575443E751E79E" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 14 15 sn-auth "4653545400006E11" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 14 16 sn-auth "4653545400007369" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 14 17 sn-auth "4653545400006439" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 14 18 sn-auth "485754431DCA839B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 14 19 sn-auth "48575443261CDA9F" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 14 20 sn-auth "48575443D415BD9E" omci ont-lineprofile-id 2107 ont-srvprofile-id 2107 desc "SMSEG212"
 ont add 14 21 sn-auth "485754434B881B9C" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 14 22 sn-auth "46535454000072C2" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 14 23 sn-auth "48575443E79A8F9E" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 14 24 sn-auth "485754431D63839B" omci ont-lineprofile-id 131 ont-srvprofile-id 131 desc "8371_dgt_panvel2_0ee5"
 ont add 14 25 sn-auth "48575443F2307C9E" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 14 26 sn-auth "46535454B81CEEA6" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 14 27 sn-auth "46535454B81D0904" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 14 28 sn-auth "46535454B81CFA68" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont port native-vlan 2 0 eth 1 vlan 133 priority 0
 ont port native-vlan 2 1 eth 1 vlan 133 priority 0
 ont port native-vlan 2 2 eth 1 vlan 3107 priority 0
 ont port native-vlan 2 3 eth 1 vlan 3105 priority 0
 ont port native-vlan 2 5 eth 1 vlan 3105 priority 0
 ont port native-vlan 2 7 eth 1 vlan 133 priority 0
 ont port native-vlan 6 0 eth 1 vlan 3964 priority 0
 ont port native-vlan 6 1 eth 1 vlan 3107 priority 0
 ont port native-vlan 6 1 eth 2 vlan 3107 priority 0
 ont port native-vlan 6 2 eth 1 vlan 3107 priority 0
 ont port native-vlan 6 2 eth 2 vlan 3107 priority 0
 ont port native-vlan 6 3 eth 1 vlan 3105 priority 0
 ont port native-vlan 6 4 eth 1 vlan 3964 priority 0
 ont port native-vlan 6 4 eth 2 vlan 3964 priority 0
 ont port native-vlan 6 5 eth 1 vlan 133 priority 0
 ont port native-vlan 6 6 eth 1 vlan 3964 priority 0
 ont port native-vlan 6 6 eth 2 vlan 3964 priority 0
 ont port native-vlan 6 7 eth 1 vlan 133 priority 0
 ont port native-vlan 6 8 eth 1 vlan 3105 priority 0
 ont port native-vlan 6 9 eth 1 vlan 3105 priority 0
 ont port native-vlan 6 10 eth 1 vlan 3105 priority 0
 ont port native-vlan 6 11 eth 1 vlan 3105 priority 0
 ont port native-vlan 6 12 eth 1 vlan 3964 priority 0
 ont port native-vlan 6 12 eth 2 vlan 3964 priority 0
 ont port native-vlan 6 13 eth 1 vlan 3105 priority 0
 ont port native-vlan 6 14 eth 1 vlan 3105 priority 0
 ont port native-vlan 6 15 eth 1 vlan 3105 priority 0
 ont port native-vlan 6 16 eth 1 vlan 3105 priority 0
 ont port native-vlan 6 17 eth 1 vlan 3105 priority 0
 ont port native-vlan 6 18 eth 1 vlan 3105 priority 0
 ont port native-vlan 6 19 eth 1 vlan 3964 priority 0
 ont port native-vlan 6 19 eth 2 vlan 3964 priority 0
 ont port native-vlan 6 20 eth 1 vlan 3105 priority 0
 ont port native-vlan 6 21 eth 1 vlan 3964 priority 0
 ont port native-vlan 6 21 eth 2 vlan 3964 priority 0
 ont port native-vlan 6 22 eth 1 vlan 3105 priority 0
 ont port native-vlan 6 23 eth 1 vlan 21 priority 0
 ont port native-vlan 6 24 eth 1 vlan 131 priority 0
 ont port native-vlan 6 25 eth 1 vlan 3964 priority 0
 ont port native-vlan 6 25 eth 2 vlan 3964 priority 0
 ont port native-vlan 6 26 eth 1 vlan 3105 priority 0
 ont port native-vlan 6 27 eth 1 vlan 3105 priority 0
 ont port native-vlan 6 28 eth 1 vlan 3105 priority 0
 ont port native-vlan 6 29 eth 1 vlan 3105 priority 0
 ont port native-vlan 6 30 eth 1 vlan 3105 priority 0
 ont port native-vlan 6 31 eth 1 vlan 3105 priority 0
 ont port native-vlan 6 32 eth 1 vlan 3964 priority 0
 ont port native-vlan 6 32 eth 2 vlan 3964 priority 0
 ont port native-vlan 6 33 eth 1 vlan 3105 priority 0
 ont port native-vlan 6 34 eth 1 vlan 133 priority 0
 ont port native-vlan 6 35 eth 1 vlan 133 priority 0
 ont port native-vlan 6 36 eth 1 vlan 133 priority 0
 ont port native-vlan 6 37 eth 1 vlan 133 priority 0
 ont port native-vlan 6 38 eth 1 vlan 133 priority 0
 ont port native-vlan 6 39 eth 1 vlan 3107 priority 0
 ont port native-vlan 6 39 eth 2 vlan 3107 priority 0
 ont port native-vlan 6 41 eth 1 vlan 3107 priority 0
 ont port native-vlan 6 41 eth 2 vlan 3107 priority 0
 ont port native-vlan 6 42 eth 1 vlan 3105 priority 0
 ont port native-vlan 6 43 eth 1 vlan 133 priority 0
 ont port native-vlan 6 44 eth 1 vlan 3107 priority 0
 ont port native-vlan 6 44 eth 2 vlan 3107 priority 0
 ont port native-vlan 6 45 eth 1 vlan 3107 priority 0
 ont port native-vlan 6 45 eth 2 vlan 3107 priority 0
 ont port native-vlan 6 46 eth 1 vlan 3107 priority 0
 ont port native-vlan 6 46 eth 2 vlan 3107 priority 0
 ont port native-vlan 6 47 eth 1 vlan 3107 priority 0
 ont port native-vlan 6 47 eth 2 vlan 3107 priority 0
 ont port native-vlan 6 48 eth 1 vlan 3107 priority 0
 ont port native-vlan 6 48 eth 2 vlan 3107 priority 0
 ont port native-vlan 6 49 eth 1 vlan 3107 priority 0
 ont port native-vlan 6 49 eth 2 vlan 3107 priority 0
 ont port native-vlan 6 50 eth 1 vlan 3107 priority 0
 ont port native-vlan 6 50 eth 2 vlan 3107 priority 0
 ont port native-vlan 6 51 eth 1 vlan 3107 priority 0
 ont port native-vlan 6 51 eth 2 vlan 3107 priority 0
 ont port native-vlan 6 52 eth 1 vlan 3107 priority 0
 ont port native-vlan 6 52 eth 2 vlan 3107 priority 0
 ont port native-vlan 6 53 eth 1 vlan 3107 priority 0
 ont port native-vlan 6 53 eth 2 vlan 3107 priority 0
 ont port native-vlan 6 54 eth 1 vlan 3107 priority 0
 ont port native-vlan 6 54 eth 2 vlan 3107 priority 0
 ont port native-vlan 6 55 eth 1 vlan 3107 priority 0
 ont port native-vlan 6 55 eth 2 vlan 3107 priority 0
 ont port native-vlan 6 56 eth 1 vlan 3107 priority 0
 ont port native-vlan 6 56 eth 2 vlan 3107 priority 0
 ont port native-vlan 12 0 eth 1 vlan 3105 priority 0
 ont port native-vlan 12 1 eth 1 vlan 3105 priority 0
 ont port native-vlan 12 2 eth 1 vlan 3105 priority 0
 ont port native-vlan 12 3 eth 1 vlan 133 priority 0
 ont port native-vlan 12 3 eth 2 vlan 3106 priority 0
 ont port native-vlan 12 4 eth 1 vlan 3105 priority 0
 ont port native-vlan 12 5 eth 1 vlan 3105 priority 0
 ont port native-vlan 12 6 eth 1 vlan 3105 priority 0
 ont port native-vlan 12 7 eth 1 vlan 3105 priority 0
 ont port native-vlan 12 8 eth 1 vlan 133 priority 0
 ont port native-vlan 12 8 eth 2 vlan 3106 priority 0
 ont port native-vlan 12 9 eth 1 vlan 3105 priority 0
 ont port native-vlan 12 10 eth 1 vlan 3105 priority 0
 ont port native-vlan 12 11 eth 1 vlan 3907 priority 0
 ont port native-vlan 12 11 eth 2 vlan 133 priority 0
 ont port native-vlan 12 12 eth 1 vlan 3107 priority 0
 ont port native-vlan 12 13 eth 1 vlan 3005 priority 0
 ont port native-vlan 12 14 eth 1 vlan 3107 priority 0
 ont port native-vlan 12 15 eth 1 vlan 3107 priority 0
 ont port native-vlan 12 16 eth 1 vlan 3107 priority 0
 ont port native-vlan 12 17 eth 1 vlan 3107 priority 0
 ont port native-vlan 12 18 eth 1 vlan 3107 priority 0
 ont port native-vlan 12 19 eth 1 vlan 3107 priority 0
 ont port native-vlan 12 19 eth 2 vlan 3107 priority 0
 ont port native-vlan 12 20 eth 1 vlan 3107 priority 0
 ont port native-vlan 12 21 eth 1 vlan 3104 priority 0
 ont port native-vlan 12 21 eth 2 vlan 3108 priority 0
 ont port native-vlan 12 22 eth 1 vlan 3964 priority 0
 ont port native-vlan 12 22 eth 2 vlan 3964 priority 0
 ont port native-vlan 12 23 eth 1 vlan 3107 priority 0
 ont port native-vlan 12 24 eth 1 vlan 3107 priority 0
 ont port native-vlan 12 24 eth 2 vlan 3107 priority 0
 ont port native-vlan 12 25 eth 1 vlan 3107 priority 0
 ont port native-vlan 12 25 eth 2 vlan 3107 priority 0
 ont port native-vlan 12 26 eth 1 vlan 3107 priority 0
 ont port native-vlan 12 26 eth 2 vlan 3107 priority 0
 ont port native-vlan 12 27 eth 1 vlan 133 priority 0
 ont port native-vlan 12 28 eth 1 vlan 3107 priority 0
 ont port native-vlan 12 29 eth 1 vlan 3107 priority 0
 ont port native-vlan 12 30 eth 1 vlan 3107 priority 0
 ont port native-vlan 12 30 eth 2 vlan 3107 priority 0
 ont port native-vlan 12 31 eth 1 vlan 3107 priority 0
 ont port native-vlan 12 32 eth 1 vlan 3107 priority 0
 ont port native-vlan 12 33 eth 1 vlan 3107 priority 0
 ont port native-vlan 12 34 eth 1 vlan 3105 priority 0
 ont port native-vlan 12 35 eth 1 vlan 3105 priority 0
 ont port native-vlan 12 36 eth 1 vlan 3105 priority 0
 ont port native-vlan 12 37 eth 1 vlan 3107 priority 0
 ont port native-vlan 12 38 eth 1 vlan 3107 priority 0
 ont port native-vlan 12 38 eth 2 vlan 3107 priority 0
 ont port native-vlan 12 39 eth 1 vlan 3964 priority 0
 ont port native-vlan 12 39 eth 2 vlan 3964 priority 0
 ont port native-vlan 12 40 eth 1 vlan 3964 priority 0
 ont port native-vlan 12 40 eth 2 vlan 3964 priority 0
 ont port native-vlan 12 41 eth 1 vlan 3964 priority 0
 ont port native-vlan 12 41 eth 2 vlan 3964 priority 0
 ont port native-vlan 12 42 eth 1 vlan 3107 priority 0
 ont port native-vlan 12 43 eth 1 vlan 3107 priority 0
 ont port native-vlan 12 44 eth 1 vlan 3107 priority 0
 ont port native-vlan 12 44 eth 2 vlan 3107 priority 0
 ont port native-vlan 12 45 eth 1 vlan 3105 priority 0
 ont port native-vlan 12 46 eth 1 vlan 3107 priority 0
 ont port native-vlan 12 47 eth 1 vlan 3107 priority 0
 ont port native-vlan 12 48 eth 1 vlan 3964 priority 0
 ont port native-vlan 12 48 eth 2 vlan 3964 priority 0
 ont port native-vlan 12 49 eth 1 vlan 3107 priority 0
 ont port native-vlan 12 49 eth 2 vlan 3107 priority 0
 ont port native-vlan 12 50 eth 1 vlan 3107 priority 0
 ont port native-vlan 12 51 eth 1 vlan 3107 priority 0
 ont port native-vlan 12 52 eth 1 vlan 133 priority 0
 ont port native-vlan 12 53 eth 1 vlan 3964 priority 0
 ont port native-vlan 12 53 eth 2 vlan 3964 priority 0
 ont port native-vlan 12 54 eth 1 vlan 3964 priority 0
 ont port native-vlan 12 54 eth 2 vlan 3964 priority 0
 ont port native-vlan 12 55 eth 1 vlan 133 priority 0
 ont port native-vlan 12 56 eth 1 vlan 3540 priority 0
 ont port native-vlan 12 57 eth 1 vlan 3540 priority 0
 ont port native-vlan 12 58 eth 1 vlan 133 priority 0
 ont port native-vlan 12 59 eth 1 vlan 133 priority 0
 ont port native-vlan 14 0 eth 1 vlan 3107 priority 0
 ont port native-vlan 14 0 eth 2 vlan 3107 priority 0
 ont port native-vlan 14 1 eth 1 vlan 3107 priority 0
 ont port native-vlan 14 1 eth 2 vlan 3107 priority 0
 ont port native-vlan 14 2 eth 1 vlan 3107 priority 0
 ont port native-vlan 14 2 eth 2 vlan 3107 priority 0
 ont port native-vlan 14 3 eth 1 vlan 3107 priority 0
 ont port native-vlan 14 3 eth 2 vlan 3107 priority 0
 ont port native-vlan 14 4 eth 1 vlan 131 priority 0
 ont port native-vlan 14 5 eth 1 vlan 3964 priority 0
 ont port native-vlan 14 5 eth 2 vlan 3964 priority 0
 ont port native-vlan 14 6 eth 1 vlan 3964 priority 0
 ont port native-vlan 14 6 eth 2 vlan 3964 priority 0
 ont port native-vlan 14 7 eth 1 vlan 3107 priority 0
 ont port native-vlan 14 7 eth 2 vlan 3107 priority 0
 ont port native-vlan 14 8 eth 1 vlan 3107 priority 0
 ont port native-vlan 14 8 eth 2 vlan 3107 priority 0
 ont port native-vlan 14 9 eth 1 vlan 3107 priority 0
 ont port native-vlan 14 9 eth 2 vlan 3107 priority 0
 ont port native-vlan 14 10 eth 1 vlan 3964 priority 0
 ont port native-vlan 14 10 eth 2 vlan 3964 priority 0
 ont port native-vlan 14 11 eth 1 vlan 3107 priority 0
 ont port native-vlan 14 11 eth 2 vlan 3107 priority 0
 ont port native-vlan 14 12 eth 1 vlan 3964 priority 0
 ont port native-vlan 14 12 eth 2 vlan 3964 priority 0
 ont port native-vlan 14 13 eth 1 vlan 3107 priority 0
 ont port native-vlan 14 13 eth 2 vlan 3107 priority 0
 ont port native-vlan 14 14 eth 1 vlan 3107 priority 0
 ont port native-vlan 14 14 eth 2 vlan 3107 priority 0
 ont port native-vlan 14 15 eth 1 vlan 3107 priority 0
 ont port native-vlan 14 15 eth 2 vlan 3107 priority 0
 ont port native-vlan 14 16 eth 1 vlan 3107 priority 0
 ont port native-vlan 14 16 eth 2 vlan 3107 priority 0
 ont port native-vlan 14 17 eth 1 vlan 3107 priority 0
 ont port native-vlan 14 17 eth 2 vlan 3107 priority 0
 ont port native-vlan 14 18 eth 1 vlan 3107 priority 0
 ont port native-vlan 14 18 eth 2 vlan 3107 priority 0
 ont port native-vlan 14 19 eth 1 vlan 3107 priority 0
 ont port native-vlan 14 19 eth 2 vlan 3107 priority 0
 ont port native-vlan 14 20 eth 1 vlan 3107 priority 0
 ont port native-vlan 14 21 eth 1 vlan 3107 priority 0
 ont port native-vlan 14 21 eth 2 vlan 3107 priority 0
 ont port native-vlan 14 22 eth 1 vlan 3107 priority 0
 ont port native-vlan 14 22 eth 2 vlan 3107 priority 0
 ont port native-vlan 14 23 eth 1 vlan 3107 priority 0
 ont port native-vlan 14 23 eth 2 vlan 3107 priority 0
 ont port native-vlan 14 24 eth 1 vlan 131 priority 0
 ont port native-vlan 14 25 eth 1 vlan 3107 priority 0
 ont port native-vlan 14 25 eth 2 vlan 3107 priority 0
 ont port native-vlan 14 26 eth 1 vlan 3107 priority 0
 ont port native-vlan 14 26 eth 2 vlan 3107 priority 0
 ont port native-vlan 14 27 eth 1 vlan 3107 priority 0
 ont port native-vlan 14 27 eth 2 vlan 3107 priority 0
 ont port native-vlan 14 28 eth 1 vlan 3107 priority 0
 ont port native-vlan 14 28 eth 2 vlan 3107 priority 0
#
[platform-config]
  <platform-config>
 autosave type data
 autosave interval on
 autosave interval 1442
 autosave time on
 autosave time 00:00:00
 autosave type configuration
 autosave interval on
 autosave interval 1442
 autosave time on
 autosave time 00:00:00
 autosave interval configuration 480
#
[emu-config]
  <emu-config>
 emu add 0 fan 0 1  "H902FMSA"
#
[bbs-config]
  <bbs-config>
 link-aggregation 0/3 2 ingress workmode lacp-static
 link-aggregation add-member 0/3/2 0/3 3
 service-port 0 vlan 3105 gpon 0/1/12 ont 0 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 1 vlan 3105 gpon 0/1/12 ont 1 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 2 vlan 3105 gpon 0/1/12 ont 2 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 3 vlan 133 gpon 0/1/12 ont 3 gemport 133 multi-service user-vlan 133 tag-transform translate
 service-port 4 vlan 3106 gpon 0/1/12 ont 3 gemport 106 multi-service user-vlan 3106 tag-transform translate
 service-port 5 vlan 133 gpon 0/1/2 ont 0 gemport 133 multi-service user-vlan 133 tag-transform translate
 service-port 6 vlan 133 gpon 0/1/2 ont 1 gemport 133 multi-service user-vlan 133 tag-transform translate
 service-port 7 vlan 3105 gpon 0/1/12 ont 4 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 8 vlan 133 gpon 0/1/12 ont 11 gemport 133 multi-service user-vlan 133 tag-transform translate
 service-port 10 vlan 3105 gpon 0/1/12 ont 7 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 11 vlan 3907 gpon 0/1/12 ont 11 gemport 907 multi-service user-vlan 3907 tag-transform translate
 service-port 12 vlan 3105 gpon 0/1/12 ont 9 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 14 vlan 3105 gpon 0/1/12 ont 10 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 15 vlan 133 gpon 0/1/12 ont 8 gemport 133 multi-service user-vlan 133 tag-transform translate
 service-port 16 vlan 3106 gpon 0/1/12 ont 8 gemport 106 multi-service user-vlan 3106 tag-transform translate
 service-port 17 vlan 3105 gpon 0/1/2 ont 5 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 18 vlan 3108 gpon 0/1/12 ont 21 gemport 108 multi-service user-vlan 3108 tag-transform translate
 service-port 19 vlan 3005 gpon 0/1/12 ont 13 gemport 5 multi-service user-vlan 3005 tag-transform transparent
 service-port 20 vlan 3105 gpon 0/1/6 ont 42 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 21 vlan 3964 gpon 0/1/6 ont 0 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 22 vlan 3107 gpon 0/1/12 ont 15 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 23 vlan 3107 gpon 0/1/12 ont 16 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 24 vlan 3107 gpon 0/1/12 ont 17 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 25 vlan 3107 gpon 0/1/12 ont 18 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 26 vlan 3540 gpon 0/1/12 ont 56 gemport 540 multi-service user-vlan 3540 tag-transform translate
 service-port 27 vlan 3107 gpon 0/1/12 ont 20 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 28 vlan 133 gpon 0/1/6 ont 43 gemport 133 multi-service user-vlan 133 tag-transform translate
 service-port 29 vlan 3104 gpon 0/1/12 ont 21 gemport 104 multi-service user-vlan 3104 tag-transform translate
 service-port 30 vlan 3540 gpon 0/1/12 ont 57 gemport 540 multi-service user-vlan 3540 tag-transform translate
 service-port 31 vlan 3107 gpon 0/1/12 ont 14 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 32 vlan 3107 gpon 0/1/12 ont 12 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 33 vlan 3107 gpon 0/1/12 ont 23 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 34 vlan 3107 gpon 0/1/14 ont 20 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 37 vlan 133 gpon 0/1/12 ont 27 gemport 133 multi-service user-vlan 133 tag-transform translate
 service-port 38 vlan 3107 gpon 0/1/12 ont 28 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 39 vlan 3107 gpon 0/1/12 ont 29 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 41 vlan 3107 gpon 0/1/12 ont 31 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 42 vlan 3107 gpon 0/1/12 ont 32 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 43 vlan 3107 gpon 0/1/12 ont 33 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 44 vlan 3105 gpon 0/1/12 ont 34 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 45 vlan 3105 gpon 0/1/12 ont 35 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 46 vlan 3105 gpon 0/1/12 ont 36 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 47 vlan 3107 gpon 0/1/12 ont 37 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 49 vlan 3964 gpon 0/1/12 ont 39 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 50 vlan 3964 gpon 0/1/12 ont 40 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 51 vlan 3964 gpon 0/1/12 ont 41 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 52 vlan 3107 gpon 0/1/12 ont 42 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 53 vlan 3107 gpon 0/1/12 ont 43 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 56 vlan 3107 gpon 0/1/12 ont 46 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 57 vlan 3107 gpon 0/1/12 ont 47 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 58 vlan 3964 gpon 0/1/12 ont 48 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 59 vlan 3964 gpon 0/1/12 ont 22 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 60 vlan 3107 gpon 0/1/12 ont 50 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 61 vlan 131 gpon 0/1/0 ont 0 gemport 131 multi-service user-vlan 131 tag-transform translate
 service-port 62 vlan 3107 gpon 0/1/12 ont 51 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 63 vlan 133 gpon 0/1/12 ont 52 gemport 133 multi-service user-vlan 133 tag-transform translate
 service-port 65 vlan 3964 gpon 0/1/12 ont 53 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 66 vlan 3107 gpon 0/1/2 ont 2 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 67 vlan 3964 gpon 0/1/12 ont 54 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 72 vlan 131 gpon 0/1/2 ont 6 gemport 131 multi-service user-vlan 131 tag-transform translate
 service-port 73 vlan 133 gpon 0/1/2 ont 7 gemport 133 multi-service user-vlan 133 tag-transform translate
 service-port 74 vlan 131 gpon 0/1/2 ont 8 gemport 131 multi-service user-vlan 131 tag-transform translate
 service-port 75 vlan 3107 gpon 0/1/12 ont 24 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 76 vlan 3105 gpon 0/1/6 ont 11 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 79 vlan 3107 gpon 0/1/14 ont 0 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 80 vlan 3107 gpon 0/1/14 ont 1 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 81 vlan 3107 gpon 0/1/12 ont 26 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 82 vlan 3107 gpon 0/1/14 ont 3 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 83 vlan 131 gpon 0/1/14 ont 4 gemport 131 multi-service user-vlan 131 tag-transform translate
 service-port 84 vlan 3964 gpon 0/1/14 ont 5 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 85 vlan 3964 gpon 0/1/14 ont 6 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 86 vlan 3107 gpon 0/1/14 ont 7 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 87 vlan 3107 gpon 0/1/14 ont 8 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 88 vlan 3107 gpon 0/1/14 ont 9 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 89 vlan 3964 gpon 0/1/14 ont 10 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 90 vlan 3107 gpon 0/1/14 ont 11 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 91 vlan 3964 gpon 0/1/14 ont 12 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 92 vlan 133 gpon 0/1/12 ont 55 gemport 133 multi-service user-vlan 133 tag-transform translate
 service-port 94 vlan 3107 gpon 0/1/14 ont 14 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 95 vlan 3107 gpon 0/1/6 ont 1 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 96 vlan 3107 gpon 0/1/6 ont 2 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 97 vlan 3107 gpon 0/1/14 ont 15 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 98 vlan 3105 gpon 0/1/6 ont 3 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 99 vlan 3964 gpon 0/1/6 ont 4 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 100 vlan 133 gpon 0/1/6 ont 5 gemport 133 multi-service user-vlan 133 tag-transform translate
 service-port 101 vlan 3964 gpon 0/1/6 ont 6 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 102 vlan 133 gpon 0/1/6 ont 7 gemport 133 multi-service user-vlan 133 tag-transform translate
 service-port 103 vlan 3105 gpon 0/1/6 ont 8 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 105 vlan 3105 gpon 0/1/6 ont 10 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 107 vlan 3107 gpon 0/1/14 ont 16 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 108 vlan 3107 gpon 0/1/14 ont 17 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 110 vlan 3105 gpon 0/1/6 ont 15 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 111 vlan 3105 gpon 0/1/6 ont 16 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 112 vlan 3105 gpon 0/1/6 ont 17 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 113 vlan 3964 gpon 0/1/6 ont 12 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 115 vlan 3964 gpon 0/1/6 ont 19 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 116 vlan 3105 gpon 0/1/6 ont 20 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 118 vlan 3105 gpon 0/1/6 ont 22 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 119 vlan 21 gpon 0/1/6 ont 23 gemport 21 multi-service user-vlan 21 tag-transform translate
 service-port 121 vlan 3964 gpon 0/1/6 ont 21 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 122 vlan 3964 gpon 0/1/6 ont 25 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 123 vlan 3105 gpon 0/1/6 ont 13 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 124 vlan 3107 gpon 0/1/12 ont 19 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 125 vlan 3105 gpon 0/1/6 ont 26 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 126 vlan 3105 gpon 0/1/6 ont 18 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 127 vlan 3105 gpon 0/1/6 ont 27 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 128 vlan 3105 gpon 0/1/6 ont 28 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 129 vlan 3105 gpon 0/1/6 ont 29 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 130 vlan 3105 gpon 0/1/6 ont 30 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 131 vlan 3105 gpon 0/1/6 ont 31 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 132 vlan 3964 gpon 0/1/6 ont 32 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 133 vlan 3107 gpon 0/1/12 ont 25 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 134 vlan 3105 gpon 0/1/6 ont 33 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 135 vlan 3107 gpon 0/1/12 ont 30 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 137 vlan 3105 gpon 0/1/12 ont 5 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 138 vlan 3105 gpon 0/1/2 ont 3 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 139 vlan 3107 gpon 0/1/12 ont 44 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 141 vlan 3105 gpon 0/1/6 ont 14 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 142 vlan 133 gpon 0/1/6 ont 35 gemport 133 multi-service user-vlan 133 tag-transform translate
 service-port 143 vlan 3105 gpon 0/1/6 ont 9 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 144 vlan 133 gpon 0/1/6 ont 34 gemport 133 multi-service user-vlan 133 tag-transform translate
 service-port 145 vlan 133 gpon 0/1/6 ont 36 gemport 133 multi-service user-vlan 133 tag-transform translate
 service-port 146 vlan 133 gpon 0/1/6 ont 37 gemport 133 multi-service user-vlan 133 tag-transform translate
 service-port 147 vlan 133 gpon 0/1/6 ont 38 gemport 133 multi-service user-vlan 133 tag-transform translate
 service-port 148 vlan 3105 gpon 0/1/12 ont 45 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 150 vlan 3107 gpon 0/1/14 ont 13 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 151 vlan 3107 gpon 0/1/6 ont 39 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 152 vlan 133 gpon 0/1/6 ont 40 gemport 133 multi-service user-vlan 133 tag-transform translate
 service-port 153 vlan 3107 gpon 0/1/6 ont 41 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 154 vlan 3107 gpon 0/1/12 ont 49 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 155 vlan 131 gpon 0/1/6 ont 24 gemport 131 multi-service user-vlan 131 tag-transform translate
 service-port 156 vlan 131 gpon 0/1/2 ont 4 gemport 131 multi-service user-vlan 131 tag-transform translate
 service-port 157 vlan 3107 gpon 0/1/12 ont 38 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 158 vlan 3107 gpon 0/1/14 ont 2 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 160 vlan 3107 gpon 0/1/14 ont 18 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 161 vlan 133 gpon 0/1/12 ont 58 gemport 133 multi-service user-vlan 133 tag-transform translate
 service-port 162 vlan 3107 gpon 0/1/6 ont 44 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 163 vlan 3107 gpon 0/1/6 ont 45 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 164 vlan 3107 gpon 0/1/6 ont 46 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 165 vlan 3107 gpon 0/1/6 ont 47 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 166 vlan 3107 gpon 0/1/6 ont 48 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 167 vlan 3107 gpon 0/1/14 ont 19 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 169 vlan 3107 gpon 0/1/14 ont 21 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 170 vlan 3107 gpon 0/1/14 ont 22 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 171 vlan 3105 gpon 0/1/12 ont 6 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 172 vlan 3107 gpon 0/1/14 ont 23 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 173 vlan 131 gpon 0/1/14 ont 24 gemport 131 multi-service user-vlan 131 tag-transform translate
 service-port 174 vlan 3107 gpon 0/1/14 ont 25 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 176 vlan 3107 gpon 0/1/6 ont 50 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 177 vlan 3107 gpon 0/1/14 ont 26 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 178 vlan 3107 gpon 0/1/6 ont 51 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 179 vlan 3107 gpon 0/1/14 ont 27 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 180 vlan 3107 gpon 0/1/14 ont 28 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 181 vlan 3107 gpon 0/1/6 ont 52 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 182 vlan 3107 gpon 0/1/6 ont 53 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 183 vlan 3107 gpon 0/1/6 ont 54 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 184 vlan 3107 gpon 0/1/6 ont 55 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 185 vlan 3107 gpon 0/1/6 ont 56 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 251 vlan 133 gpon 0/1/12 ont 59 gemport 133 multi-service user-vlan 133 tag-transform translate
 service-port 252 vlan 3107 gpon 0/1/6 ont 49 gemport 107 multi-service user-vlan 3107 tag-transform translate
 monitor uplink-port non-unicast port 0/3/0
 monitor uplink-port non-unicast port 0/3/1
 monitor uplink-port non-unicast port 0/3/2
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
 monitor uplink-port pppoe port 0/4/0
 monitor uplink-port pppoe port 0/4/1
 monitor uplink-port pppoe port 0/4/2
 monitor uplink-port pppoe port 0/4/3
 nac bind pki-domain default
#
[lacp-config]
  <lacp-config>
 link-aggregation lacp-key 0/3/2 1
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
 snmp-agent local-engineid 800007DB036C3491244627
 snmp-agent community read cipher "%$%#cV(!!!!!!!!!!!!r-S*Wi7}:<GN$14DSU]DbQT.8&mvJ'eNAK;-,q3~H!"LGCAA|:|*JH(WGSG5g}y#;4Ygv+%$%#"
#
[ip-tunnel-profile]
  <ip-tunnel-profile>
 ip tunnel priority-profile gre index 0 name "default-profile-0" inbound dscp-outer dscp-inner
#
 ip tunnel priority-profile vxlan index 0 name "default-profile-0" inbound dscp-outer cos-inner
#
#
set neid 0xD5B4A6
#
[aaa]
  <aaa>
aaa
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
  <Vlanif130>
interface Vlanif130
 ip address 10.244.13.254 255.255.255.252
#
  <MEth0>
interface MEth0
 ip address 10.244.13.250 255.255.255.252
#
  <NULL0>
interface NULL0
#
undo dcn
#
[route-static]
  <route-static>
ip route-static 0.0.0.0 0.0.0.0 10.244.13.253
#
[post-system]
  <post-system>
 ssh user "radiusnet" authentication-type password
 ssh user "root" authentication-type password
 ssh user "suporte" authentication-type password
 ssh server cipher aes256_gcm aes128_gcm aes256_ctr aes192_ctr aes128_ctr chacha20_poly1305
 ssh server hmac sha2_512 sha2_256 sha1
 ssh server key-exchange dh_group_exchange_sha256 curve25519_sha256
 ssh server dh-exchange min-len 2048
 ssh server publickey rsa x509v3-ssh-rsa rsa_sha2_256 rsa_sha2_512 x509v3-rsa2048-sha256 ed25519
 ntp-service server disable
 ntp-service ipv6 server disable
 ntp-service server source-interface all disable
 ntp-service ipv6 server source-interface all disable
 ntp-service unicast-server 200.160.0.8
 ntp-service unicast-server 200.189.40.8
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
#
return

```
