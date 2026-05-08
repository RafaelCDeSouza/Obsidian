```yaml
!Software Version V200R023C00SPC500
#
sysname SW1POP02_TELIUM
#
router id 10.244.188.2
#
vcmp role client
#
vlan batch 11 to 13 17 to 18 20 to 21 23 30 to 31 39 to 41 50 to 51 53 60 to 61 70 to 71
vlan batch 80 to 81 90 to 91 100 to 101 110 to 111 113 119 to 121 130 to 131 133 141 150 to 152
vlan batch 160 to 161 169 to 171 173 181 190 to 191 193 to 194 203 258 271 273
vlan batch 281 283 610 1000 1118 1142 1157 1163 1171 1213
vlan batch 1215 1217 1220 1365 1395 2052 2102 2210 2692 3001
vlan batch 3005 3105 to 3109 3121 3148 3150 3201 3209 3214 3220 3225
vlan batch 3243 3249 to 3256 3258 3260 to 3263 3266 to 3267 3341 3511 3520 3523 3540
vlan batch 3542 3571 3573 3602 3785 to 3786 3801 3904 3907 3964 4000
vlan batch 4012 4094
#
authentication-profile name default_authen_profile
 authentication ipv6-control enable
 undo authentication ip-address in-accounting-start
authentication-profile name dot1x_authen_profile
 authentication ipv6-control enable
 undo authentication ip-address in-accounting-start
authentication-profile name dot1xmac_authen_profile
 authentication ipv6-control enable
 undo authentication ip-address in-accounting-start
authentication-profile name mac_authen_profile
 authentication ipv6-control enable
 undo authentication ip-address in-accounting-start
authentication-profile name multi_authen_profile
 authentication ipv6-control enable
 undo authentication ip-address in-accounting-start
authentication-profile name portal_authen_profile
 authentication ipv6-control enable
 undo authentication ip-address in-accounting-start
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
portal https-redirect tls1.1 enable
#
portal pass dns enable
#
undo pki key enhance enable
#
capwap unknown-unicast cir 0
#
diffserv domain default
#
radius-server template default
#
bfd
#
mpls lsr-id 10.244.188.2
mpls
 mpls te
 mpls rsvp-te
 mpls te cspf
#
mpls l2vpn
#
vsi VSI_3201_CY_POP04_NOC2_IX_RS static
 pwsignal ldp
  vsi-id 3201
  peer 10.244.188.4
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3255_CY_NOC0_PROV_LM_VMARES static
 pwsignal ldp
  vsi-id 3255
  peer 10.244.189.28
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_1000_SHO_POP02-20_BGP1_BGP2 static
 pwsignal ldp
  vsi-id 1000
  peer 10.244.188.20
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3105_POP00_POP02_TR_CAM_SSP static
 pwsignal ldp
  vsi-id 3105
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_110_POP00_02_POP11_VI_MGNT static
 pwsignal ldp
  vsi-id 110
  peer 10.244.188.11
  peer 10.244.189.11
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3106_POP00_POP02_TR_CAM_SSP static
 pwsignal ldp
  vsi-id 3106
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_21_CY_POP0_POP2_POA_OLT1 static
 pwsignal ldp
  vsi-id 21
  peer 10.244.189.0
  peer 10.244.188.17
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_12_CY_POP0-1_POP1_SAP_OLT1 static
 pwsignal ldp
  vsi-id 12
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_101_CY_NOC0-2_POP10_PQ_OLT1 static
 pwsignal ldp
  vsi-id 101
  peer 10.244.189.10
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_100_CY_NOC0-2_POP10_PQ_MGNT static
 pwsignal ldp
  vsi-id 100
  peer 10.244.189.10
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_1163_CY_POP04_NOC2_RNV_IP1 static
 pwsignal ldp
  vsi-id 1163
  peer 10.244.188.4
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_160_CY_NOC0-2_POP16_CA_MGNT static
 pwsignal ldp
  vsi-id 160
  peer 10.244.189.3
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_41_SC_POP0-2_POP19_HIP_OLT1 static
 pwsignal ldp
  vsi-id 41
  peer 10.244.188.19
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_1171_CY_POP04_NOC2_RNV_CONT static
 pwsignal ldp
  vsi-id 1171
  peer 10.244.188.4
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3263_POP0-2_POP63_VILLELA static
 pwsignal ldp
  vsi-id 3263
  peer 10.244.188.19
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3251_POP02_PROV_ARROBANET static
 pwsignal ldp
  vsi-id 3251
  peer 10.244.188.51
 mtu 9000
 encapsulation ethernet
#
vsi VSI_11_CY_POP00_POP02_SAP_OLT1 static
 pwsignal ldp
  vsi-id 11
  peer 10.244.189.0
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3253_SC_BGP2_PROV_LM_CIVIL static
 pwsignal ldp
  vsi-id 3253
  peer 10.244.188.27
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3254_CY_NOC0_PROV_LM_V_RICA static
 pwsignal ldp
  vsi-id 3254
  peer 10.244.188.28
  peer 10.244.189.28
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_31_CY_NOC0_POP03_M_FLO_OLT1 static
 pwsignal ldp
  vsi-id 31
  peer 10.244.189.3
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_161_CY_NOC0-2_POP16_CA_OLT1 static
 pwsignal ldp
  vsi-id 161
  peer 10.244.189.3
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_71_CY_NOC0-2_POP07_S_T_OLT1 static
 pwsignal ldp
  vsi-id 71
  peer 10.244.188.7
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_61_CY_NOC0-2_POP06_B_V_OLT1 static
 pwsignal ldp
  vsi-id 61
  peer 10.244.188.7
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_91_SC_POP2_POP10-9_ITA_OLT1 static
 pwsignal ldp
  vsi-id 91
  peer 10.244.189.10
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_121_CY_POP0-2_POP12_BE_OLT1 static
 pwsignal ldp
  vsi-id 121
  peer 10.244.189.12
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3001_POP02_POP15_NEUGEBAUER static
 pwsignal ldp
  vsi-id 3001
  peer 10.244.188.23
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3256_NOC0_NOC2_TR_CL_TELIUM static
 pwsignal ldp
  vsi-id 3256
  peer 10.244.188.125
  peer 10.244.188.8
  peer 10.244.188.59
  peer 10.244.189.3
  peer 10.244.189.0
  peer 10.244.189.5
  peer 10.244.188.17
  peer 10.244.189.11
  peer 10.244.188.22
  peer 10.244.188.23
 mtu 9000
 encapsulation ethernet
#
vsi VSI_150_POP00-02_POP15_EXP_MGNT static
 pwsignal ldp
  vsi-id 150
  peer 10.244.188.23
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI3511_POP12_TR_FENIX_CYBER_RN static
 pwsignal ldp
  vsi-id 3511
  peer 10.244.189.12
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3261_POP00-02_PROV_VALESAT static
 pwsignal ldp
  vsi-id 3261
  peer 10.244.188.17
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3214_BGP2_POA_POP14_LOMBA static
 pwsignal ldp
  vsi-id 3214
  peer 10.244.188.14
 mtu 9000
 encapsulation ethernet
#
vsi VSI_111_POP00_02_POP11_VI_OLT1 static
 pwsignal ldp
  vsi-id 111
  peer 10.244.188.11
  peer 10.244.189.11
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_113_POP00_02_POP11_VI_OLT1 static
 pwsignal ldp
  vsi-id 113
  peer 10.244.188.11
  peer 10.244.189.11
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3571_POP0-2_RNEUTRA_LP_SAND static
 pwsignal ldp
  vsi-id 3571
  peer 10.244.188.20
 mtu 9000
 encapsulation ethernet
#
vsi VSI_17_CY_POP00-02_SRV_IPS_PRIV static
 pwsignal ldp
  vsi-id 17
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_131_CY_POP0-2_POP13_HA_OLT1 static
 pwsignal ldp
  vsi-id 131
  peer 10.244.188.13
  peer 10.244.189.13
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3243_SH_POP00_PROV_AS52917 static
 pwsignal ldp
  vsi-id 3243
  peer 10.244.188.43
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3108_POP00_POP02_TR_POA_SEG static
 pwsignal ldp
  vsi-id 3108
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_23_POP02_POP57_VLAN23 static
 pwsignal ldp
  vsi-id 23
  peer 10.244.188.57
  peer 10.244.189.0
  peer 10.244.188.49
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3250_CY_NOC2_PROV_VPMMAIOLI static
 pwsignal ldp
  vsi-id 3250
  peer 10.244.188.50
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_81_CY_NOC0-2_POP08_FRE_OLT1 static
 pwsignal ldp
  vsi-id 81
  peer 10.244.188.8
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_80_CY_NOC0-2_POP08_FRE_MGNT static
 pwsignal ldp
  vsi-id 80
  peer 10.244.188.8
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_70_CY_NOC0_POP07_S_TEC_MGNT static
 pwsignal ldp
  vsi-id 70
  peer 10.244.188.7
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_60_CY_NOC0_POP06_B_VIS_MGNT static
 pwsignal ldp
  vsi-id 60
  peer 10.244.188.7
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_50_POP0-2_POP05_M_RIN_MGNT static
 pwsignal ldp
  vsi-id 50
  peer 10.244.188.5
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_169_CY_NOC0_POP16_CAST_RAD static
 pwsignal ldp
  vsi-id 169
  peer 10.244.189.3
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_90_SC_POP0_POP09_ITACO_MGNT static
 pwsignal ldp
  vsi-id 90
  peer 10.244.189.10
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_120_CY_POP0-2_POP12_BE_MGNT static
 pwsignal ldp
  vsi-id 120
  peer 10.244.189.12
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3252_POP00-02_PROV_BLUSTELE static
 pwsignal ldp
  vsi-id 3252
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI170_CY_POP0-2_POP17_ELE_MGNT static
 pwsignal ldp
  vsi-id 170
  peer 10.244.188.17
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3786_IX-SP_CYBERWEB_BGP1_V6 static
 pwsignal ldp
  vsi-id 3786
  peer 10.244.188.1
  traffic-statistics enable
 mtu 8000
 encapsulation ethernet
#
vsi VSI_4000_BGP1_CYBER_BGP2_SCHOSS static
 pwsignal ldp
  vsi-id 4000
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3785_IX-SP_CYBERWEB_BGP1_V4 static
 pwsignal ldp
  vsi-id 3785
  peer 10.244.188.1
  traffic-statistics enable
 mtu 8000
 encapsulation ethernet
#
vsi VSI_3005_TRANSP_TELIU_STA_CASA static
 pwsignal ldp
  vsi-id 3005
  peer 10.244.189.0
  peer 10.244.189.11
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3262_BGP2_POP62_EQUATORIAL static
 pwsignal ldp
  vsi-id 3262
  peer 10.244.188.62
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3225_BGP2_POP25_POWERNET static
 pwsignal ldp
  vsi-id 3225
  peer 10.244.188.125
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_130_POP0-2_POP13_C_HA_MGNT static
 pwsignal ldp
  vsi-id 130
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_13_CY_POP0-2_POP1_ARQU_OLT1 static
 pwsignal ldp
  vsi-id 13
  peer 10.244.188.0
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_51_POP0-2_POP05_M_RIN_OLT1 static
 pwsignal ldp
  vsi-id 51
  peer 10.244.188.5
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3964_POP02-11_TR_ALT_CAIX01 static
 pwsignal ldp
  vsi-id 3964
  peer 10.244.188.28
  peer 10.244.188.17
  peer 10.244.188.19
  peer 10.244.189.65
  peer 10.244.189.0
  peer 10.244.189.28
  peer 10.244.189.11
  peer 10.244.188.57
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_151_POP00-02_POP15_EXP_OLT1 static
 pwsignal ldp
  vsi-id 151
  peer 10.244.188.23
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3260_SC_POP02_PROV_NIC_TELE static
 pwsignal ldp
  vsi-id 3260
  peer 10.244.188.23
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3107_POP00_POP02_TR_POA_SEG static
 pwsignal ldp
  vsi-id 3107
  peer 10.244.189.0
  peer 10.244.188.18
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3209_POP01_POP17_PNI_GOOGLE static
 pwsignal ldp
  vsi-id 3209
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_258_CY_POP0-2_POP25_PO_OLT1 static
 pwsignal ldp
  vsi-id 258
  peer 10.244.188.125
  peer 10.244.188.22
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_39_POP0-02_POP03_M_FLO_RADI static
 pwsignal ldp
  vsi-id 39
  peer 10.244.189.3
 mtu 9000
 encapsulation ethernet
#
vsi VSI_141_POP0-2_POP14_LGRAN_OLT1 static
 pwsignal ldp
  vsi-id 141
  peer 10.244.188.59
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_30_CY_POP0-2_POP03_M_F_MGNT static
 pwsignal ldp
  vsi-id 30
  peer 10.244.189.3
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3121_POP00_POP02_TR_CAM_MON static
 pwsignal ldp
  vsi-id 3121
  peer 10.244.188.20
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3266_POP00-02_PROV_WIANETSU static
 pwsignal ldp
  vsi-id 3266
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_271_SC_POP0-2_POP27_CI_OLT1 static
 pwsignal ldp
  vsi-id 271
  peer 10.244.188.27
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3249_SH_POP02_PROV_AS270998 static
 pwsignal ldp
  vsi-id 3249
  peer 10.244.188.49
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_181_POP0-2_POP18_CEIC_OLT1 static
 pwsignal ldp
  vsi-id 181
  peer 10.244.188.18
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI171_CY_POP0-2_POP17_ELE_OLT1 static
 pwsignal ldp
  vsi-id 171
  peer 10.244.188.17
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI194_POP0-2_POP19_HIPIC_RSSUL static
 pwsignal ldp
  vsi-id 194
  peer 10.244.188.19
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_40_SC_POP0-2_POP19_HIP_MGNT static
 pwsignal ldp
  vsi-id 40
  peer 10.244.188.19
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI191_CY_POP0-2_POP19_HIP_OLT1 static
 pwsignal ldp
  vsi-id 191
  peer 10.244.188.19
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_4012_POP0_POP02_CGNAT1_BGP2 static
 pwsignal ldp
  vsi-id 4012
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI190_CY_POP0-2_POP19_HIP_MGNT static
 pwsignal ldp
  vsi-id 190
  peer 10.244.188.19
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI173_CY_POP0-2_POP17_ELE_OLT1 static
 pwsignal ldp
  vsi-id 173
  peer 10.244.188.17
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_18_CY_POP00_POP02_SAP_RADI static
 pwsignal ldp
  vsi-id 18
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_133_CY_POP0-2_POP13_HA_OLT1 static
 pwsignal ldp
  vsi-id 133
  peer 10.244.188.13
  peer 10.244.189.13
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3520_TRANSP_TELIU_LUC_FIBRA static
 pwsignal ldp
  vsi-id 3520
  peer 10.244.188.67
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3341_POP62_TR_EQUAT_SUBSTA static
 pwsignal ldp
  vsi-id 3341
  peer 10.244.188.62
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI3904_PNI_META_POP02_SCHOSSLE static
 pwsignal ldp
  vsi-id 3904
  peer 10.244.188.1
  traffic-statistics enable
 mtu 8000
 encapsulation ethernet
#
vsi VSI_3540_POP00-02_TRAN_MEDIANET static
 pwsignal ldp
  vsi-id 3540
  peer 10.244.188.5
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3542_POP05_TR_MEDIANET_CREA static
 pwsignal ldp
  vsi-id 3542
  peer 10.244.188.5
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_203_SC_POP0-2_POP20_SJ_OLT1 static
 pwsignal ldp
  vsi-id 203
  peer 10.244.188.20
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_1395_POP00_POP95_DGT_SSP static
 pwsignal ldp
  vsi-id 1395
  peer 10.244.188.95
  traffic-statistics enable
 mtu 1620
 encapsulation ethernet
#
vsi VSI_53_POP0-2_POP05_M_RIN_OLT1 static
 pwsignal ldp
  vsi-id 53
  peer 10.244.188.5
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3602_POP0-2_TR_ADYL_ADVANTA static
 pwsignal ldp
  vsi-id 3602
  peer 10.244.188.5
 mtu 9000
 encapsulation ethernet
#
vsi VSI193_CY_POP0-2_POP19_HIP_OLT1 static
 pwsignal ldp
  vsi-id 193
  peer 10.244.188.19
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3801_TR_COLOCATION_ADVICE1 static
 pwsignal ldp
  vsi-id 3801
  peer 10.244.188.20
 mtu 9000
 encapsulation ethernet
 shutdown
#
vsi VSI_3267_POP02_PROV_LUCFIBRA_L2 static
 pwsignal ldp
  vsi-id 3267
  peer 10.244.188.67
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3907_POP02-42_TR1_ALIANCA static
 pwsignal ldp
  vsi-id 3907
  peer 10.244.188.42
  peer 10.244.188.13
  peer 10.244.189.13
 mtu 9000
 encapsulation ethernet
#
vsi VSI_273_CY_POP0-2_POP27_CI_OLT1 static
 pwsignal ldp
  vsi-id 273
  peer 10.244.188.27
 mtu 9000
 encapsulation ethernet
#
vsi VSI_281_SC_POP0-2_POP28_VR_OLT1 static
 pwsignal ldp
  vsi-id 281
  peer 10.244.189.28
 mtu 9000
 encapsulation ethernet
#
vsi VSI_283_CY_POP0-2_POP28_VR_OLT1 static
 pwsignal ldp
  vsi-id 283
  peer 10.244.189.28
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3258_SC_POP02_PROV_SOL_TECH static
 pwsignal ldp
  vsi-id 3258
  peer 10.244.189.28
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3523_CY_POP02_TR_TELIUM static
 pwsignal ldp
  vsi-id 3523
  peer 10.244.188.40
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3573_CAM_BOM_PRINCIPI_TR_LP static
 pwsignal ldp
  vsi-id 3573
  peer 10.244.188.20
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3220_POP02_POP20_BGP2_CE20 static
 pwsignal ldp
  vsi-id 3220
  peer 10.244.188.20
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3964
 pwsignal ldp
#
vsi VSI_23_CY_POP00_POP02_POA_OLT1 static
 pwsignal ldp
#
vsi VSI_3148_POP17-02_CUST_EMED static
 pwsignal ldp
  vsi-id 3148
  peer 10.244.188.17
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
mpls ldp
#
#
mpls ldp remote-peer 10.244.188.0
 remote-ip 10.244.188.0
#
mpls ldp remote-peer 10.244.188.1
 remote-ip 10.244.188.1
#
mpls ldp remote-peer 10.244.188.3
 remote-ip 10.244.188.3
#
mpls ldp remote-peer 10.244.188.4
 remote-ip 10.244.188.4
#
mpls ldp remote-peer 10.244.188.5
 remote-ip 10.244.188.5
#
mpls ldp remote-peer 10.244.188.7
 remote-ip 10.244.188.7
#
mpls ldp remote-peer 10.244.188.8
 remote-ip 10.244.188.8
#
mpls ldp remote-peer 10.244.188.10
 remote-ip 10.244.188.10
#
mpls ldp remote-peer 10.244.188.11
 remote-ip 10.244.188.11
#
mpls ldp remote-peer 10.244.188.12
 remote-ip 10.244.188.12
#
mpls ldp remote-peer 10.244.188.13
 remote-ip 10.244.188.13
#
mpls ldp remote-peer 10.244.188.14
 remote-ip 10.244.188.14
#
mpls ldp remote-peer 10.244.188.15
 remote-ip 10.244.188.15
#
mpls ldp remote-peer 10.244.188.17
 remote-ip 10.244.188.17
#
mpls ldp remote-peer 10.244.188.18
 remote-ip 10.244.188.18
#
mpls ldp remote-peer 10.244.188.19
 remote-ip 10.244.188.19
#
mpls ldp remote-peer 10.244.188.22
 remote-ip 10.244.188.22
#
mpls ldp remote-peer 10.244.188.23
 remote-ip 10.244.188.23
#
mpls ldp remote-peer 10.244.188.27
 remote-ip 10.244.188.27
#
mpls ldp remote-peer 10.244.188.28
 remote-ip 10.244.188.28
#
mpls ldp remote-peer 10.244.188.40
 remote-ip 10.244.188.40
#
mpls ldp remote-peer 10.244.188.42
 remote-ip 10.244.188.42
#
mpls ldp remote-peer 10.244.188.43
 remote-ip 10.244.188.43
#
mpls ldp remote-peer 10.244.188.49
 remote-ip 10.244.188.49
#
mpls ldp remote-peer 10.244.188.50
 remote-ip 10.244.188.50
#
mpls ldp remote-peer 10.244.188.51
 remote-ip 10.244.188.51
#
mpls ldp remote-peer 10.244.188.57
 remote-ip 10.244.188.57
#
mpls ldp remote-peer 10.244.188.59
 remote-ip 10.244.188.59
#
mpls ldp remote-peer 10.244.188.62
 remote-ip 10.244.188.62
#
mpls ldp remote-peer 10.244.188.67
 remote-ip 10.244.188.67
#
mpls ldp remote-peer 10.244.188.95
 remote-ip 10.244.188.95
#
mpls ldp remote-peer 10.244.188.125
 remote-ip 10.244.188.125
#
mpls ldp remote-peer 10.244.189.0
 remote-ip 10.244.189.0
#
mpls ldp remote-peer 10.244.189.3
 remote-ip 10.244.189.3
#
mpls ldp remote-peer 10.244.189.5
 remote-ip 10.244.189.5
#
mpls ldp remote-peer 10.244.189.10
 remote-ip 10.244.189.10
#
mpls ldp remote-peer 10.244.189.11
 remote-ip 10.244.189.11
#
mpls ldp remote-peer 10.244.189.12
 remote-ip 10.244.189.12
#
mpls ldp remote-peer 10.244.189.13
 remote-ip 10.244.189.13
#
mpls ldp remote-peer 10.244.189.15
 remote-ip 10.244.189.15
#
mpls ldp remote-peer 10.244.189.28
 remote-ip 10.244.189.28
#
mpls ldp remote-peer 10.244.189.65
 remote-ip 10.244.189.65
#
rsa peer-public-key 10.244.189.0
 public-key-code begin
  30820109
    02820100
      D4146497 8D8F32E3 A20EBA48 FAD3A2B9 D39226BF 48ABE5D9 A6503B6B 6139ABCB
      C036BB13 8F39D746 6279136C BFE31D85 592B6524 105CE273 7C9DEDE5 2CC17B87
      A506D696 5BD04242 179EF698 65107485 2F71C5D5 8F46C501 AFEF3B98 80680DDA
      715A4C82 3052944B 88EE5A90 AE70C146 969EF7D7 FEE0B54B 1128F02B F7ED8B4C
      E86C1B4F A5C9088D BFE6CD81 722B5DE5 D464EF59 9048494B 32D9BAED FA6C6E9E
      148AA0D1 6FAB3679 2ED8CFAC 380AC6EF CE1E95C9 0E3C44AD 1660F3F3 644FE0FC
      0B64D87E BA7B958F 521F6DAE 93C978D7 D0F63EF4 BE4EF17A BAA2FD06 CEF5AF50
      AC7AF647 B5220988 72A89F2B 033E7BB7 C1A20590 19A299A1 B3A039FE 94A048E1
    0203
      010001
 public-key-code end
peer-public-key end
#
ecc peer-public-key 10.244.188.2 encoding-type der
 public-key-code begin
    04007F1A D89F8F80 662A97D8 DE8812D3 8B9E8C9D 5BF3BF5C 812509BD A6605B0F
    B3D770FD EF75CACF 62204782 FA2970B8 E9113261 344F80F8 600A0E0A B97F0326
    9785CE01 D6F43EA3 489E6E31 CAD82E2C E28AC5AF 574799C0 A9B2FD26 F9E6F229
    546AD1EE 13E962B0 BD20FDFA 3E8001CF A65BE50C E9F0E8B0 3FC48932 E4420809
    DA720D89 8D
 public-key-code end
peer-public-key end
#
ecc peer-public-key 10.244.188.0 encoding-type der
 public-key-code begin
    04010A51 21C3ABD8 22132D34 AD803F0A 80CB558C 6180BD7F 182C292F F85C2328
    41251F9F D7F6DB7F 6DCE33AC 7C49F3FB 37FF854A A64F3EC4 5A089A19 D76354CA
    F078D400 42AB0ADE 3B0D5B0D B4F1D96E A7DE3A8C 070640F5 185792CC D062D5B2
    37B300EF 855325CA FB42C31A B4E4E6FF 3AC11F6A 71861318 86E50FE9 2C9DA1DE
    342A9088 9A
 public-key-code end
peer-public-key end
#
ecc peer-public-key 10.244.88.2 encoding-type der
 public-key-code begin
    040117B6 CCD3D3B9 85F9C476 0E8B4092 F45F72E0 1560E3E5 8E703F00 92933213
    91651FF9 DB64B3D2 970F7686 3CBBC002 B2634D65 E7AAE9B0 4F036F1D D5C4E787
    0056BA01 2399E218 A275ED01 0CE30F8D E59D3B43 E38BC7DA 5B9738B2 86987A02
    79549F57 075C8D21 F3F7A202 BA6E8984 06498BE6 00B9B15F F658C19D B826C040
    12DD0CEE 31
 public-key-code end
peer-public-key end
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
vlan 11
 description VLAN_11_POP0_SAP_OLT1
vlan 12
 description VLAN_12_POP0_SAP_OLT1
vlan 13
 description VLAN_13_POP0_ARQU_OLT1_CYBER
vlan 17
 description VLAN_17_POP00-02_SERVIDORES_IPS_PRIVADOS
vlan 18
 description VALN_18_POP0_SAP_RAD
vlan 20
 description VLAN_20_POP02_POA_C_GOMES_GERENC
vlan 21
 description VLAN_21_POP02_POA_OLT1_SCHOSSLER
vlan 23
 description VLAN_23_POP02_POA_OLT1_CYBER
vlan 30
 description VLAN_30_POP03_M_FOLRES_MGNT
vlan 31
 description VLAN_31_POP03_MIRA_FLORES
vlan 39
 description VLAN_39_POP03_M_FLORES_RADIOS
vlan 40
 description VLAN_40_POP04_POA_HIPICA
vlan 41
 description VLAN_41_POP04_PPPOE_CLIENTES
vlan 50
 description VLAN_50_M_RINCAO_GERENCIA
vlan 51
 description VLAN_51_POP05_M_RINCAO_OLT1_SCHOSSLER
vlan 53
 description VLAN_53_POP05_M_RINCAO_OLT1_CYBER
vlan 60
 description vlan60_POP06_BELA_VISTA_MGNT
vlan 61
 description VLAN_61_POP06_BOA_VISTA
vlan 70
 description vlan70_POP07_STA_TECLA
vlan 71
 description VLAN_71_POP07_STA_TECLA
vlan 80
 name VLAN_80_POP08_FREITAS_GERENCIA
vlan 81
 description VLAN_81_POP08_FREITAS
vlan 90
 description vlan90_POP09_ITACOLOMI_MGNT
vlan 91
 description VLAN_91_POP09_ITACOLOMI_PPPOE
vlan 100
 description VLAN_100_POP10_PQ_EUCAL_MGNT
vlan 101
 description VLAN_101_POP10_PQ_EUCALIPTOS
vlan 110
 description VLAN_110_POP11_COND_VIVAZ_MGNT
vlan 111
 description VLAN_111_POP11_COND_VIVAZ_OLT1
vlan 113
 description VLAN_113_POP11_COND_VIVAZ_OLT1
vlan 120
 description vlan120_POP12_BETANIA_GERENCIA
vlan 121
 description VLAN_121_POP12_OLT1_BETANIA
vlan 130
 description vlan130_POP13_COND_HAVANA_GERENCIA
vlan 131
 description vlan131_POP13_COND_HAVANA_OLT1
vlan 133
 description vlan133_POP13_COND_HAVANA_OLT1
vlan 141
 description VLAN_141_POP14_LOMBA_GRANDE
vlan 150
 description VMAN_150_POP15_EXPOINTER_MGNT
vlan 151
 description VMAN_151_POP15_EXPOINTER_OLT1
vlan 152
 description VLAN_152_POP15_PPPOE_CLIENTES
vlan 160
 description VLAN_160_POP16_CASTELINHO_MGNT
vlan 169
 description VLAN_169_POP16_CASTELINHO
vlan 170
 description VLAN_170_POP17_ELEA_GERENCIA
vlan 171
 description VLAN_171_POP17_ELEA_PPPOE
vlan 173
 description VLAN_173_POP17_ELEA_PPPOE_CYBER
vlan 181
 description VLAN_181_POP18_CEIC_PROCEMPA
vlan 190
 description VLAN_190_POP19_HIPICA_GERENCIA
vlan 191
 description VLAN_191_POP19_OLT1_PPPOE_CLIENTES
vlan 193
 description VLAN_193_POP19_OLT1_PPPOE_CLIENTES
vlan 194
 description VLAN_194_POP19_TRANSP_RSSUL
vlan 203
 description VLAN_203_POP20_S_JOAO_OLT1_CYBER
vlan 258
 description VLAN_258_POP25_CLI_CYBER
vlan 271
 description VLAN_271_POP27_CIVIL_OLT1
vlan 273
 description VLAN_273_POP27_CIVIL_OLT1
vlan 281
 description VLAN_281_POP28_V_RICA_OLT1
vlan 283
 description VLAN_283_POP28_V_RICA_OLT1
vlan 1000
 description PTP_BGP1_SCHOSSLER_BGP2_SCHOSSLER
vlan 1118
 description vlan VLAN_1118_POP02_POP13_POP18_MPLS
vlan 1142
 description VLAN_1142_SW1POP02_SW1POP42_MPLS
vlan 1157
 description VLAN_1157_SW1POP02_SW1POP57_MPLS
vlan 1171
 description VLAN1171_BGP2_RNV_CONTEUDO1
vlan 1213
 description VLAN1213_SW1POP02_SW1POP13_OSPF
vlan 1215
 description VLAN_1215_BGP2_SW1POP15_EXPOINTER
vlan 1217
 description VLAN1217_SW1POP02_SW1POP17_MPLS
vlan 1220
 description VLAN_1220_SW1POP02_SW1POP20_MPLS
vlan 1365
 description VLAN_1365_SW2POP65_SW1POP13_SW1POP02_MPLS
vlan 1395
 description VLAN1395_SW1PO11_SW1PO95_DGTSSP
vlan 2052
 description VLAN_2052_BGP2_CGNAT2_OSPF
vlan 2102
 description VLAN_2102_CE02_CGNAT2_CGNAT
vlan 2210
 description VLAN_2210_CY_NOC2_CY_BGP2_TELIUM_LINK1
vlan 3001
 name VLAN_3001_DEDICADO_NEUGEBAUER
vlan 3005
 description VLAN_3005_TRANSP_TELIUM_S_CASA
vlan 3105
 description VLAN_3105_SSP_CAMERAS
vlan 3106
 description VLAN_3106_TRANSPORTE_SSP_POA_LOOPING
vlan 3107
 description VLAN_3107_TRANSP_POA_MAIS_SEG
vlan 3108
 description VLAN_3108_TRANSP_POA_MAIS_SEG
vlan 3109
 description VLAN_3109_PPPOE_CLIENTES_UPIX
vlan 3121
 description VLAN_3121_TRANSP_CAMERAS_MONTENEGRO
vlan 3148
 description VLAN_3148_SW1POP02_SW1POP17_CUST_EMED_TECNOLOGIA
vlan 3150
 description VLAN_3150_NOC0-2_POP15_NIC_TELEC
vlan 3201
 description VLAN_3201_TR_CY_IX-RS_CY_NOC1_IX-RS
vlan 3209
 description VLAN_3209_POP00_POP02_AS268214_PNI_GOOGLE
vlan 3214
 description VLAN_3214_SCHOSSLER_BGP2_CE14_LOMBA_L2
vlan 3220
 description VLAN_3220_BGP2_NE8000_CE20_OSPF
vlan 3225
 description VLAN_3225_BGP2_SCHOSSLER_POP25_POWERNET
vlan 3243
 description VLAN_3243_SCHOSSLER_BGP2_PROV_VENTO_SUL
vlan 3249
 description VLAN_3249_SCHOSSLER_BGP2_PROV_GEHLING_E_MULLING
vlan 3250
 description VLAN_3250_CYBER_BGP2_VPM_MAIOLI_L2
vlan 3251
 description VLAN_3251_SCHOSSLER_BGP2__ARROBANET_BGP1
vlan 3252
 description VLAN3252_BGP2_SCHOSSLER_BGP1_BLUSTELECOM
vlan 3253
 description VLAN_3253_CYBER_BGP2_LM_CIVIL_L1
vlan 3254
 description VLAN_3254_CYBER_BGP2_LM_V_RICA_L1
vlan 3255
 description VLAN_3255_CYBER_BGP2_LM_V_MARES_L1
vlan 3256
 description VLAN_3256_TRANSP_CLIENTES_TELIUM
vlan 3258
 description VLAN_3258_SCHOSSLER_BGP2__SOLUTION_TECH
vlan 3260
 description VLAN_3260_SCHOSSLER_BGP2_PROV_NIC
vlan 3261
 description VLAN_3261_BGP1_CYBER_BGP2_SCHOSSLER_PROV_VALESAT
vlan 3262
 description VLAN_3262_BGP2_SCHOSSLER_POP62_EQUATORIAL
vlan 3263
 description VLAN3263_BGP2_CE1-2_CE63_VILLELA
vlan 3266
 description VLAN_3266_CYBER_BGP2_WIANETSUL_L2
vlan 3267
 description VLAN_3267_SCHOSSLER_BGP2_LUCFIBRA_L2
vlan 3341
 description VLAN_3341_TRANSPORTE_EQUATORIAL_SUBSTACAO
vlan 3511
 description VLAN_3511_TR_FENIX_CYBER_R_NEUTRA
vlan 3520
 description VLAN_3520_LUC_FIBRA_TR_TELIUM
vlan 3523
 description VLAN3523_TRANSP_CLIENTE_TELIUM
vlan 3540
 description VLAN_3540_CLIENTES_MEDIANET_REDE_CYBER
vlan 3542
 description VLAN_3542_TR_MEDIANET_CREA
vlan 3571
 description VLAN_3571_CLI_CYBER_REDE_LP_SANDRO
vlan 3573
 description VLAN_3573_CAMERAS_BOM_PRINCIPIO_TR_LP_AZUL
vlan 3602
 description VLAN_3602_TR_ADYL_POP14_ADVANTA
vlan 3785
 description VLAN_3785_IX-SP_SCHOSSLER_BGP2_IPV4
vlan 3786
 description VLAN_3786_IX-SP_SCHOSSLER_BGP2_IPV6
vlan 3801
 description VLAN_3801_TR_COLOCATION_ADVICE1
vlan 3904
 description VLAN3904_SW1POP01_SW1POP02_PNI_META
vlan 3907
 description VLAN_3907_POP02_POP42_TR_ALIANCA1
vlan 3964
 description VLAN_3964_TRANSP_ALT_CAIXA_ADVANTA
vlan 4000
 description VLAN_4000_PTP_BGP1_CYBER_BGP2_SCHOSSLER
vlan 4012
 description VLAN_4012_CGNAT1_BGP2
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
 local-user admin password irreversible-cipher $1c$b\JDZ3tf]6$X8aZ/ln0c9::k=VW%k,3t5F7Y\2RxCcn"24aAv%)$
 local-user admin privilege level 15
 local-user admin service-type terminal ssh http
 local-user future password irreversible-cipher $1c$|m.y,d<{IX$J2],)!]/*@ZGbB$d8#G4!W11Kb6:I%1u;<!2o@HW$
 local-user future privilege level 15
 local-user future service-type terminal ssh http
 local-user zandona password irreversible-cipher $1c$_1Fo*f/"bE$nJGt0n.!XQ/"()S]-r)C=HZe"XND=~.#p|5v<k}#$
 local-user zandona privilege level 15
 local-user zandona service-type terminal ssh http
#
ospfv3 1
#
ntp-service server disable
ntp-service ipv6 server disable
ntp-service unicast-server 200.189.40.8
ntp-service unicast-server 200.160.0.8
#
interface Vlanif1
 shutdown
#
interface Vlanif11
 description VLAN_11_POP00_ARQU_OLT1_SCHOSSLER
 l2 binding vsi VSI_11_CY_POP00_POP02_SAP_OLT1
#
interface Vlanif12
 description VLAN_12_POP0_SAP_OLT1
 l2 binding vsi VSI_12_CY_POP0-1_POP1_SAP_OLT1
#
interface Vlanif13
 description VLAN_13_POP0_ARQU_OLT1_CYBER
 l2 binding vsi VSI_13_CY_POP0-2_POP1_ARQU_OLT1
#
interface Vlanif17
 description VLAN_17_POP00-02_SERVIDORES_IPS_PRIVADOS
 l2 binding vsi VSI_17_CY_POP00-02_SRV_IPS_PRIV
#
interface Vlanif18
 description VALN_18_POP0_SAP_RAD
 l2 binding vsi VSI_18_CY_POP00_POP02_SAP_RADI
#
interface Vlanif20
 ip address 10.244.2.98 255.255.255.252
#
interface Vlanif21
 description VLAN_21_POP02_POA_OLT1_SCHOSSLER
 l2 binding vsi VSI_21_CY_POP0_POP2_POA_OLT1
#
interface Vlanif23
 l2 binding vsi VSI_23_POP02_POP57_VLAN23
#
interface Vlanif30
 description VLAN_30_POP03_M_FOLRES_MGNT
 l2 binding vsi VSI_30_CY_POP0-2_POP03_M_F_MGNT
#
interface Vlanif31
 l2 binding vsi VSI_31_CY_NOC0_POP03_M_FLO_OLT1
#
interface Vlanif39
 description VLAN_39_POP03_M_FLORES_RADIOS
 l2 binding vsi VSI_39_POP0-02_POP03_M_FLO_RADI
#
interface Vlanif40
 description VLAN_40_POP04_POA_HIPICA
 l2 binding vsi VSI_40_SC_POP0-2_POP19_HIP_MGNT
#
interface Vlanif41
 description VLAN_41_POP04_PPPOE_CLIENTES
 l2 binding vsi VSI_41_SC_POP0-2_POP19_HIP_OLT1
#
interface Vlanif50
 description VLAN_50_M_RINCAO_GERENCIA
 l2 binding vsi VSI_50_POP0-2_POP05_M_RIN_MGNT
#
interface Vlanif51
 description VLAN_51_POP05_M_RINCAO_OLT1_SCHOSSLER
 l2 binding vsi VSI_51_POP0-2_POP05_M_RIN_OLT1
#
interface Vlanif53
 description VLAN_53_POP05_M_RINCAO_OLT1_CYBER
 l2 binding vsi VSI_53_POP0-2_POP05_M_RIN_OLT1
#
interface Vlanif60
 description VSI_60_CY_NOC0_POP06_B_VIS_MGNT
 l2 binding vsi VSI_60_CY_NOC0_POP06_B_VIS_MGNT
#
interface Vlanif61
 l2 binding vsi VSI_61_CY_NOC0-2_POP06_B_V_OLT1
#
interface Vlanif70
 description VSI_70_CY_NOC0_POP07_S_TEC_MGNT
 l2 binding vsi VSI_70_CY_NOC0_POP07_S_TEC_MGNT
#
interface Vlanif71
 l2 binding vsi VSI_71_CY_NOC0-2_POP07_S_T_OLT1
#
interface Vlanif80
 description VSI_80_CY_NOC0-2_POP08_FRE_MGNT
 l2 binding vsi VSI_80_CY_NOC0-2_POP08_FRE_MGNT
#
interface Vlanif81
 description VSI_81_CY_NOC0-2_POP08_FRE_OLT1
 l2 binding vsi VSI_81_CY_NOC0-2_POP08_FRE_OLT1
#
interface Vlanif90
 description vlan90_POP09_ITACOLOMI_MGNT
 l2 binding vsi VSI_90_SC_POP0_POP09_ITACO_MGNT
#
interface Vlanif91
 description VLAN_91_POP09_ITACOLOMI_PPPOE
 l2 binding vsi VSI_91_SC_POP2_POP10-9_ITA_OLT1
#
interface Vlanif100
 l2 binding vsi VSI_100_CY_NOC0-2_POP10_PQ_MGNT
#
interface Vlanif101
 l2 binding vsi VSI_101_CY_NOC0-2_POP10_PQ_OLT1
#
interface Vlanif110
 description VLAN_110_POP11_COND_VIVAZ_MGNT
 l2 binding vsi VSI_110_POP00_02_POP11_VI_MGNT
#
interface Vlanif111
 description VSI_111_CY_NOC0-2_POP11_VI_OLT1
 l2 binding vsi VSI_111_POP00_02_POP11_VI_OLT1
#
interface Vlanif113
 description VLAN_113_POP11_COND_VIVAZ_OLT1
 l2 binding vsi VSI_113_POP00_02_POP11_VI_OLT1
#
interface Vlanif120
 description VLAN_120_POP12_BETANIA_GERENCIA
 l2 binding vsi VSI_120_CY_POP0-2_POP12_BE_MGNT
#
interface Vlanif121
 description VLAN_121_POP12_BETANIA_OLT1
 l2 binding vsi VSI_121_CY_POP0-2_POP12_BE_OLT1
#
interface Vlanif130
 description vlan130_POP13_COND_HAVANA_GERENCIA
 l2 binding vsi VSI_130_POP0-2_POP13_C_HA_MGNT
#
interface Vlanif131
 description vlan131_POP13_COND_HAVANA_OLT1
 l2 binding vsi VSI_131_CY_POP0-2_POP13_HA_OLT1
#
interface Vlanif133
 description vlan133_POP13_COND_HAVANA_OLT1
 l2 binding vsi VSI_133_CY_POP0-2_POP13_HA_OLT1
#
interface Vlanif141
 description VLAN_141_POP14_LOMBA_GRANDE
 l2 binding vsi VSI_141_POP0-2_POP14_LGRAN_OLT1
#
interface Vlanif150
 description VLAN_150_POP15_EXPOINTER
 l2 binding vsi VSI_150_POP00-02_POP15_EXP_MGNT
#
interface Vlanif151
 l2 binding vsi VSI_151_POP00-02_POP15_EXP_OLT1
#
interface Vlanif160
 description VLAN_160_POP16_CASTELINHO_MGNT
 l2 binding vsi VSI_160_CY_NOC0-2_POP16_CA_MGNT
#
interface Vlanif161
 l2 binding vsi VSI_161_CY_NOC0-2_POP16_CA_OLT1
#
interface Vlanif169
 description VSI_169_CY_NOC0_POP16_CAST_RAD
 l2 binding vsi VSI_169_CY_NOC0_POP16_CAST_RAD
#
interface Vlanif170
 description VLAN_170_POP17_ELEA_GERENCIA
 l2 binding vsi VSI170_CY_POP0-2_POP17_ELE_MGNT
#
interface Vlanif171
 description VLAN_171_POP17_ELEA_PPPOE_SCHOSSLER
 l2 binding vsi VSI171_CY_POP0-2_POP17_ELE_OLT1
#
interface Vlanif173
 description VLAN_173_POP17_ELEA_PPPOE_CYBER
 l2 binding vsi VSI173_CY_POP0-2_POP17_ELE_OLT1
#
interface Vlanif181
 description VLAN_181_POP18_CEIC_PROCEMPA
 l2 binding vsi VSI_181_POP0-2_POP18_CEIC_OLT1
#
interface Vlanif190
 description VLAN_190_POP19_HIPICA_GERENCIA
 l2 binding vsi VSI190_CY_POP0-2_POP19_HIP_MGNT
#
interface Vlanif191
 description VLAN_191_POP19_OLT1_PPPOE_CLIENTES
 l2 binding vsi VSI191_CY_POP0-2_POP19_HIP_OLT1
#
interface Vlanif193
 description VLAN_193_POP19_OLT1_PPPOE_CLIENTES
 l2 binding vsi VSI193_CY_POP0-2_POP19_HIP_OLT1
#
interface Vlanif194
 description VLAN_194_POP19_TRANSP_RSSUL
 l2 binding vsi VSI194_POP0-2_POP19_HIPIC_RSSUL
#
interface Vlanif203
 description VLAN_203_POP20_S_JOAO_OLT1_SCHOSSLER
 l2 binding vsi VSI_203_SC_POP0-2_POP20_SJ_OLT1
#
interface Vlanif258
 description VLAN_258_POP25_CLI_CYBER
 l2 binding vsi VSI_258_CY_POP0-2_POP25_PO_OLT1
#
interface Vlanif271
 description VLAN_271_POP27_CIVIL_OLT1
 l2 binding vsi VSI_271_SC_POP0-2_POP27_CI_OLT1
#
interface Vlanif273
 description VLAN_273_POP27_CIVIL_OLT1
 l2 binding vsi VSI_273_CY_POP0-2_POP27_CI_OLT1
#
interface Vlanif281
 description VLAN_281_POP28_V_RICA_OLT1
 l2 binding vsi VSI_281_SC_POP0-2_POP28_VR_OLT1
#
interface Vlanif283
 description VLAN_283_POP28_CIVIL_OLT1
 l2 binding vsi VSI_283_CY_POP0-2_POP28_VR_OLT1
#
interface Vlanif1000
 description PTP_BGP1_SCHOSSLER_BGP2_SCHOSSLER
 l2 binding vsi VSI_1000_SHO_POP02-20_BGP1_BGP2
#
interface Vlanif1118
 description vlan VLAN_1118_POP02_POP13_POP18_MPLS
 shutdown
 ip address 10.244.118.1 255.255.255.252
 ospf cost 10
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif1142
 description VLAN1142_SW1POP02_SW1POP42_MPLS
 mtu 9216
 ip address 10.244.142.1 255.255.255.252
 ospf cost 100
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif1157
 description VLAN1157_SW1POP02_SW1POP57_MPLS
 mtu 9216
 ip address 10.244.157.1 255.255.255.252
 ospf cost 100
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif1163
 l2 binding vsi VSI_1163_CY_POP04_NOC2_RNV_IP1
#
interface Vlanif1171
 l2 binding vsi VSI_1171_CY_POP04_NOC2_RNV_CONT
#
interface Vlanif1213
 description VLAN1213_SW1POP02_SW1POP13_OSPF
 mtu 9216
 ip address 10.244.113.5 255.255.255.252
 ospf cost 10
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif1217
 description VLAN1217_SW1POP02_SW1POP17_MPLS
 mtu 9216
 ip address 10.244.117.5 255.255.255.252
 ospf cost 1
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif1220
 description VLAN_1220_SW1POP02_SW1POP20_MPLS
 mtu 9216
 ip address 10.244.120.5 255.255.255.252
 ospf cost 1
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif1365
 description VLAN_1365_SW2POP65_SW1POP13_SW1POP02_MPLS
 mtu 9216
 ip address 10.244.165.9 255.255.255.252
 ospf cost 10
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif1395
 description VLAN1395_SW1PO11_SW1PO95_DGTSSP
 l2 binding vsi VSI_1395_POP00_POP95_DGT_SSP
#
interface Vlanif3001
 description name VLAN_3001_DEDICADO_NEUGEBAUER
 l2 binding vsi VSI_3001_POP02_POP15_NEUGEBAUER
#
interface Vlanif3005
 description VLAN_3005_TRANSP_TELIUM_STA_CASA
 l2 binding vsi VSI_3005_TRANSP_TELIU_STA_CASA
#
interface Vlanif3105
 description VLAN_3105_SSP_CAMERAS
 l2 binding vsi VSI_3105_POP00_POP02_TR_CAM_SSP
#
interface Vlanif3106
 description VLAN_3106_TRANSPORTE_SSP_POA_LOOPING
 l2 binding vsi VSI_3106_POP00_POP02_TR_CAM_SSP
#
interface Vlanif3107
 description VLAN_3107_TRANSP_POA_MAIS_SEG
 l2 binding vsi VSI_3107_POP00_POP02_TR_POA_SEG
#
interface Vlanif3108
 description VLAN_3108_TRANSP_POA_MAIS_SEG
 l2 binding vsi VSI_3108_POP00_POP02_TR_POA_SEG
#
interface Vlanif3121
 description VLAN_3121_TRANSP_CAMERAS_MONTENEGRO
 l2 binding vsi VSI_3121_POP00_POP02_TR_CAM_MON
#
interface Vlanif3148
 description PTP_BGP2_SCHOSSLER__CUST_EMED_TECNOLOGIA
 l2 binding vsi VSI_3148_POP17-02_CUST_EMED
#
interface Vlanif3201
 mtu 9000
 l2 binding vsi VSI_3201_CY_POP04_NOC2_IX_RS
#
interface Vlanif3209
 description VLAN_3209_POP00_POP02_AS268214_PNI_GOOGLE
 l2 binding vsi VSI_3209_POP01_POP17_PNI_GOOGLE
#
interface Vlanif3214
 description VLAN_3214_SCHOSSLER_BGP2_CE14_LOMBA_L2
 l2 binding vsi VSI_3214_BGP2_POA_POP14_LOMBA
#
interface Vlanif3220
 description VLAN_3220_BGP2_NE8000_CE20_OSPF
 l2 binding vsi VSI_3220_POP02_POP20_BGP2_CE20
#
interface Vlanif3225
 description VLAN_3225_BGP2_SCHOSSLER_POP25_POWERNET
 l2 binding vsi VSI_3225_BGP2_POP25_POWERNET
#
interface Vlanif3243
 description VLAN_3243_SCHOSSLER_BGP2_PROV_VENTO_SUL
 l2 binding vsi VSI_3243_SH_POP00_PROV_AS52917
#
interface Vlanif3249
 description VLAN_3249_SCHOSSLER_BGP2_PROV_GEHLING_E_MULLING
 l2 binding vsi VSI_3249_SH_POP02_PROV_AS270998
#
interface Vlanif3250
 description VLAN_3250_CYBER_BGP2_VPM_MAIOLI_L2
 l2 binding vsi VSI_3250_CY_NOC2_PROV_VPMMAIOLI
 statistic enable both
#
interface Vlanif3251
 description VLAN_3251_SCHOSSLER_BGP2__ARROBANET_BGP1
 l2 binding vsi VSI_3251_POP02_PROV_ARROBANET
#
interface Vlanif3252
 description VLAN3252_BGP2_SCHOSSLER_BGP1_BLUSTELECOM
 l2 binding vsi VSI_3252_POP00-02_PROV_BLUSTELE
#
interface Vlanif3253
 description VLAN_3253_BGP2_SCHOSSLER_BGP1_LM_CIVIL
 l2 binding vsi VSI_3253_SC_BGP2_PROV_LM_CIVIL
#
interface Vlanif3254
 l2 binding vsi VSI_3254_CY_NOC0_PROV_LM_V_RICA
#
interface Vlanif3255
 l2 binding vsi VSI_3255_CY_NOC0_PROV_LM_VMARES
#
interface Vlanif3256
 description VLAN_3256_TRANSP_CLIENTES_TELIUM
 l2 binding vsi VSI_3256_NOC0_NOC2_TR_CL_TELIUM
#
interface Vlanif3258
 description VLAN_3258_SCHOSSLER_BGP2__SOLUTION_TECH
 l2 binding vsi VSI_3258_SC_POP02_PROV_SOL_TECH
#
interface Vlanif3260
 description VLAN_3260_SCHOSSLER_BGP2_PROV_NIC
 l2 binding vsi VSI_3260_SC_POP02_PROV_NIC_TELE
#
interface Vlanif3261
 description VLAN_3261_CYBER_BGP1-2_PROV_VALESAT
 l2 binding vsi VSI_3261_POP00-02_PROV_VALESAT
#
interface Vlanif3262
 description VLAN_3262_BGP2_SCHOSSLER_POP62_EQUATORIAL
 l2 binding vsi VSI_3262_BGP2_POP62_EQUATORIAL
#
interface Vlanif3263
 description VLAN3263_BGP2_CE1-2_CE63_VILLELA
 l2 binding vsi VSI_3263_POP0-2_POP63_VILLELA
#
interface Vlanif3266
 description VLAN_3266_CYBER_BGP2_WIANETSUL_L2
 l2 binding vsi VSI_3266_POP00-02_PROV_WIANETSU
#
interface Vlanif3267
 description VLAN_3267_SCHOSSLER_BGP2_LUCFIBRA_L2
 l2 binding vsi VSI_3267_POP02_PROV_LUCFIBRA_L2
#
interface Vlanif3341
 description VLAN_3341_TRANSPORTE_EQUATORIAL_SUBSTACAO
 l2 binding vsi VSI_3341_POP62_TR_EQUAT_SUBSTA
#
interface Vlanif3511
 description VLAN_3511_TR_FENIX_CYBER_R_NEUTRA
 l2 binding vsi VSI3511_POP12_TR_FENIX_CYBER_RN
#
interface Vlanif3520
 description VLAN_3520_LUC_FIBRA_TR_TELIUM
 l2 binding vsi VSI_3520_TRANSP_TELIU_LUC_FIBRA
#
interface Vlanif3523
 description VLAN3523_TRANSP_CLIENTE_TELIUM
 l2 binding vsi VSI_3523_CY_POP02_TR_TELIUM
#
interface Vlanif3540
 description VLAN_3540_CLIENTES_MEDIANET_REDE_CYBER
 l2 binding vsi VSI_3540_POP00-02_TRAN_MEDIANET
#
interface Vlanif3542
 description VLAN_3542_TR_MEDIANET_CREA
 l2 binding vsi VSI_3542_POP05_TR_MEDIANET_CREA
#
interface Vlanif3571
 description VLAN_3571_CLI_CYBER_REDE_LP_SANDRO
 l2 binding vsi VSI_3571_POP0-2_RNEUTRA_LP_SAND
#
interface Vlanif3573
 description VLAN_3573_CAMERAS_BOM_PRINCIPIO_TR_LP_AZUL
 l2 binding vsi VSI_3573_CAM_BOM_PRINCIPI_TR_LP
#
interface Vlanif3602
 description VLAN_3602_TR_ADYL_POP14_ADVANTA
 l2 binding vsi VSI_3602_POP0-2_TR_ADYL_ADVANTA
#
interface Vlanif3785
 description VLAN_3785_IX-SP_SCHOSSLER_BGP2_IPV4
 l2 binding vsi VSI_3785_IX-SP_CYBERWEB_BGP1_V4
#
interface Vlanif3786
 description VLAN_3786_IX-SP_SCHOSSLER_BGP2_IPV6
 l2 binding vsi VSI_3786_IX-SP_CYBERWEB_BGP1_V6
#
interface Vlanif3801
 description VLAN_3801_TR_COLOCATION_ADVICE1
 shutdown
 l2 binding vsi VSI_3801_TR_COLOCATION_ADVICE1
#
interface Vlanif3904
 description VLAN3904_SW1POP01_SW1POP02_PNI_META
 l2 binding vsi VSI3904_PNI_META_POP02_SCHOSSLE
#
interface Vlanif3907
 description VLAN_3907_POP02_POP42_TR_ALIANCA1
 l2 binding vsi VSI_3907_POP02-42_TR1_ALIANCA
#
interface Vlanif3964
 description VLAN_3964_TRANSP_ALT_CAIXA_ADVANTA
 l2 binding vsi VSI_3964_POP02-11_TR_ALT_CAIX01
#
interface Vlanif4000
 description VLAN_4000_PTP_BGP1_CYBER_BGP2_SCHOSSLER
 l2 binding vsi VSI_4000_BGP1_CYBER_BGP2_SCHOSS
#
interface Vlanif4012
 description VLAN_4012_CGNAT1_BGP2
 l2 binding vsi VSI_4012_POP0_POP02_CGNAT1_BGP2
#
interface MEth0/0/1
 ip address 10.244.22.102 255.255.255.252
#
interface Eth-Trunk0
 description LAG0_BGP1POP00_BGP2POP02
 port link-type trunk
 qinq vlan-translation enable
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1000 1163
 jumboframe enable 12288
#
interface Eth-Trunk1
 description LAG1_SW1POP02_PS_CE02_POP02
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 11 to 13 18 20 to 23 31 39 41 to 42 51 53 61 71
 port trunk allow-pass vlan 79 81 91 101 109 111 113 119 121 127
 port trunk allow-pass vlan 130 to 131 133 141 151 to 152 161 169 171 173 181 191
 port trunk allow-pass vlan 193 to 194 201 203 258 271 273 281 283 621 1002
 port trunk allow-pass vlan 2102 3109 3121 3256 3263 3511 3571 3602 3907
 jumboframe enable 12288
#
interface Eth-Trunk5
 description LAG5_SW1PO02_VS_BGP2_POP02
 port link-type trunk
 qinq vlan-translation enable
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 17 133 1171 1215 2052 2210 3001 3004 3014 3148
 port trunk allow-pass vlan 3165 3209 3214 3220 3225 3243 3249 to 3255 3258 3260 to 3263 3265 to 3267
 port trunk allow-pass vlan 3520 3801 3904 4000 4012
 jumboframe enable 9000
#
interface XGigabitEthernet0/0/1
 description LAG0_BGP2_PX01_PX02_SW1POP02_PX01_X02
 eth-trunk 0
#
interface XGigabitEthernet0/0/2
 description PTP_SW1POP02_CY_P02_CAIXA_AG51433-293_51433-293
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1157
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/3
 description LAG1_SW1POP02_PX03-04_CE02_PX03-04
 eth-trunk 1
#
interface XGigabitEthernet0/0/4
 description LAG1_SW1POP02_PX03-04_CE02_PX03-04
 eth-trunk 1
#
interface XGigabitEthernet0/0/5
 description PTP_SW1POP02_PX05_BGP2_PX05_IX_SP
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 3785 to 3786
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/6
 description PTP_SW1POP02_PX06_OLT1_POP02_PX05
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 20 to 21 23 3005 3105 to 3109 3256 3261 3263 3341 3540 3542
 port trunk allow-pass vlan 3964
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/7
 description PTP_SW1POP02_CY_P07_BGP2_CY_P07_IX-RS
 port link-type dot1q-tunnel
 port default vlan 3201
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/8
 description PTP_SW1POP02_CY_P08_BGP2_CY_P08_ERRO
 port link-type trunk
 undo port trunk allow-pass vlan 1
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/9
 shutdown
#
interface XGigabitEthernet0/0/10
 description PTP_SW1POP02_CY_P02_CAIXA_AG51433-293_51433-293
 shutdown
 port link-type dot1q-tunnel
 port default vlan 3964
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/11
 description PTP_SW1POP02_PX11_SW1ALT1_PX04_VIA51
 port link-type dot1q-tunnel
 port default vlan 3964
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/12
 description PTP_SW1POP02_PX12_SW1POP13_PX02
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1213 1365
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/13
 description PTP_SW1POP02_PX13_SW2ALIANCA_MKT_DTC_TELIUM
 port link-type dot1q-tunnel
 port default vlan 3907
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/14
 description PTP_SW1POP02_PX14_SW1POP42_PX04
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1142
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/15
 description PTP_SW1POP2_CY_PX15_SW1TELIUM_PXXX_LINK1
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 2210
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/16
 description PTP_SW1POP02_P16_SRVHOST2_PX01
 port link-type dot1q-tunnel
 port default vlan 17
#
interface XGigabitEthernet0/0/17
 description PTP_SW1_CY_P17_CY_CGNAT2_SFPPLUS1
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 20 133 170 190 to 191 194 2052 3011 3105 3602 3907
 port trunk allow-pass vlan 3964
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/18
 description PTP_SW1_CY_P18_CY_CGNAT2_SFPPLUS2
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 11 20 to 23 30 to 33 40 to 41 50 to 51 60 70 80 to 81 90 100 to 101
 port trunk allow-pass vlan 109 to 111 113 119 to 121 130 to 131 133 150 to 151 160 to 161 169 to 171 173 193
 port trunk allow-pass vlan 201 203 2102 2340 to 2341 3001 3106 3109 3121 3150 3220
 port trunk allow-pass vlan 3251 3256 3261 3263 3341 3571 3573
 stp disable
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/19
 shutdown
#
interface XGigabitEthernet0/0/20
 description SW1POP02_PX20_SW1TELIUM_DIOfo9Group1_CIRION_ANTIGO
 port link-type dot1q-tunnel
 port default vlan 3901
 jumboframe enable 9000
#
interface XGigabitEthernet0/0/21
 description PTP_SW1POP02_P21_SWTELIUM_RACK_B12_GE0/42
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 3523
 jumboframe enable 9000
#
interface XGigabitEthernet0/0/22
 description CY_SW1NOC2_PX22_SWOSIRNET_PX24
 port link-type dot1q-tunnel
 port default vlan 3341
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/23
 description PTP_SW1POP02_CY_PX23_CGNAT2_ether8
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 3005
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/24
 description PTP_SW1POP02_SW2POP02_HEX_TELIUM_sfp1
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1395 3105 3107 3341
 jumboframe enable 12288
#
interface 100GE0/0/1
 shutdown
#
interface 100GE0/0/2
 description PTP_SW1POP02_PCX02_SW1POP17_PCX03
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1217
 jumboframe enable 12288
#
interface 100GE0/0/3
 description PTP_SW1POP02_PCX03_SW1POP20_PCX03
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1220
 jumboframe enable 12288
#
interface 100GE0/0/4
 shutdown
#
interface 100GE0/0/5
 description LAG5_SW1POP02_PCX05-06_BGP2POP02_PCX00-01
 eth-trunk 5
#
interface 100GE0/0/6
 description LAG5_SW1POP02_PCX05-06_BGP2POP02_PCX00-01_SEM_CABO
 shutdown
 eth-trunk 5
#
interface NULL0
#
interface LoopBack2
 ip address 10.244.188.2 255.255.255.255
#
ospf 1 router-id 10.244.188.2
 bfd all-interfaces enable
 import-route direct cost 15 type 1
 import-route static cost 15 type 1
 silent-interface all
 undo silent-interface Vlanif1213
 undo silent-interface Vlanif1118
 undo silent-interface Vlanif1217
 undo silent-interface Vlanif1365
 undo silent-interface Vlanif1220
 undo silent-interface Vlanif1142
 undo silent-interface Vlanif1157
 opaque-capability enable
 area 0.0.0.0
  network 10.244.102.4 0.0.0.3
  network 10.244.102.12 0.0.0.3
  network 10.244.104.0 0.0.0.3
  network 10.244.104.4 0.0.0.3
  network 10.244.113.4 0.0.0.3
  network 10.244.114.4 0.0.0.3 description Vlanif1217
  network 10.244.117.4 0.0.0.3 description Vlanif1217
  network 10.244.118.0 0.0.0.3 description Vlanif1118
  network 10.244.120.4 0.0.0.3 description Vlanif1220_POP20_S_JOAO
  network 10.244.125.12 0.0.0.3
  network 10.244.142.0 0.0.0.3 description Vlanif1142_POP42_ALIANCA
  network 10.244.157.0 0.0.0.3 description Vlanif1157_POP57_CAIXA
  network 10.244.165.8 0.0.0.3 description Vlanif1365
  network 10.244.188.2 0.0.0.0
  mpls-te enable
#
ip route-static 0.0.0.0 0.0.0.0 10.244.2.97
#
snmp-agent
snmp-agent local-engineid 800007DB03E48326885770
snmp-agent community read cipher %^%#%b1.&&NWhJ~^e4+ZQul45~hrXZe-/RVEi8Zji+kAz@!OM3,z=/r0[;#pzTz)9-sEW:\=f*rb}NH/Q3+Z%^%#
snmp-agent community read cipher %^%#nub&XF-3:L*92q<"[J`&&[_pSz::ZH~=wcD91`DIa#xyK&{%hAgNgZK]iRg!WfXfK]1~8HgX3XX6N<[E%^%#
snmp-agent community read cipher %^%#m#iN''A-:+XJR~Ez@hb+[SNt5Fm]aS8&/rQMmB+STw%>Bj(zkV)70n>k1U#Nzp~T~ooHx5w/lqGoOjOR%^%#
snmp-agent sys-info contact CyberWeb
snmp-agent sys-info location -30.0293981,-51.2076259
snmp-agent sys-info version v2c
undo snmp-agent sys-info version v3
snmp-agent protocol source-status all-interface
snmp-agent protocol source-status ipv6 all-interface
#
stelnet server enable
ssh client first-time enable
ssh client 10.244.188.0 assign ecc-key 10.244.188.0
ssh client 10.244.188.2 assign ecc-key 10.244.188.2
ssh client 10.244.189.0 assign rsa-key 10.244.189.0
ssh client 10.244.88.2 assign ecc-key 10.244.88.2
ssh server-source all-interface
ssh server cipher aes256_ctr aes128_ctr
ssh server hmac sha2_256
ssh client cipher aes256_ctr aes128_ctr
ssh client hmac sha2_256
ssh server dh-exchange min-len 2048
ssh server publickey ecc dsa rsa
#
capwap dtls psk %^%#~~J#2{>(a61>,AHmLu(6XCC(.TPd>5p<bzS",XyV%^%#
capwap dtls inter-controller psk %^%#~~J#2{>(a61>,AHmLu(6XCC(.TPd>5p<bzS",XyV%^%#
capwap dtls cert-mandatory-match disable
capwap dtls version1.0 enable
capwap dtls cbc enable
#
user-interface con 0
 authentication-mode aaa
user-interface vty 0 4
 authentication-mode aaa
 idle-timeout 3600 0
user-interface vty 16 20
#
wlan
 traffic-profile name default
 security-profile name default
  security open
 security-profile name default-wds
 security-profile name default-mesh
  security open
 ssid-profile name default
 vap-profile name default
 wds-profile name default
 mesh-handover-profile name default
 mesh-profile name default
 regulatory-domain-profile name default
  dca-channel 5g bandwidth 20mhz
  dca-channel 6g bandwidth 20mhz
 air-scan-profile name default
 rrm-profile name default
  smart-roam snr-margin high-level-margin 15 low-level-margin 6
  smart-roam unable-roam-client expire-time 120
  antenna-mode omnidirection
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
```
