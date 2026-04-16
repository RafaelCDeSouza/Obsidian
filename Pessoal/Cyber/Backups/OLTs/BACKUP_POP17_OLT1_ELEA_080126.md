```yaml
POP17_OLT1_ELEA#display current-configuration
{ <cr>|include-default<K>|interface<K>|ont<K>|port<K>|section<K>|service-port<K>||<K> }:

  Command:
          display current-configuration
[Active: H901MPSA; Standby: H901MPSA]
[Patch Info: SPH306]
[MA5800V100R021: 6611]
#
timezone GMT- 03:00
#
[pre-config]
  <pre-config>
 board add 0/0 H901PISA
 board add 0/1 H901GPHF
#
[sysmode]
  <sysmode>
 switch vdsl mode to tr129
 xpon mode switch-to profile-mode
 sysmode end
#
[global-config]
  <global-config>
 sysname POP17_OLT1_ELEA
 terminal user-profile name suporte 0 0 00:00:00 00:00:00
 terminal user name buildrun_new_password root *j$3b$QZ)ENC'Zi;lvR~>F&H|M$aCVw7;jLL~Fsv'~sNh;@GHw}M{qJD~31r+M0gXo)$* 7 0000:00:00:00:00:00 0000:00:00:00:00:00 root 1 first-login-info 0 self-changed-password 1 "-----"
 terminal user name buildrun_new_password radiusnet *~uc$3b$l(vW3i7bgUnjV&M[Z[R($I6%KQ=eQO+)}ArO$^B0R(b)<7~_ry74+%n%NX3|:$* 0 2000:01:07:21:40:08 2000:01:07:21:42:27 root 2 first-login-info 0 self-changed-password 1 "20"
 terminal user name buildrun_new_password suporte *~ub$3b$iT6A&rFGz;D:afIkqJ'G$S+DfNEXY:8"\B+N|F+SNhYj$'qel$P}GNzS(vXU+$* 0 2025:07:28:09:25:41 2025:07:28:09:26:41 suporte 3 first-login-info 0 self-changed-password 1 "-----"
 system modify logon password disable
 system user password security mode enhance
 system user password security-length 12
 terminal user name history_password radiusnet *~uc$1b${\_WFnOIy8$(<T>A8#SW:'*cX0V3gq7YTBQMx.s~F{WC<P)G|JP$*
 terminal user name history_password suporte *~ub$3b$qs<&RA-Vv6S,B38`.ar4$MHLGH)E7w6o~g"1"ZA6G98e$40_\y#64x`I(|1w*$*
 ssh client key-exchange sftp dh_group14_sha1 dh_group_exchange_sha1 dh_group_exchange_sha256 curve25519_sha256
 xpon ont optical-ddm quick-query disable
 dba-profile add profile-id 10 profile-name "dba-profile_10" type4 max 1024000
 dba-profile add profile-id 11 profile-name "dba-profile_11" type4 max 102400
 ont-srvprofile gpon profile-id 1 profile-name "SRVPROFILE_ROUTER"
  ont-port pots 1 eth 2
  port vlan eth 1 transparent
  port vlan eth 2 transparent
  port vlan iphost translation 171 user-vlan 171
  commit
 ont-srvprofile gpon profile-id 21 profile-name "SRVPROFILE_BRIDGE_21"
  ont-port eth 1
  port vlan eth 1 translation 21 user-vlan 21
  commit
 ont-srvprofile gpon profile-id 171 profile-name "SRVPROFILE_BRIDGE_171"
  ont-port eth 1
  port vlan eth 1 translation 171 user-vlan 171
  commit
 ont-srvprofile gpon profile-id 173 profile-name "SRVPROFILE_BRIDGE_173"
  ont-port eth 1
  port vlan eth 1 translation 173 user-vlan 173
  commit
 ont-srvprofile gpon profile-id 3005 profile-name "SRVPROFILE_BRIDGE_V3005"
  ont-port eth 1
  port vlan eth 1 translation 3005 user-vlan 3005
  commit
 ont-srvprofile gpon profile-id 3103 profile-name "SRVPROFILE_BRIDGE_3103"
  ont-port eth 1
  port vlan eth 1 translation 3103 user-vlan 3103
  commit
 ont-srvprofile gpon profile-id 3105 profile-name "SRVPROFILE_BRIDGE_3105"
  ont-port eth 1
  port vlan eth 1 translation 3105 user-vlan 3105
  commit
 ont-srvprofile gpon profile-id 3107 profile-name "SRVPROFILE_BRIDGE_3107"
  ont-port eth 2
  port vlan eth 1 translation 3107 user-vlan 3107
  commit
 ont-srvprofile gpon profile-id 3108 profile-name "SRVPROFILE_BRIDGE_3108"
  ont-port eth 1
  port vlan eth 1 translation 3108 user-vlan 3108
  commit
 ont-srvprofile gpon profile-id 3256 profile-name "SRVPROFILE_BRIDGE_V3256"
  ont-port eth 1
  port vlan eth 1 translation 3256 user-vlan 3256
  commit
 ont-srvprofile gpon profile-id 3261 profile-name "SRVPROFILE_BRIDGE_V3261"
  ont-port eth 1
  port vlan eth 1 translation 3261 user-vlan 3261
  commit
 ont-srvprofile gpon profile-id 3341 profile-name "SRVPROFILE_BRIDGE_V3341"
  ont-port eth 2
  port q-in-q eth 1 enable
  commit
 ont-srvprofile gpon profile-id 3540 profile-name "SRVPROFILE_BRIDGE_3540"
  ont-port eth 1
  port vlan eth 1 translation 3540 user-vlan 3540
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
 ont-lineprofile gpon profile-id 21 profile-name "LINE_PROFILE_21"
  omcc encrypt on
  tcont 1 dba-profile-id 10
  gem add 21 eth tcont 1 encrypt on
  gem mapping 21 0 vlan 21
  commit
  quit
 ont-lineprofile gpon profile-id 171 profile-name "LINE_PROFILE_171"
  omcc encrypt on
  tcont 1 dba-profile-id 10
  gem add 171 eth tcont 1 encrypt on
  gem mapping 171 0 vlan 171
  commit
  quit
 ont-lineprofile gpon profile-id 173 profile-name "LINE_PROFILE_173"
  omcc encrypt on
  tcont 1 dba-profile-id 10
  gem add 173 eth tcont 1 encrypt on
  gem mapping 173 0 vlan 173
  commit
  quit
 ont-lineprofile gpon profile-id 3103 profile-name "LINE_PROFILE_3103"
  omcc encrypt on
  tcont 1 dba-profile-id 11
  gem add 103 eth tcont 1 encrypt on
  gem mapping 103 0 vlan 3103
  commit
  quit
 ont-lineprofile gpon profile-id 3105 profile-name "LINE_PROFILE_3105"
  omcc encrypt on
  tcont 1 dba-profile-id 11
  gem add 105 eth tcont 1 encrypt on
  gem mapping 105 0 vlan 3105
  commit
  quit
 ont-lineprofile gpon profile-id 3107 profile-name "LINE_PROFILE_3107"
  omcc encrypt on
  tcont 1 dba-profile-id 11
  gem add 107 eth tcont 1 encrypt on
  gem mapping 107 0 vlan 3107
  commit
  quit
 ont-lineprofile gpon profile-id 3108 profile-name "LINE_PROFILE_3108"
  omcc encrypt on
  tcont 1 dba-profile-id 11
  gem add 108 eth tcont 1 encrypt on
  gem mapping 108 0 vlan 3108
  commit
  quit
 ont-lineprofile gpon profile-id 3256 profile-name "LINE_PROFILE_V3256"
  omcc encrypt on
  tcont 1 dba-profile-id 10
  gem add 256 eth tcont 1 encrypt on
  gem mapping 256 0 vlan 3256
  commit
  quit
 ont-lineprofile gpon profile-id 3261 profile-name "LINE_PROFILE_V3261"
  omcc encrypt on
  tcont 1 dba-profile-id 10
  gem add 261 eth tcont 1 encrypt on
  gem mapping 261 0 vlan 3261
  commit
  quit
 ont-lineprofile gpon profile-id 3341 profile-name "LINE_PROFILE_V3341"
  omcc encrypt on
  tcont 1 dba-profile-id 10
  gem add 341 eth tcont 0 encrypt on
  gem mapping 341 0 vlan 3341
  commit
  quit
 ont-lineprofile gpon profile-id 3540 profile-name "LINE_PROFILE_3540"
  omcc encrypt on
  tcont 1 dba-profile-id 10
  gem add 540 eth tcont 1 encrypt on
  gem mapping 540 0 vlan 3540
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
 board add standby sub0 CPCA
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
 sysman service dhcp-relay enable
 sysman service dhcpv6-relay enable
#
[vlan-config]
  <vlan-config>
 vlan 21 smart
 vlan 170 to 171 smart
 vlan 173 smart
 vlan 3103 smart
 vlan 3105 smart
 vlan 3107 to 3108 smart
 vlan 3256 smart
 vlan 3261 smart
 vlan 3341 smart
 vlan 3540 smart
 vlan 3964 smart
 vlan desc 21 description "VLAN21_POP17_OLT1_PPPOE_SCHOSSL"
 vlan desc 170 description "VLAN170_POP17_OLT1_GERENCIA"
 vlan desc 171 description "VLAN171_POP17_OLT1_PPPOE_SCHOSSL"
 vlan desc 173 description "VLAN173_POP17_OLT1_PPPOE_CYBER"
 vlan desc 3103 description "VLAN3103_CAMERAS"
 vlan desc 3105 description "VLAN3105_CAMERAS_SSP"
 vlan desc 3107 description "VLAN3107_CAMERAS_POA_MAIS_SEG"
 vlan desc 3108 description "VLAN3108_CAMERAS_POA_MAIS_SEG"
 vlan desc 3256 description "VLAN_3256_TRANSP_TELIUM_DIVERSOS"
 vlan desc 3261 description "VLAN_3261_PROV_VALESAT"
 vlan desc 3341 description "VLAN_3341_TRANSP_L2_EQT"
 vlan desc 3540 description "VLAN_3540_MEDIANET"
 vlan desc 3964 description "VLAN_3964_TRANSP_L2_ALT"
 port vlan 21 0/3 0
 port vlan 21 0/3 1
 port vlan 21 0/3 2
 port vlan 21 0/3 3
 port vlan 170 to 171 0/3 0
 port vlan 170 to 171 0/3 1
 port vlan 170 to 171 0/3 2
 port vlan 170 to 171 0/3 3
 port vlan 173 0/3 0
 port vlan 173 0/3 1
 port vlan 173 0/3 2
 port vlan 173 0/3 3
 port vlan 3103 0/3 0
 port vlan 3103 0/3 1
 port vlan 3103 0/3 2
 port vlan 3103 0/3 3
 port vlan 3105 0/3 0
 port vlan 3105 0/3 1
 port vlan 3105 0/3 2
 port vlan 3105 0/3 3
 port vlan 3107 to 3108 0/3 0
 port vlan 3107 to 3108 0/3 1
 port vlan 3107 to 3108 0/3 2
 port vlan 3107 to 3108 0/3 3
 port vlan 3256 0/3 0
 port vlan 3256 0/3 1
 port vlan 3256 0/3 2
 port vlan 3256 0/3 3
 port vlan 3261 0/3 0
 port vlan 3261 0/3 1
 port vlan 3261 0/3 2
 port vlan 3261 0/3 3
 port vlan 3341 0/3 0
 port vlan 3341 0/3 1
 port vlan 3341 0/3 2
 port vlan 3540 0/3 0
 port vlan 3540 0/3 1
 port vlan 3540 0/3 2
 port vlan 3964 0/3 0
 port vlan 3964 0/3 1
 port vlan 3964 0/3 2
 port vlan 3964 0/3 3
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
 port 1 ont-auto-find enable
 port 2 ont-auto-find enable
 port 3 ont-auto-find enable
 port 4 ont-auto-find enable
 port 5 ont-auto-find enable
 port 6 ont-auto-find enable
 port 7 ont-auto-find enable
 port 8 ont-auto-find enable
 port 9 ont-auto-find enable
 port 10 ont-auto-find enable
 port 11 ont-auto-find enable
 port 12 ont-auto-find enable
 port 13 ont-auto-find enable
 port 14 ont-auto-find enable
 port 15 ont-auto-find enable
 ont add 0 0 sn-auth "485754431D6BF99B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 0 1 sn-auth "485754431D29599B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 0 2 sn-auth "485754431DE5369B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 0 3 sn-auth "485754431D9FF59B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 0 4 sn-auth "485754431D54129B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 0 5 sn-auth "485754431D5DE49B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 0 6 sn-auth "485754431DE8089B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 0 7 sn-auth "485754431D425A9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 0 8 sn-auth "485754431D9ED19B" omci ont-lineprofile-id 3341 ont-srvprofile-id 3341 desc "ONT_HUAWEI"
 ont add 0 10 sn-auth "485754434B93199C" omci ont-lineprofile-id 3540 ont-srvprofile-id 3540 desc "CLIENTE_MIDIANET"
 ont add 9 0 sn-auth "485754431D69839B" omci ont-lineprofile-id 3256 ont-srvprofile-id 3256 desc "ONT_HUAWEI"
 ont add 9 1 sn-auth "495442533272E734" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "473"
 ont add 9 2 sn-auth "485754431DDEFA9B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 9 3 sn-auth "495442533272DDCC" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "479"
 ont add 9 4 sn-auth "495442533271C789" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "491"
 ont add 9 5 sn-auth "495442533271C787" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "477"
 ont add 9 6 sn-auth "495442533272E722" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "493"
 ont add 9 7 sn-auth "495442533272E736" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "475"
 ont add 9 8 sn-auth "495442533272E73C" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "485"
 ont add 9 9 sn-auth "52434D47199880E7" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "483"
 ont add 9 10 sn-auth "485754431D0EB59B" omci ont-lineprofile-id 3256 ont-srvprofile-id 3256 desc "ONT_HUAWEI"
 ont add 9 11 sn-auth "485754431D0BDB9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 9 12 sn-auth "485754431DDD019B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 9 13 sn-auth "485754431D303D9B" omci ont-lineprofile-id 3261 ont-srvprofile-id 3261 desc "11"
 ont add 9 14 sn-auth "485754431D29EC9B" omci ont-lineprofile-id 173 ont-srvprofile-id 173 desc "ONT_HUAWEI"
 ont add 9 15 sn-auth "485754431DBE3B9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 9 16 sn-auth "485754431D62439B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 9 17 sn-auth "485754431DB99C9B" omci ont-lineprofile-id 3256 ont-srvprofile-id 3256 desc "ONT_HUAWEI"
 ont add 9 18 sn-auth "485754431D0E649B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 9 19 sn-auth "485754431DA8319B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 9 20 sn-auth "48575443A1C375B1" omci ont-lineprofile-id 173 ont-srvprofile-id 173 desc "ONT_HUAWEI"
 ont add 9 21 sn-auth "48575443AD77FD9A" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 9 22 sn-auth "485754431DFC139B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 9 23 sn-auth "485754431DFC2C9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 9 24 sn-auth "48575443B414D09E" omci ont-lineprofile-id 173 ont-srvprofile-id 173 desc "nick_eventos_oab"
 ont add 9 25 sn-auth "485754431D48DC9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 9 26 sn-auth "48575443AD79059A" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 9 27 sn-auth "485754431DBB119B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 10 0 sn-auth "4954425332576545" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "451"
 ont add 10 1 sn-auth "44443732E606E938" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "447"
 ont add 10 2 sn-auth "48575443AD90E39A" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 10 3 sn-auth "485754431D886A9B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 10 4 sn-auth "485754431DC4269B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 10 5 sn-auth "52434D4719987EBB" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "453"
 ont add 10 6 sn-auth "48575443F5E7B4AB" omci ont-lineprofile-id 171 ont-srvprofile-id 171 desc "16959_mercadospinelli_teste_a570"
 ont add 10 7 sn-auth "52434D471998817E" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "455"
 ont add 10 8 sn-auth "485754431D5DF29B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "457"
 ont add 10 9 sn-auth "52434D47199882D4" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "459"
 ont add 10 10 sn-auth "485754431DFC809B" omci ont-lineprofile-id 3256 ont-srvprofile-id 3256 desc "ONT_HUAWEI"
 ont add 10 11 sn-auth "485754434B8E5A9C" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 10 12 sn-auth "52434D4719988829" omci ont-lineprofile-id 3256 ont-srvprofile-id 3256 desc "ONT_HUAWEI"
 ont add 10 13 sn-auth "485754431D823E9B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 10 14 sn-auth "52434D473A602627" omci ont-lineprofile-id 21 ont-srvprofile-id 21 desc "6175_lairrosina_2p_47ba"
 ont add 10 15 sn-auth "495442533272E738" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "463"
 ont add 10 16 sn-auth "495442533272E73A" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "461"
 ont add 10 17 sn-auth "52434D4719988349" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "465"
 ont add 10 18 sn-auth "52434D471998827C" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "467"
 ont add 10 19 sn-auth "52434D47199880C1" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "469"
 ont add 10 20 sn-auth "485754431DEAF79B" omci ont-lineprofile-id 3256 ont-srvprofile-id 3256 desc "ONT_HUAWEI"
 ont add 10 21 sn-auth "46535454B81CEB0A" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 10 22 sn-auth "485754431D4D889B" omci ont-lineprofile-id 3256 ont-srvprofile-id 3256 desc "ONT_HUAWEI"
 ont add 10 23 sn-auth "485754431DBA399B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
 ont add 10 24 sn-auth "485754431D6C259B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "579"
 ont add 10 25 sn-auth "485754431DB1B79B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 10 26 sn-auth "485754431DEF459B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 10 27 sn-auth "485754431DA02D9B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "637"
 ont add 10 28 sn-auth "485754431DDC859B" omci ont-lineprofile-id 173 ont-srvprofile-id 173 desc "ONT_HUAWEI"
 ont add 10 29 sn-auth "485754431DC2D49B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 10 30 sn-auth "46535454B81CFF03" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont port native-vlan 0 0 eth 1 vlan 3107 priority 0
 ont port native-vlan 0 1 eth 1 vlan 3107 priority 0
 ont port native-vlan 0 2 eth 1 vlan 3964 priority 0
 ont port native-vlan 0 2 eth 2 vlan 3964 priority 0
 ont port native-vlan 0 3 eth 1 vlan 3964 priority 0
 ont port native-vlan 0 3 eth 2 vlan 3964 priority 0
 ont port native-vlan 0 4 eth 1 vlan 3964 priority 0
 ont port native-vlan 0 4 eth 2 vlan 3964 priority 0
 ont port native-vlan 0 5 eth 1 vlan 3107 priority 0
 ont port native-vlan 0 5 eth 2 vlan 3107 priority 0
 ont port native-vlan 0 6 eth 1 vlan 3964 priority 0
 ont port native-vlan 0 6 eth 2 vlan 3964 priority 0
 ont port native-vlan 0 7 eth 1 vlan 3107 priority 0
 ont port native-vlan 0 7 eth 2 vlan 3107 priority 0
 ont port native-vlan 0 8 eth 1 vlan 3341 priority 0
 ont port native-vlan 0 8 eth 2 vlan 3341 priority 0
 ont port native-vlan 0 10 eth 1 vlan 3540 priority 0
 ont port native-vlan 9 0 eth 1 vlan 3256 priority 0
 ont port native-vlan 9 1 eth 1 vlan 3105 priority 0
 ont port native-vlan 9 2 eth 1 vlan 3964 priority 0
 ont port native-vlan 9 2 eth 2 vlan 3964 priority 0
 ont port native-vlan 9 3 eth 1 vlan 3105 priority 0
 ont port native-vlan 9 4 eth 1 vlan 3105 priority 0
 ont port native-vlan 9 5 eth 1 vlan 3105 priority 0
 ont port native-vlan 9 6 eth 1 vlan 3105 priority 0
 ont port native-vlan 9 7 eth 1 vlan 3105 priority 0
 ont port native-vlan 9 8 eth 1 vlan 3105 priority 0
 ont port native-vlan 9 9 eth 1 vlan 3105 priority 0
 ont port native-vlan 9 10 eth 1 vlan 3256 priority 0
 ont port native-vlan 9 11 eth 1 vlan 3107 priority 0
 ont port native-vlan 9 11 eth 2 vlan 3107 priority 0
 ont port native-vlan 9 12 eth 1 vlan 3107 priority 0
 ont port native-vlan 9 12 eth 2 vlan 3107 priority 0
 ont port native-vlan 9 13 eth 1 vlan 3261 priority 0
 ont port native-vlan 9 14 eth 1 vlan 173 priority 0
 ont port native-vlan 9 15 eth 1 vlan 3107 priority 0
 ont port native-vlan 9 16 eth 1 vlan 3107 priority 0
 ont port native-vlan 9 16 eth 2 vlan 3107 priority 0
 ont port native-vlan 9 17 eth 1 vlan 3256 priority 0
 ont port native-vlan 9 18 eth 1 vlan 3964 priority 0
 ont port native-vlan 9 18 eth 2 vlan 3964 priority 0
 ont port native-vlan 9 19 eth 1 vlan 3964 priority 0
 ont port native-vlan 9 19 eth 2 vlan 3964 priority 0
 ont port native-vlan 9 20 eth 1 vlan 173 priority 0
 ont port native-vlan 9 21 eth 1 vlan 3107 priority 0
 ont port native-vlan 9 21 eth 2 vlan 3107 priority 0
 ont port native-vlan 9 22 eth 1 vlan 3107 priority 0
 ont port native-vlan 9 22 eth 2 vlan 3107 priority 0
 ont port native-vlan 9 23 eth 1 vlan 3107 priority 0
 ont port native-vlan 9 23 eth 2 vlan 3107 priority 0
 ont port native-vlan 9 24 eth 1 vlan 173 priority 0
 ont port native-vlan 9 25 eth 1 vlan 3107 priority 0
 ont port native-vlan 9 25 eth 2 vlan 3107 priority 0
 ont port native-vlan 9 26 eth 1 vlan 3107 priority 0
 ont port native-vlan 9 26 eth 2 vlan 3107 priority 0
 ont port native-vlan 9 27 eth 1 vlan 3107 priority 0
 ont port native-vlan 9 27 eth 2 vlan 3107 priority 0
 ont port native-vlan 10 0 eth 1 vlan 3105 priority 0
 ont port native-vlan 10 1 eth 1 vlan 3105 priority 0
 ont port native-vlan 10 2 eth 1 vlan 3107 priority 0
 ont port native-vlan 10 2 eth 2 vlan 3107 priority 0
 ont port native-vlan 10 3 eth 1 vlan 3964 priority 0
 ont port native-vlan 10 3 eth 2 vlan 3964 priority 0
 ont port native-vlan 10 4 eth 1 vlan 3107 priority 0
 ont port native-vlan 10 4 eth 2 vlan 3107 priority 0
 ont port native-vlan 10 5 eth 1 vlan 3105 priority 0
 ont port native-vlan 10 7 eth 1 vlan 3105 priority 0
 ont port native-vlan 10 8 eth 1 vlan 3105 priority 0
 ont port native-vlan 10 9 eth 1 vlan 3105 priority 0
 ont port native-vlan 10 10 eth 1 vlan 3256 priority 0
 ont port native-vlan 10 11 eth 1 vlan 3964 priority 0
 ont port native-vlan 10 11 eth 2 vlan 3964 priority 0
 ont port native-vlan 10 12 eth 1 vlan 3256 priority 0
 ont port native-vlan 10 13 eth 1 vlan 3964 priority 0
 ont port native-vlan 10 13 eth 2 vlan 3964 priority 0
 ont port native-vlan 10 14 eth 1 vlan 21 priority 0
 ont port native-vlan 10 15 eth 1 vlan 3105 priority 0
 ont port native-vlan 10 16 eth 1 vlan 3105 priority 0
 ont port native-vlan 10 17 eth 1 vlan 3105 priority 0
 ont port native-vlan 10 18 eth 1 vlan 3105 priority 0
 ont port native-vlan 10 19 eth 1 vlan 3105 priority 0
 ont port native-vlan 10 20 eth 1 vlan 3256 priority 0
 ont port native-vlan 10 21 eth 1 vlan 3107 priority 0
 ont port native-vlan 10 21 eth 2 vlan 3107 priority 0
 ont port native-vlan 10 22 eth 1 vlan 3256 priority 0
 ont port native-vlan 10 23 eth 1 vlan 3964 priority 0
 ont port native-vlan 10 23 eth 2 vlan 3964 priority 0
 ont port native-vlan 10 24 eth 1 vlan 3105 priority 0
 ont port native-vlan 10 25 eth 1 vlan 3107 priority 0
 ont port native-vlan 10 25 eth 2 vlan 3107 priority 0
 ont port native-vlan 10 26 eth 1 vlan 3107 priority 0
 ont port native-vlan 10 26 eth 2 vlan 3107 priority 0
 ont port native-vlan 10 27 eth 1 vlan 3105 priority 0
 ont port native-vlan 10 28 eth 1 vlan 173 priority 0
 ont port native-vlan 10 29 eth 1 vlan 3107 priority 0
 ont port native-vlan 10 29 eth 2 vlan 3107 priority 0
 ont port native-vlan 10 30 eth 1 vlan 3107 priority 0
 ont port native-vlan 10 30 eth 2 vlan 3107 priority 0
#
[platform-config]
  <platform-config>
 autosave interval on
 autosave time off
 autosave interval 1442
 autosave time 00:00:00
 autosave interval configuration 480
#
[emu-config]
  <emu-config>
 emu add 0 fan 0 1  "H901FMSA"
#
[bbs-config]
  <bbs-config>
 service-port 0 vlan 3107 gpon 0/1/0 ont 0 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 1 vlan 3540 gpon 0/1/0 ont 10 gemport 540 multi-service user-vlan 3540 tag-transform translate
 service-port 2 vlan 3107 gpon 0/1/0 ont 1 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 3 vlan 3964 gpon 0/1/0 ont 2 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 4 vlan 3964 gpon 0/1/0 ont 3 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 5 vlan 3964 gpon 0/1/0 ont 4 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 6 vlan 3107 gpon 0/1/9 ont 25 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 7 vlan 3105 gpon 0/1/10 ont 1 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 8 vlan 3107 gpon 0/1/9 ont 26 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 9 vlan 3107 gpon 0/1/9 ont 27 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 10 vlan 3105 gpon 0/1/10 ont 5 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 12 vlan 3105 gpon 0/1/10 ont 7 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 14 vlan 3105 gpon 0/1/10 ont 9 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 21 vlan 3256 gpon 0/1/10 ont 12 gemport 256 multi-service user-vlan 3256 tag-transform translate
 service-port 25 vlan 21 gpon 0/1/10 ont 14 gemport 21 multi-service user-vlan 21 tag-transform translate
 service-port 26 vlan 3105 gpon 0/1/10 ont 15 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 27 vlan 3105 gpon 0/1/10 ont 16 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 28 vlan 3105 gpon 0/1/10 ont 17 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 29 vlan 3105 gpon 0/1/10 ont 18 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 30 vlan 3105 gpon 0/1/10 ont 19 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 31 vlan 3964 gpon 0/1/10 ont 3 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 32 vlan 3964 gpon 0/1/10 ont 13 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 33 vlan 3256 gpon 0/1/10 ont 20 gemport 256 multi-service user-vlan 3256 tag-transform translate
 service-port 36 vlan 3964 gpon 0/1/9 ont 2 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 37 vlan 3105 gpon 0/1/9 ont 1 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 39 vlan 3105 gpon 0/1/9 ont 3 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 40 vlan 3105 gpon 0/1/9 ont 4 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 41 vlan 3105 gpon 0/1/9 ont 5 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 42 vlan 3105 gpon 0/1/9 ont 6 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 43 vlan 3105 gpon 0/1/9 ont 7 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 44 vlan 3105 gpon 0/1/9 ont 8 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 45 vlan 3105 gpon 0/1/9 ont 9 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 46 vlan 3256 gpon 0/1/9 ont 0 gemport 256 multi-service user-vlan 3256 tag-transform translate
 service-port 48 vlan 3256 gpon 0/1/9 ont 10 gemport 256 multi-service user-vlan 3256 tag-transform translate
 service-port 49 vlan 3105 gpon 0/1/10 ont 8 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 52 vlan 3256 gpon 0/1/10 ont 10 gemport 256 multi-service user-vlan 3256 tag-transform translate
 service-port 54 vlan 3261 gpon 0/1/9 ont 13 gemport 261 multi-service user-vlan 3261 tag-transform translate
 service-port 56 vlan 3256 gpon 0/1/10 ont 22 gemport 256 multi-service user-vlan 3256 tag-transform translate
 service-port 57 vlan 173 gpon 0/1/9 ont 14 gemport 173 multi-service user-vlan 173 tag-transform translate
 service-port 58 vlan 3107 gpon 0/1/9 ont 15 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 59 vlan 3964 gpon 0/1/10 ont 23 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 63 vlan 3964 gpon 0/1/9 ont 18 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 64 vlan 3256 gpon 0/1/9 ont 17 gemport 256 multi-service user-vlan 3256 tag-transform translate
 service-port 65 vlan 3964 gpon 0/1/9 ont 19 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 66 vlan 3107 gpon 0/1/9 ont 11 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 70 vlan 3107 gpon 0/1/10 ont 25 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 71 vlan 3107 gpon 0/1/0 ont 5 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 72 vlan 3964 gpon 0/1/0 ont 6 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 73 vlan 3107 gpon 0/1/0 ont 7 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 75 vlan 3105 gpon 0/1/10 ont 24 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 76 vlan 3107 gpon 0/1/10 ont 26 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 77 vlan 3105 gpon 0/1/10 ont 27 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 79 vlan 3341 gpon 0/1/0 ont 8 gemport 341 multi-service user-vlan 3341 tag-transform translate
 service-port 81 vlan 173 gpon 0/1/10 ont 28 gemport 173 multi-service user-vlan 173 tag-transform translate
 service-port 83 vlan 173 gpon 0/1/9 ont 20 gemport 173 multi-service user-vlan 173 tag-transform translate
 service-port 85 vlan 3105 gpon 0/1/10 ont 0 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 86 vlan 3107 gpon 0/1/10 ont 29 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 88 vlan 3107 gpon 0/1/9 ont 22 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 89 vlan 3107 gpon 0/1/9 ont 23 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 94 vlan 3107 gpon 0/1/9 ont 12 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 97 vlan 171 gpon 0/1/10 ont 6 gemport 171 multi-service user-vlan 171 tag-transform translate
 service-port 99 vlan 3107 gpon 0/1/9 ont 21 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 100 vlan 3964 gpon 0/1/10 ont 11 gemport 964 multi-service user-vlan 3964 tag-transform translate
 service-port 101 vlan 173 gpon 0/1/9 ont 24 gemport 173 multi-service user-vlan 173 tag-transform translate
 service-port 102 vlan 3107 gpon 0/1/10 ont 2 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 103 vlan 3107 gpon 0/1/10 ont 21 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 104 vlan 3107 gpon 0/1/10 ont 30 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 106 vlan 3107 gpon 0/1/9 ont 16 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 107 vlan 3107 gpon 0/1/10 ont 4 gemport 107 multi-service user-vlan 3107 tag-transform translate
 overload-aware mac-address upper-threshold 50 lower-threshold 45
 overload-aware mac-address disable
 overload-aware ip route hardware disable
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
#
[security-config]
  <security-config>
 security anti-illegal-hoplimit-nd disable
#
[config]
  <config>
 security anti-ipattack disable
 security anti-icmpattack disable
 security anti-ipv6attack disable
 security anti-icmpv6attack disable
#
[ip-tunnel-profile]
  <ip-tunnel-profile>
 ip tunnel priority-profile gre index 0 name "default-profile-0" inbound dscp-outer dscp-inner
#
set neid 0x869745
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
  <Vlanif170>
interface Vlanif170
 ip address 10.244.17.254 255.255.255.252
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
ip route-static 0.0.0.0 0.0.0.0 10.244.17.253
#
[snmp]
  <snmp>
snmp-agent local-engineid 800007DB03C8A776869746
snmp-agent community read cipher "%+%##!!!!!!!!!"!!!!"!!!!(!!!!7LTnVOK_g:Db*h7:55199K,w>[7^9;Ll;2K3]G!I2jp5!!!!!!1!!!!))n^QE@hw8*cl/T*5G6+%+%#"
#
[post-system]
  <post-system>
 ssh user "radiusnet" authentication-type password
 ssh user "root" authentication-type password
 ssh user "suporte" authentication-type password
 ssh server cipher aes256_gcm aes128_gcm aes256_ctr aes192_ctr aes128_ctr
 ssh server hmac sha2_512 sha2_256 sha1
 ssh server key-exchange dh_group_exchange_sha256 dh_group_exchange_sha1 dh_group14_sha1 ecdh_sha2_nistp256 ecdh_sha2_nistp384 ecdh_sha2_nistp521 sm2_kep
 ssh server dh-exchange min-len 2048
 ssh server publickey rsa x509v3-ssh-rsa rsa_sha2_256 rsa_sha2_512 x509v3-rsa2048-sha256 ed25519
 ntp-service server disable
 ntp-service ipv6 server disable
 ntp-service server source-interface all disable
 ntp-service ipv6 server source-interface all disable
 ntp-service unicast-server 200.160.0.8
 ntp-service unicast-server 200.189.40.8
 ssh client publickey rsa rsa_sha2_256 rsa_sha2_512 ed25519
 ssh client cipher aes256_gcm aes128_gcm aes256_ctr aes192_ctr aes128_ctr
 ssh client hmac sha2_512 sha2_256 sha1
 ssh client key-exchange dh_group_exchange_sha256 dh_group_exchange_sha1 dh_group14_sha1 ecdh_sha2_nistp256 ecdh_sha2_nistp384 ecdh_sha2_nistp521 sm2_kep
#
[source-interface]
  <source-interface>
 sysman server source ssh any-interface
 sysman server source ssh ipv6 ::
 sysman server source snmp any-interface
 sysman server source snmp ipv6 ::
 sysman server source netconf any-interface
 sysman server source netconf ipv6 ::
 sysman server source trace any-interface
 sysman server source telnet any-interface
 sysman server source telnet ipv6 ::
 sysman server source ipdr any-interface
#
return
```
