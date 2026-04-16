```yaml
#
timezone GMT- 03:00
#
[pre-config]
  <pre-config>
 board add 0/0 H901PISC
 board add 0/1 H901GPSF
 board add 0/5 H901PISC
#
[sysmode]
  <sysmode>
 switch vdsl mode to tr129
 xpon mode switch-to profile-mode
 sysmode end
#
[global-config]
  <global-config>
 sysname POP20_OLT1_S_JOAO
 terminal user-profile name suporte 0 0 00:00:00 00:00:00
 terminal user name buildrun_new_password root *j$3b$%DYnL0&7{Kw:81~Vzn],$_m[D#h^kb+S#Xb,UFbq2tLCe5=oNISvo&!6K@:g4$* 7 0000:00:00:00:00:00 2000:01:02:08:37:58 root 1 first-login-info 0 self-changed-password 1 "-----"
 terminal user name buildrun_new_password radiusnet *~uc$3b$y|8iMCR>^"L-083UO+_:$bNAFE`s\IF,tYU2JK&gG._g:D=O;m5T'z@$OJD{B$* 0 2000:01:03:09:39:53 2000:01:03:09:40:26 root 2
first-login-info 0 self-changed-password 1 "-----"
 terminal user name buildrun_new_password suporte *~ub$3b$Q[;^76Fg0Eyc:jLytPp8$kPD"4Xh|_+XG/1)KL`rQYu/j2o2"BBvV}]*u*MxG$* 0 2025:07:28:09:27:39 2025:07:28:09:28:19 suporte 3
first-login-info 0 self-changed-password 1 "-----"
 terminal user name buildrun_new_password rafael *c$3b$*vTVFg_;{0<rk6&MbkkY$P&v$4)N~@=>0b'Uk7((#8r_--<VJ9W6d>3$ZiNA6$* 0 2025:11:03:09:51:34 2025:11:03:09:51:34 root 4
first-login-info 1 self-changed-password 0 "-----"
 system modify logon password enable all
 system user password security mode enhance
 system user password security-length 12
 terminal user name history_password root *j$3b$QZ)ENC'Zi;lvR~>F&H|M$aCVw7;jLL~Fsv'~sNh;@GHw}M{qJD~31r+M0gXo)$*
 terminal user name history_password radiusnet *~uc$3b$$dLq*%OZd")E+UALQs71$NIRs!%f<k)48PV3,*BR5]@0gK<Z[a4YCHcS*j0_8$*
 terminal user name history_password suporte *~ub$3b$>1}{YF`U0MK;`u<FrVl.$2b[yPO\}u+`mKy/L{DMKORc4G~qQtBUy6BN;kZXH$*
 ssh client key-exchange sftp dh_group_exchange_sha256 curve25519_sha256
 ssh client dh-exchange sftp min-len 2048
 xpon ont optical-ddm quick-query disable
 dba-profile add profile-id 10 profile-name "dba-profile_10" type4 max 1024000
 dba-profile add profile-id 11 profile-name "dba-profile_11" type4 max 102400
 ont-srvprofile gpon profile-id 1 profile-name "SRVPROFILE_ROUTER"
  ont-port pots 1 eth 2
  port vlan eth 1 transparent
  port vlan eth 2 transparent
  port vlan iphost translation 201 user-vlan 201
  commit
 ont-srvprofile gpon profile-id 201 profile-name "SRVPROFILE_BRIDGE_201"
  ont-port eth 1
  port vlan eth 1 translation 201 user-vlan 201
  commit
 ont-srvprofile gpon profile-id 203 profile-name "SRVPROFILE_BRIDGE_203"
  ont-port eth 2
  port vlan eth 1 translation 203 user-vlan 203
  commit
 ont-srvprofile gpon profile-id 3105 profile-name "SRVPROFILE_BRIDGE_3105"
  ont-port eth 1
  port vlan eth 1 translation 3105 user-vlan 3105
  commit
 ont-srvprofile gpon profile-id 3106 profile-name "SRVPROFILE_BRIDGE_3106"
  ont-port eth 1
  port vlan eth 1 translation 3106 user-vlan 3106
  commit
 ont-srvprofile gpon profile-id 3107 profile-name "SRVPROFILE_BRIDGE_3107"
  ont-port eth 2
  port vlan eth 1 translation 3107 user-vlan 3107
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
 ont-lineprofile gpon profile-id 201 profile-name "LINE_PROFILE_201"
  omcc encrypt on
  tcont 1 dba-profile-id 10
  gem add 201 eth tcont 1 encrypt on
  gem mapping 201 0 vlan 201
  commit
  quit
 ont-lineprofile gpon profile-id 203 profile-name "LINE_PROFILE_203"
  omcc encrypt on
  tcont 1 dba-profile-id 10
  gem add 203 eth tcont 1 encrypt on
  gem mapping 203 0 vlan 203
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
  tcont 1 dba-profile-id 11
  gem add 106 eth tcont 1 encrypt on
  gem mapping 106 0 vlan 3106
  commit
  quit
 ont-lineprofile gpon profile-id 3107 profile-name "LINE_PROFILE_3107"
  omcc encrypt on
  tcont 1 dba-profile-id 11
  gem add 107 eth tcont 1 encrypt on
  gem mapping 107 0 vlan 3107
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
 vlan 200 to 201 smart
 vlan 203 smart
 vlan 3105 to 3107 smart
 vlan 3256 smart
 vlan 3261 smart
 vlan 3341 smart
 vlan 3964 smart
 vlan desc 200 description "VLAN200_POP20_OLT1_GERENCIA"
 vlan desc 201 description "VLAN201_POP20_OLT1_PPPOE_SHOSSLE"
 vlan desc 203 description "VLAN203_POP20_OLT1_PPPOE_CYBER"
 vlan desc 3107 description "VLAN3107_CAMERAS_POA_MAIS_SEG"
 vlan desc 3256 description "VLAN_3256_TRANSP_TELIUM_DIVERSOS"
 vlan desc 3261 description "VLAN_3261_PROV_VALESAT"
 vlan desc 3341 description "VLAN_3341_TRANSP_L2_EQT"
 vlan desc 3964 description "VLAN_3964_TRANSP_L2_ALT"
 port vlan 200 to 201 0/3 0
 port vlan 200 to 201 0/3 1
 port vlan 200 to 201 0/3 2
 port vlan 200 to 201 0/3 3
 port vlan 203 0/3 0
 port vlan 203 0/3 1
 port vlan 203 0/3 2
 port vlan 203 0/3 3
 port vlan 3105 to 3107 0/3 0
 port vlan 3105 to 3107 0/3 1
 port vlan 3105 to 3107 0/3 2
 port vlan 3105 to 3107 0/3 3
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
 ont add 0 0 sn-auth "52434D471998C77A" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "RAISECOM_V"
 ont add 4 0 sn-auth "48575443D4A8A09E" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 4 1 sn-auth "485754431D06DD9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 4 2 sn-auth "4857544337768D9A" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 4 3 sn-auth "485754431D4AC69B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 4 4 sn-auth "48575443F28B059E" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 4 5 sn-auth "48575443A636CE9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 4 6 sn-auth "465354540000DAD5" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "139"
 ont add 4 7 sn-auth "465354540000E7F7" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 4 8 sn-auth "46535454B81CE436" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 4 9 sn-auth "48575443A475DF9E" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 4 10 sn-auth "46535454000072AE" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 4 11 sn-auth "46535454B81CE444" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 4 12 sn-auth "48575443168CCBA6" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 4 13 sn-auth "46535454B81CEED2" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 4 14 sn-auth "48575443F239B79E" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 4 15 sn-auth "48575443F2FB91AB" omci ont-lineprofile-id 201 ont-srvprofile-id 201 desc "17933_lucielemelo_7ef4"
 ont add 13 0 sn-auth "52434D47199899DD" omci ont-lineprofile-id 3341 ont-srvprofile-id 3341 desc "ONT_HUAWEI"
 ont add 13 1 sn-auth "52434D471998E8A0" omci ont-lineprofile-id 201 ont-srvprofile-id 201 desc "ONT_HUAWEI"
 ont add 13 2 sn-auth "52434D4719988608" omci ont-lineprofile-id 3256 ont-srvprofile-id 3256 desc "ONT_HUAWEI"
 ont add 13 3 sn-auth "485754431D2A4D9B" omci ont-lineprofile-id 203 ont-srvprofile-id 203 desc "ONT_HUAWEI"
 ont add 15 0 sn-auth "4653545400006E08" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
 ont add 15 1 sn-auth "485754431D940F9B" omci ont-lineprofile-id 201 ont-srvprofile-id 201 desc "4597_pop20_franca_162b"
 ont add 15 2 sn-auth "46535454B81D05BB" omci ont-lineprofile-id 201 ont-srvprofile-id 201 desc "4603_navegantes_p2_ea1d"
 ont port native-vlan 0 0 eth 1 vlan 3107 priority 0
 ont port native-vlan 4 0 eth 1 vlan 3107 priority 0
 ont port native-vlan 4 0 eth 2 vlan 3107 priority 0
 ont port native-vlan 4 1 eth 1 vlan 3107 priority 0
 ont port native-vlan 4 1 eth 2 vlan 3107 priority 0
 ont port native-vlan 4 2 eth 1 vlan 3107 priority 0
 ont port native-vlan 4 2 eth 2 vlan 3107 priority 0
 ont port native-vlan 4 3 eth 1 vlan 3107 priority 0
 ont port native-vlan 4 3 eth 2 vlan 3107 priority 0
 ont port native-vlan 4 4 eth 1 vlan 3107 priority 0
 ont port native-vlan 4 4 eth 2 vlan 3107 priority 0
 ont port native-vlan 4 5 eth 1 vlan 3107 priority 0
 ont port native-vlan 4 5 eth 2 vlan 3107 priority 0
 ont port native-vlan 4 6 eth 1 vlan 3105 priority 0
 ont port native-vlan 4 7 eth 1 vlan 3107 priority 0
 ont port native-vlan 4 7 eth 2 vlan 3107 priority 0
 ont port native-vlan 4 8 eth 1 vlan 3107 priority 0
 ont port native-vlan 4 8 eth 2 vlan 3107 priority 0
 ont port native-vlan 4 9 eth 1 vlan 3107 priority 0
 ont port native-vlan 4 9 eth 2 vlan 3107 priority 0
 ont port native-vlan 4 10 eth 1 vlan 3107 priority 0
 ont port native-vlan 4 10 eth 2 vlan 3107 priority 0
 ont port native-vlan 4 11 eth 1 vlan 3107 priority 0
 ont port native-vlan 4 11 eth 2 vlan 3107 priority 0
 ont port native-vlan 4 12 eth 1 vlan 3107 priority 0
 ont port native-vlan 4 12 eth 2 vlan 3107 priority 0
 ont port native-vlan 4 13 eth 1 vlan 3107 priority 0
 ont port native-vlan 4 13 eth 2 vlan 3107 priority 0
 ont port native-vlan 4 14 eth 1 vlan 3107 priority 0
 ont port native-vlan 4 14 eth 2 vlan 3107 priority 0
 ont port native-vlan 13 0 eth 1 vlan 3341 priority 0
 ont port native-vlan 13 0 eth 2 vlan 3341 priority 0
 ont port native-vlan 13 1 eth 1 vlan 201 priority 0
 ont port native-vlan 13 2 eth 1 vlan 3256 priority 0
 ont port native-vlan 13 3 eth 1 vlan 203 priority 0
 ont port native-vlan 15 0 eth 1 vlan 3107 priority 0
 ont port native-vlan 15 1 eth 1 vlan 201 priority 0
 ont port native-vlan 15 2 eth 1 vlan 201 priority 0
#
[platform-config]
  <platform-config>
 autosave type data
 autosave interval on
 autosave interval 1442
 autosave time on
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
 service-port 0 vlan 3107 gpon 0/1/15 ont 0 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 1 vlan 201 gpon 0/1/15 ont 1 gemport 201 multi-service user-vlan 201 tag-transform translate
 service-port 2 vlan 3341 gpon 0/1/13 ont 0 gemport 341 multi-service user-vlan 3341 tag-transform translate
 service-port 3 vlan 203 gpon 0/1/13 ont 3 gemport 203 multi-service user-vlan 203 tag-transform translate
 service-port 4 vlan 3256 gpon 0/1/13 ont 2 gemport 256 multi-service user-vlan 3256 tag-transform translate
 service-port 5 vlan 3107 gpon 0/1/0 ont 0 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 6 vlan 3107 gpon 0/1/4 ont 13 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 8 vlan 3107 gpon 0/1/4 ont 14 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 9 vlan 201 gpon 0/1/4 ont 15 gemport 201 multi-service user-vlan 201 tag-transform translate
 service-port 10 vlan 201 gpon 0/1/15 ont 2 gemport 201 multi-service user-vlan 201 tag-transform translate
 service-port 13 vlan 3107 gpon 0/1/4 ont 0 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 14 vlan 3107 gpon 0/1/4 ont 1 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 15 vlan 3107 gpon 0/1/4 ont 2 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 16 vlan 3107 gpon 0/1/4 ont 3 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 17 vlan 3107 gpon 0/1/4 ont 4 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 18 vlan 3107 gpon 0/1/4 ont 5 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 19 vlan 3105 gpon 0/1/4 ont 6 gemport 105 multi-service user-vlan 3105 tag-transform translate
 service-port 20 vlan 3107 gpon 0/1/4 ont 7 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 22 vlan 3107 gpon 0/1/4 ont 8 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 23 vlan 3107 gpon 0/1/4 ont 9 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 24 vlan 3107 gpon 0/1/4 ont 10 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 25 vlan 3107 gpon 0/1/4 ont 11 gemport 107 multi-service user-vlan 3107 tag-transform translate
 service-port 26 vlan 3107 gpon 0/1/4 ont 12 gemport 107 multi-service user-vlan 3107 tag-transform translate
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
 snmp-agent local-engineid 800007DB0398F08353126A
 snmp-agent community read cipher "%$%#cV(!!!!!!!!!!!!IE\6$(vApX+|d{/6a#;D5%$)OcB>1&7=XX@-~JgYZK)xM[Y%f+*4lu2-sM&B@_iiTj\2}8%$%#"
#
[ip-tunnel-profile]
  <ip-tunnel-profile>
 ip tunnel priority-profile gre index 0 name "default-profile-0" inbound dscp-outer dscp-inner
#
 ip tunnel priority-profile vxlan index 0 name "default-profile-0" inbound dscp-outer cos-inner
#
#
set neid 0x95B796
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
  <Vlanif200>
interface Vlanif200
 ip address 10.244.20.250 255.255.255.252
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
ip route-static 0.0.0.0 0.0.0.0 10.244.20.249
#
[post-system]
  <post-system>
 ssh user "radiusnet" authentication-type password
 ssh user "rafael" authentication-type password
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
