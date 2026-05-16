```yaml
User Authentication
(admin@10.244.189.0) Password:

Info: The max number of VTY users is 10, and the number
      of current VTY users on line is 1.
      The current login time is 2026-04-29 15:14:42-03:00.
Info: Lastest accessed IP: 10.244.19.90  Time: 2026-04-22 21:58:36-03:00  Password will expire in: -

Info: Smart-upgrade is currently disabled. Enable Smart-upgrade to get recommended version information.
<SW1POP00_CYBER>displ
<SW1POP00_CYBER>display curr
<SW1POP00_CYBER>display current-configuration
!Software Version V200R023C00SPC500
#
sysname SW1POP00_CYBER
#
vlan batch 2 4 10 to 13 16 to 19 21 23 30 to 31 39 to 41 50 to 51 53
vlan batch 60 to 61 70 to 71 73 80 to 81 83 90 to 91 100 to 101 110 to 111 113 120 to 121
vlan batch 130 to 131 133 140 to 141 150 to 151 160 to 161 169 171 173 181 190 to 191
vlan batch 193 to 194 200 to 201 203 211 213 220 230 to 231 233 250 to 251 253
vlan batch 258 271 273 281 283 905 to 907 912 to 917 919 to 920 922 to 924 926
vlan batch 931 934 936 938 to 942 945 to 949 952 to 953 956 to 960 963 965 to 966 968
vlan batch 970 to 974 977 982 985 to 986 990 1001 1003 1100 1108 1111 to 1112
vlan batch 1121 1125 1138 1144 1152 1164 1166 1195 1264 1295
vlan batch 1395 1914 2311 2340 to 2341 2733 3000 3005 3101 to 3102 3105 to 3108 3111
vlan batch 3114 3119 to 3121 3143 3147 3149 to 3155 3160 3162 to 3163 3166 to 3168 3203 3207 to 3208
vlan batch 3252 3256 3261 3266 3341 3511 3532 to 3533 3540 to 3541 3550 3560
vlan batch 3571 3580 to 3581 3592 3602 3790 to 3791 3902 3904 to 3906 3964 4000 to 4001 4012
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
mpls lsr-id 10.244.189.0
mpls
 mpls te
 mpls rsvp-te
 mpls te cspf
#
mpls l2vpn
#
vsi VSI_21_CY_POP00_POP02_POA_OLT1 static
 pwsignal ldp
  vsi-id 21
  peer 10.244.188.2
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_41_CY_POP0-2_POP04_HIP_OLT1 static
 pwsignal ldp
  vsi-id 41
  peer 10.244.188.19
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3120_POP00_POP20_BGP1_CE20 static
 pwsignal ldp
  vsi-id 3120
  peer 10.244.188.20
 mtu 9000
 encapsulation ethernet
#
vsi VSI_161_CY_POP0-2_POP16_CA_OLT1 static
 pwsignal ldp
  vsi-id 161
  peer 10.244.189.3
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_169_CY_POP0-2_POP16_CA_RADI static
 pwsignal ldp
  vsi-id 169
  peer 10.244.189.3
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_31_CY_POP0-2_POP03_M_F_OLT1 static
 pwsignal ldp
  vsi-id 31
  peer 10.244.189.3
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_61_CY_POP0-2_POP06_B_V_OLT1 static
 pwsignal ldp
  vsi-id 61
  peer 10.244.188.7
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_91_CY_POP0-2_POP09_ITA_OLT1 static
 pwsignal ldp
  vsi-id 91
  peer 10.244.189.3
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_101_CY_POP0-2_POP10_PQ_OLT1 static
 pwsignal ldp
  vsi-id 101
  peer 10.244.189.10
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_160_CY_POP0-2_POP16_CA_MGNT static
 pwsignal ldp
  vsi-id 160
  peer 10.244.189.3
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_90_CY_POP0-2_POP09_ITA_MGNT static
 pwsignal ldp
  vsi-id 90
  peer 10.244.189.3
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_60_CY_POP0-2_POP06_B_V_MGNT static
 pwsignal ldp
  vsi-id 60
  peer 10.244.188.7
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
vsi VSI_71_CY_POP0-2_POP07_STE_OLT1 static
 pwsignal ldp
  vsi-id 71
  peer 10.244.188.7
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
vsi VSI_120_CY_POP0-2_POP12_BE_MGNT static
 pwsignal ldp
  vsi-id 120
  peer 10.244.189.12
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_70_CY_POP0-2_POP07_STE_MGNT static
 pwsignal ldp
  vsi-id 70
  peer 10.244.188.7
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_100_CY_POP0-2_POP10_PQ_MGNT static
 pwsignal ldp
  vsi-id 100
  peer 10.244.189.10
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_130_POP0-2_POP13_C_HA_MGNT static
 pwsignal ldp
  vsi-id 130
  peer 10.244.188.2
  peer 10.244.189.65
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_81_POP0-2_POP08_FREITA_OLT1 static
 pwsignal ldp
  vsi-id 81
  peer 10.244.188.8
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3153_CY_POP00_PROV_LM_CIVIL static
 pwsignal ldp
  vsi-id 3153
  peer 10.244.188.27
  peer 10.244.188.28
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3560_TRANS_PPPOE_POWERNET static
 pwsignal ldp
  vsi-id 3560
  peer 10.244.188.125
  peer 10.244.188.27
 mtu 9000
 encapsulation ethernet
#
vsi VSI_23_CY_POP00_POP02_POA_OLT1 static
 pwsignal ldp
  vsi-id 23
  peer 10.244.188.2
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_253_CY_POP0-2_POP25_PO_OLT1 static
 pwsignal ldp
  vsi-id 253
  peer 10.244.188.125
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_258_CY_POP0-2_POP25_PO_OLT1 static
 pwsignal ldp
  vsi-id 258
  peer 10.244.188.125
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_110_POP00_02_POP11_VI_MGNT static
 pwsignal ldp
  vsi-id 110
  peer 10.244.189.11
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_111_POP00_02_POP11_VI_OLT1 static
 pwsignal ldp
  vsi-id 111
  peer 10.244.188.11
  peer 10.244.188.11 pw POP00_POP11_ANT
  peer 10.244.189.11
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_971_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 971
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3155_CY_POP00_PROV_LM_V_MAR static
 pwsignal ldp
  vsi-id 3155
  peer 10.244.188.28
  peer 10.244.189.28
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3154_CY_POP00_PROV_LM_V_RIC static
 pwsignal ldp
  vsi-id 3154
  peer 10.244.188.28
  peer 10.244.189.28
 mtu 9000
 encapsulation ethernet
#
vsi VSI3906_PNI_META_POP00_CYBER static
 pwsignal ldp
  vsi-id 3906
  peer 10.244.188.1
 mtu 8000
 encapsulation ethernet
#
vsi VSI_3160_CY_POP00_PROV_NIC_TELE static
 pwsignal ldp
  vsi-id 3160
  peer 10.244.188.15
  peer 10.244.189.15
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
vsi VSI_150_CY_POP00_POP15_EXP_MGNT static
 pwsignal ldp
  vsi-id 150
  peer 10.244.189.15
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3571_POP0-2_RNEUTRA_LP_SAND static
 pwsignal ldp
  vsi-id 3571
  peer 10.244.188.20
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_151_CY_POP0-2_POP15_EX_OLT1 static
 pwsignal ldp
  vsi-id 151
  peer 10.244.188.15
  peer 10.244.189.15
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3143_CY_POP00_PROV_AS52917 static
 pwsignal ldp
  vsi-id 3143
  peer 10.244.188.43
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
vsi VSI_51_POP0-2_POP05_M_RIN_OLT1 static
 pwsignal ldp
  vsi-id 51
  peer 10.244.188.5
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3150_POP00_PROV_VPM_MAIOLI static
 pwsignal ldp
  vsi-id 3150
  peer 10.244.188.50
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3162_POP00_PROV_EQUATORIAL static
 pwsignal ldp
  vsi-id 3162
  peer 10.244.188.62
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_16_SERVIDORES_IP_PUBLICOS static
 pwsignal ldp
  vsi-id 16
  peer 10.244.188.20
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3581_RN_CYBER_NA_INFRAWEB static
 pwsignal ldp
  vsi-id 3581
  peer 10.244.188.59
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
vsi VSI_4000_BGP1_CYBER_BGP2_SCHOSS static
 pwsignal ldp
  vsi-id 4000
  peer 10.244.188.2
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3252_POP00-02_PROV_BLUSTELE static
 pwsignal ldp
  vsi-id 3252
  peer 10.244.188.2
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3266_POP00-02_PROV_WIANETSU static
 pwsignal ldp
  vsi-id 3266
  peer 10.244.188.2
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3203_POP04_POP00_IXRS_BLUS static
 pwsignal ldp
  vsi-id 3203
  peer 10.244.188.4
  traffic-statistics enable
 mtu 8000
 encapsulation ethernet
#
vsi VSI_3207_POP00_POP04_IXRS_CYBER static
 pwsignal ldp
  vsi-id 3207
  peer 10.244.188.4
  traffic-statistics enable
 mtu 8000
 encapsulation ethernet
#
vsi VSI_80_CY_POP0-2_POP08_FRE_MGNT static
 pwsignal ldp
  vsi-id 80
  peer 10.244.188.8
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_1003_BGP1_CYBER_CE03_CYBER static
 pwsignal ldp
  vsi-id 1003
  peer 10.244.188.20
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
vsi VSI_3790_BGP1_CYBER_IX_SP_IPV4 static
 pwsignal ldp
  vsi-id 3790
  peer 10.244.188.1
  traffic-statistics enable
 mtu 8000
 encapsulation ethernet
#
vsi VSI_3791_BGP1_CYBER_IX_SP_IPV6 static
 pwsignal ldp
  vsi-id 3791
  peer 10.244.188.1
  traffic-statistics enable
 mtu 8000
 encapsulation ethernet
#
vsi VSI_131_POP0-2_POP13_C_HAV_OLT1 static
 pwsignal ldp
  vsi-id 131
  peer 10.244.188.13
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3005_TRANSP_TELIU_STA_CASA static
 pwsignal ldp
  vsi-id 3005
  peer 10.244.188.2
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI3904_PNI_META_POP00_CYBER static
 pwsignal ldp
  vsi-id 3904
  peer 10.244.188.1
 mtu 8000
 encapsulation ethernet
#
vsi VSI_3000_CYB_POP00-20_BGP1_BGP1 static
 pwsignal ldp
  vsi-id 3000
  peer 10.244.188.20
 mtu 9000
 encapsulation ethernet
#
vsi VSI_959_POP00_POP08_TRANSP_VERO static
 pwsignal ldp
  vsi-id 959
  peer 10.244.188.8
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3532_POP00_TRAN_CAM_CAMAQUA static
 pwsignal ldp
  vsi-id 3532
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3533_POP00_TRAN_CAM_CAMAQUA static
 pwsignal ldp
  vsi-id 3533
  peer 10.244.188.21
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
vsi VSI193_CY_POP0-2_POP19_HIP_OLT1 static
 pwsignal ldp
  vsi-id 193
  peer 10.244.188.19
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3167_POP00_PROV_LUCFIBRA_L1 static
 pwsignal ldp
  vsi-id 3167
  peer 10.244.188.67
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
vsi VSI_273_CY_POP0-2_POP27_CI_OLT1 static
 pwsignal ldp
  vsi-id 273
  peer 10.244.188.27
 mtu 9000
 encapsulation ethernet
#
vsi VSI_11_CY_POP00_POP02_SAP_OLT1 static
 pwsignal ldp
  vsi-id 11
  peer 10.244.188.2
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3902_EQUIN_POP00_CYBER_BGP1 static
 pwsignal ldp
  vsi-id 3902
  peer 10.244.188.1
  traffic-statistics enable
 mtu 8000
 encapsulation ethernet
#
vsi VSI_12_CY_POP0-1_POP1_SAP_OLT1 static
 pwsignal ldp
  vsi-id 12
  peer 10.244.188.2
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3107_POP00_POP02_TR_POA_SEG static
 pwsignal ldp
  vsi-id 3107
  peer 10.244.188.2
  peer 10.244.188.125
  peer 10.244.188.19
  peer 10.244.188.17
  peer 10.244.189.65
  peer 10.244.188.20
  peer 10.244.188.21
  peer 10.244.189.11
  peer 10.244.188.13
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI3114_POP00_POP14_LOMBA_BGP1 static
 pwsignal ldp
  vsi-id 3114
  peer 10.244.189.14
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3101_POP00_TRANS_CAM_SAPUCA static
 pwsignal ldp
  vsi-id 3101
  peer 10.244.188.8
  peer 10.244.188.125
  peer 10.244.188.15
  peer 10.244.188.5
  peer 10.244.188.22
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3105_POP00_POP02_TR_CAM_SSP static
 pwsignal ldp
  vsi-id 3105
  peer 10.244.188.2
  peer 10.244.188.19
  peer 10.244.188.4
  peer 10.244.188.17
  peer 10.244.188.125
  peer 10.244.189.65
  peer 10.244.188.20
  peer 10.244.188.21
  peer 10.244.189.11
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3106_POP00_POP02_TR_CAM_SSP static
 pwsignal ldp
  vsi-id 3106
  peer 10.244.188.2
  peer 10.244.188.20
  peer 10.244.189.11
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3102_POP00_TRANS_CAM_SAPUCA static
 pwsignal ldp
  vsi-id 3102
  peer 10.244.188.125
  peer 10.244.188.21
  peer 10.244.188.22
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
vsi VSI_3341_POP62_TR_EQUAT_SUBSTA static
 pwsignal ldp
  vsi-id 3341
  peer 10.244.188.17
  peer 10.244.188.62
  peer 10.244.188.67
  peer 10.244.188.19
  peer 10.244.188.2
  peer 10.244.189.11
  peer 10.244.188.21
  peer 10.244.188.44
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3256_TRANSP_TELIU_DEDICADOS static
 pwsignal ldp
  vsi-id 3256
  peer 10.244.188.2
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3163_POP00-02_POP63_VILLELA static
 pwsignal ldp
  vsi-id 3163
  peer 10.244.188.19
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3149_CY_POP00_PROV_AS270998 static
 pwsignal ldp
  vsi-id 3149
  peer 10.244.188.49
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_17_CY_POP00-02_SRV_IPS_PRIV static
 pwsignal ldp
  vsi-id 17
  peer 10.244.188.2
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3108_POP00_POP02_TR_POA_SEG static
 pwsignal ldp
  vsi-id 3108
  peer 10.244.188.2
  peer 10.244.188.18
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
vsi VSI_140_POP0-2_POP14_LGRAN_OLT1 static
 description VLAN_140_POP14_OLT1
 pwsignal ldp
  vsi-id 140
  peer 10.244.189.14
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
vsi VSI171_CY_POP0-2_POP17_ELE_OLT1 static
 pwsignal ldp
  vsi-id 171
  peer 10.244.188.17
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
vsi VSI_13_CY_POP00_POP02_SAP_OLT1 static
 pwsignal ldp
  vsi-id 13
  peer 10.244.188.2
  peer 10.244.188.49
  traffic-statistics enable
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
vsi VSI_141_POP0-2_POP14_LGRAN_OLT1 static
 pwsignal ldp
  vsi-id 141
  peer 10.244.189.14
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_18_CY_POP00_POP02_SAP_RADI static
 pwsignal ldp
  vsi-id 18
  peer 10.244.188.2
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI3119_POP00_TRAN_PROV_NEGETTI static
 pwsignal ldp
  vsi-id 3119
  peer 10.244.188.27
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3208_PNI_GGC_ASN273461 static
 pwsignal ldp
  vsi-id 3208
  peer 10.244.188.1
  traffic-statistics enable
 mtu 8000
 encapsulation ethernet
#
vsi VSI_4012_POP0_POP02_CGNAT1_BGP2 static
 pwsignal ldp
  vsi-id 4012
  peer 10.244.188.2
  traffic-statistics enable
 mtu 9000
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
vsi VSI_73_CY_POP0-2_POP07_STE_OLT1 static
 pwsignal ldp
  vsi-id 73
  peer 10.244.188.7
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3541_POP00-02_TRAN_MEDIANET static
 pwsignal ldp
  vsi-id 3541
  peer 10.244.188.5
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_1914_SEABORN_L1_ASN273461 static
 pwsignal ldp
  vsi-id 1914
  peer 10.244.188.17
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_83_CY_POP0-2_POP08_FRE_OLT1 static
 pwsignal ldp
  vsi-id 83
  peer 10.244.188.8
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_201_SC_POP0-2_POP20_SJ_OLT1 static
 pwsignal ldp
  vsi-id 201
  peer 10.244.188.20
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
vsi VSI_200_SC_POP0-2_POP20_SJ_MGNT static
 pwsignal ldp
  vsi-id 200
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
 mtu 1600
 encapsulation ethernet
#
vsi VSI_3147_BGP1CYBE_PROV_IDENTITY static
 pwsignal ldp
  vsi-id 3147
  peer 10.244.188.47
 mtu 9000
 encapsulation ethernet
#
vsi VSI_250_CY_POP0-2_POP25_PO_MGNT static
 pwsignal ldp
  vsi-id 250
  peer 10.244.188.125
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3111_POP00_TR_CAM_DGT_TRAMA static
 pwsignal ldp
  vsi-id 3111
  peer 10.244.188.60
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_133_POP0-2_POP13_C_HAV_OLT1 static
 pwsignal ldp
  vsi-id 133
  peer 10.244.188.13
  traffic-statistics enable
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
vsi VSI_213_POP0-2_POP21_PREF_SAPUC static
 pwsignal ldp
  vsi-id 213
  peer 10.244.188.21
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI3121_POP0-2_POP21_PREF_SAPUC static
 pwsignal ldp
  vsi-id 3121
  peer 10.244.188.21
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_965_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 965
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_970_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 970
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_905_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 905
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_906_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 906
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_907_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 907
  peer 10.244.188.21
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_912_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 912
  peer 10.244.188.21
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_913_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 913
  peer 10.244.188.21
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_914_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 914
  peer 10.244.188.21
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_915_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 915
  peer 10.244.188.21
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_916_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 916
  peer 10.244.188.21
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_917_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 917
  peer 10.244.188.21
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_919_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 919
  peer 10.244.188.21
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_920_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 920
  peer 10.244.188.21
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_922_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 922
  peer 10.244.188.21
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_923_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 923
  peer 10.244.188.21
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_924_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 924
  peer 10.244.188.21
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_926_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 926
  peer 10.244.188.21
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_977_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 977
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_972_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 972
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_931_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 931
  peer 10.244.188.21
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_934_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 934
  peer 10.244.188.21
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_936_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 936
  peer 10.244.188.21
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_938_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 938
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_939_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 939
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_940_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 940
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_941_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 941
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_942_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 942
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_945_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 945
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_946_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 946
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_947_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 947
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_948_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 948
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_949_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 949
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_952_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 952
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_953_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 953
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_956_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 956
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_957_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 957
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_958_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 958
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_960_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 960
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_963_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 963
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_966_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 966
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_968_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 968
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_973_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 973
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_982_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 982
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_990_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 990
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3580_POP59_TR_INFRAWEB_PPOE static
 pwsignal ldp
  vsi-id 3580
  peer 10.244.188.59
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3151_POP00_PROV_ARROBANET static
 pwsignal ldp
  vsi-id 3151
  peer 10.244.188.51
 mtu 9000
 encapsulation ethernet
#
vsi VSI_53_POP0-2_POP05_M_RIN_OLT1 static
 pwsignal ldp
  vsi-id 53
  peer 10.244.188.5
 mtu 9000
 encapsulation ethernet
#
vsi VSI_985_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 985
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3964_POP02-11_TR_ALT_CAIX01 static
 pwsignal ldp
  vsi-id 3964
  peer 10.244.188.2
 mtu 9000
 encapsulation ethernet
#
vsi VSI_986_POP21_POP00_TR_PREF_SAP static
 pwsignal ldp
  vsi-id 986
  peer 10.244.188.21
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3905_POP17-00_TR_CIRION_L1 static
 pwsignal ldp
  vsi-id 3905
  peer 10.244.188.17
  traffic-statistics enable
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
vsi VSI_230_POP0-2_POP23_EST_MGNT static
 pwsignal ldp
  vsi-id 230
  peer 10.244.189.15
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_251_CY_POP0-2_POP25_CO_OLT1 static
 pwsignal ldp
  vsi-id 251
  peer 10.244.188.125
 mtu 9000
 encapsulation ethernet
#
vsi VSI_231_POP0-2_POP23_EST_OLT1 static
 pwsignal ldp
  vsi-id 231
  peer 10.244.189.15
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_233_POP0-2_POP23_EST_OLT1 static
 pwsignal ldp
  vsi-id 233
  peer 10.244.189.15
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3168_POP00_PROV_TCTELECOM static
 pwsignal ldp
  vsi-id 3168
  peer 10.244.188.68
 mtu 9000
 encapsulation ethernet
#
explicit-path SW1POP04-00_VIA_POP11_VLAN3203
 next hop 10.244.112.2
 next hop 10.244.110.2
 next hop 10.244.127.2
 next hop 10.244.127.5
 next hop 10.244.111.2
 next hop 10.244.111.5
#
mpls ldp
#
#
mpls ldp remote-peer 10.244.188.1
 remote-ip 10.244.188.1
#
mpls ldp remote-peer 10.244.188.2
 remote-ip 10.244.188.2
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
mpls ldp remote-peer 10.244.188.13
 remote-ip 10.244.188.13
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
mpls ldp remote-peer 10.244.188.20
 remote-ip 10.244.188.20
#
mpls ldp remote-peer 10.244.188.21
 remote-ip 10.244.188.21
#
mpls ldp remote-peer 10.244.188.22
 remote-ip 10.244.188.22
#
mpls ldp remote-peer 10.244.188.27
 remote-ip 10.244.188.27
#
mpls ldp remote-peer 10.244.188.28
 remote-ip 10.244.188.28
#
mpls ldp remote-peer 10.244.188.43
 remote-ip 10.244.188.43
#
mpls ldp remote-peer 10.244.188.47
 remote-ip 10.244.188.47
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
mpls ldp remote-peer 10.244.188.59
 remote-ip 10.244.188.59
#
mpls ldp remote-peer 10.244.188.60
 remote-ip 10.244.188.60
#
mpls ldp remote-peer 10.244.188.62
 remote-ip 10.244.188.62
#
mpls ldp remote-peer 10.244.188.67
 remote-ip 10.244.188.67
#
mpls ldp remote-peer 10.244.188.68
 remote-ip 10.244.188.68
#
mpls ldp remote-peer 10.244.188.99
 remote-ip 10.244.188.99
#
mpls ldp remote-peer 10.244.188.125
 remote-ip 10.244.188.125
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
mpls ldp remote-peer 10.244.189.14
 remote-ip 10.244.189.14
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
mpls ldp remote-peer 10.244.189.67
 remote-ip 10.244.189.67
#
rsa peer-public-key 10.244.110.6
 public-key-code begin
  30820109
    02820100
      E09A5CC1 F761B429 D35C7D9A E4600853 5C186444 3D8D977F 2152D97E 9D512D50
      1059FF35 788CCE1D 45D34E7B 23B2E884 F19E936F 878E2B46 8599B6BE 2A882B1F
      BFC5F8B0 0B4454B2 E6B1B6DE ED926E55 B1D6ACAA CA8AF6F8 0CF8AFED 903F1077
      0D8E49DA A06E1BE7 621911D6 B96FCC7C EA5DB211 AF76367E CFFD906E 8212C753
      02C12382 0FFDB971 6F6D2CBD F57FB52A 9F175874 8A992F72 F5C43101 90209A8E
      388BDD8D 6A261AC0 2827EF28 E3BE372F 574EF7B3 3E5D5F7F DAE0B930 9F2DF2AE
      6760B695 01A30E1C AB83F389 8F47C30F 4E9CB918 E0134F81 8A245401 C4C7CA80
      3464BC48 53330D46 6F5FD1AB E1B69D38 536E9127 D90FF79A 7D4892B6 9D5B2D91
    0203
      010001
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
vlan 4
 description VLAN_4_PTP_CGNAT1_BGP1_CYBER
vlan 11
 description VLAN_11_POP00_ARQU_OLT1_SCHOSSLER
vlan 12
 description VLAN_12_POP0_ARQU_OLT1_SCHOSSLER
vlan 13
 description VLAN_13_POP00_ARQU_OLT1_SCHOSSLER
vlan 16
 description VLAN16_SERVIDORES_IP_PUBLICO
vlan 17
 description VLAN_17_POP00-02_SERVIDORES_IPS_PRIVADOS
vlan 18
 description VALN_18_POP0_SAP_RAD
vlan 19
 description VLAN19_GERENCIA_EQUIPAMENTOS
vlan 21
 description VLAN_21_POP02_POA_OLT1_SCHOSSLER
vlan 23
 description VLAN_23_POP02_TELIUM_OLT1_SCHOSSLER
vlan 30
 description VLAN_30_POP03_M_FOLRES_MGNT
vlan 31
 description VLAN_31_POP03_M_FLORES_OLT1
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
 description VLAN_60_POP06_B_VISTA_MGNT
vlan 61
 description VLAN_61_POP06_B_VISTA_OLT1
vlan 70
 description VLAN_70_POP07_S_TECLA_GERENCIA
vlan 71
 description VLAN_71_POP07_S_TECLA_OLT1
vlan 73
 description VLAN_73_POP07_S_TECLA_OLT1
vlan 80
 description VLAN_80_POP08_FREITAS_MGNT
vlan 81
 description VLAN_81_POP08_FREITAS_OLT1
vlan 83
 description VLAN_83_CYBER_POP08_FREITAS_OLT1
vlan 90
 description VLAN_90_POP09_ITACOLOMI_MGNT
vlan 91
 description VLAN_91_POP09_ITACOLOMI_OLT1
vlan 100
 description VLAN_100_POP10_PQ_EUCALIPTOS_MGNT
vlan 101
 description VLAN_101_POP10_P_EUCALIPTOS_OLT1
vlan 110
 description VLAN_110_POP11_COND_VIVAZ_MGNT
vlan 111
 description VLAN_111_POP11_COND_VIVAZ_OLT1
vlan 113
 description VLAN_113_POP11_COND_VIVAZ_OLT1
vlan 120
 description vlan120_POP12_BETANIA_GERENCIA
vlan 121
 description VLAN_121_POP12_BETANIA_OLT1
vlan 130
 description VLAN_130_POP13_C_HAVANA_MGNT
vlan 131
 description VLAN_131_POP13_C_HAVANA_OLT1
vlan 133
 description VLAN_133_POP13_C_HAVANA_OLT1
vlan 140
 description VLAN_140_POP14_LOMBA_GRANDE
vlan 141
 description VLAN_141_POP14_LOMBA_GRANDE
vlan 150
 description VLAN_150_POP15_EXPOINTER_GERENCIA
vlan 151
 description VLAN_151_POP15_EXPOINTER_OLT1
vlan 160
 description VLAN_160_POP16_CASTELINHO_MGNT
vlan 161
 description VLAN_161_POP16_CASTELINHO_OLT1
vlan 169
 description VLAN_169_POP16_CASTELINHO_RADIO
vlan 171
 description VLAN_171_POP17_ELEA_PPPOE_SCHOSSLER
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
vlan 200
 description VLAN_200_POP20_S_JOAO_OLT1_GERENCIA
vlan 201
 description VLAN_201_POP20_S_JOAO_OLT1_SCHOSSLER
vlan 203
 description VLAN_203_POP20_S_JOAO_OLT1_CYBER
vlan 211
 description VLAN_211_POP21_PREF_SAPUCAIA
vlan 213
 description VLAN_213_POP21_PREF_SAPUCAIA
vlan 220
 description VLAN_220_POP22_PIRATINI
vlan 230
 description VLAN_230_POP23_EST_GERENCIA
vlan 231
 description VLAN_231_POP23_ESTEIO_OLT1
vlan 233
 description VLAN_233_POP23_ESTEIO_OLT1
vlan 250
 description VLAN_250_POP25_GERENCIA
vlan 251
 description VLAN_250_POP25_OLT1
vlan 253
 description VLAN_253_POP25_OLT1_CYBERWEB
vlan 258
 description VLAN_258_POP25_OLT1_SCHOSSLER
vlan 271
 description VLAN_271_POP27_CIVIL_OLT1
vlan 273
 description VLAN_273_POP27_CIVIL_OLT1
vlan 281
 description VLAN_281_POP28_V_RICA_OLT1
vlan 283
 description VLAN_283_POP28_V_RICA_OLT1
vlan 905
 description VLAN_905_TRANS_PREF_SAPUCAIA
vlan 906
 description VLAN_906_TRANS_PREF_SAPUCAIA
vlan 907
 description VLAN_907_TRANS_PREF_SAPUCAIA
vlan 912
 description VLAN_912_TRANS_PREF_SAPUCAIA
vlan 913
 description VLAN_913_TRANS_PREF_SAPUCAIA
vlan 914
 description VLAN_914_TRANS_PREF_SAPUCAIA
vlan 915
 description VLAN_915_TRANS_PREF_SAPUCAIA
vlan 916
 description VLAN_916_TRANS_PREF_SAPUCAIA
vlan 917
 description VLAN_917_TRANS_PREF_SAPUCAIA
vlan 919
 description VLAN_919_TRANS_PREF_SAPUCAIA
vlan 920
 description VLAN_920_TRANS_PREF_SAPUCAIA
vlan 922
 description VLAN_922_TRANS_PREF_SAPUCAIA
vlan 923
 description VLAN_923_TRANS_PREF_SAPUCAIA
vlan 924
 description VLAN_924_TRANS_PREF_SAPUCAIA
vlan 926
 description VLAN_926_TRANS_PREF_SAPUCAIA
vlan 931
 description VLAN_931_TRANS_PREF_SAPUCAIA
vlan 934
 description VLAN_934_TRANS_PREF_SAPUCAIA
vlan 936
 description VLAN_936_TRANS_PREF_SAPUCAIA
vlan 938
 description VLAN_938_TRANS_PREF_SAPUCAIA
vlan 939
 description VLAN_939_TRANS_PREF_SAPUCAIA
vlan 940
 description VLAN_940_TRANS_PREF_SAPUCAIA
vlan 941
 description VLAN_941_TRANS_PREF_SAPUCAIA
vlan 942
 description VLAN_942_TRANS_PREF_SAPUCAIA
vlan 945
 description VLAN_945_TRANS_PREF_SAPUCAIA
vlan 946
 description VLAN_946_TRANS_PREF_SAPUCAIA
vlan 947
 description VLAN_947_TRANS_PREF_SAPUCAIA
vlan 948
 description VLAN_948_TRANS_PREF_SAPUCAIA
vlan 949
 description VLAN_949_TRANS_PREF_SAPUCAIA
vlan 952
 description VLAN_952_TRANS_PREF_SAPUCAIA
vlan 953
 description VLAN_953_TRANS_PREF_SAPUCAIA
vlan 956
 description VLAN_956_TRANS_PREF_SAPUCAIA
vlan 957
 description VLAN_957_TRANS_PREF_SAPUCAIA
vlan 958
 description VLAN_958_TRANS_PREF_SAPUCAIA
vlan 959
 description VLAN_959_TRANSP_VERO
vlan 960
 description VLAN_960_TRANS_PREF_SAPUCAIA
vlan 963
 description VLAN_963_TRANS_PREF_SAPUCAIA
vlan 965
 description VLAN_965_TRANS_PREF_SAPUCAIA
vlan 966
 description VLAN_966_TRANS_PREF_SAPUCAIA
vlan 968
 description VLAN_968_TRANS_PREF_SAPUCAIA
vlan 970
 description VLAN_970_TRANS_PREF_SAPUCAIA
vlan 971
 description VLAN_971_TRANS_PREF_SAPUCAIA
vlan 972
 description VLAN_972_TRANS_PREF_SAPUCAIA
vlan 973
 description VLAN_973_TRANS_PREF_SAPUCAIA
vlan 974
 description VLAN_974_TRANSP_VERO
vlan 977
 description VLAN_977_TRANS_PREF_SAPUCAIA
vlan 982
 description VLAN_982_TRANS_PREF_SAPUCAIA
vlan 985
 description VLAN_985_TRANSP_VERO
vlan 986
 description VLAN_986_TRANS_PREF_SAPUCAIA
vlan 990
 description VLAN_990_TRANS_PREF_SAPUCAIA
vlan 1001
 description VLAN_1001_BGP1_CYBER_CE01
vlan 1003
 description VLAN1003_BGP1_CYBER_CE03_CYBER
vlan 1100
 description VLAN1100_SW1POP0_SW1POP0_MPLS1
vlan 1108
 description VLAN1108_SW1POP00_SW1POP08_MPLS1
vlan 1111
 description VLAN_1111_CGNAT1_CE01_OSPF
vlan 1112
 description VLAN1112_SW1POP00_SW1POP12_MPLS1
vlan 1121
 description VLAN_1121_SW1POP00_SW1POP21_MPLS1
vlan 1125
 description VLAN_1125_SW1POP00_SW1POP25_MPLS1
vlan 1138
 description VLAN_1138_VERO_CDN
vlan 1144
 description VLAN_1144_SW1POP00_SW1POP44_MPLS1
vlan 1152
 description VLAN_1152_SW1POP00_SW1POP52_OSPF1
vlan 1164
 description VLAN_1164_LINK1_IPV4_VERO
vlan 1166
 description VLAN_1166_SW1POP0_SW1POP66_OSPF
vlan 1195
 description VLAN1195_SW1PO11_SW1PO95_DGTSSP
vlan 1264
 description VLAN_1164_LINK1_IPV6_VERO
vlan 1295
 description VLAN1295_SW1PO11_SW1PO95_DGTSSP
vlan 1395
 description VLAN1395_SW1PO11_SW1PO95_DGTSSP
vlan 1914
 description VLAN_1914_SEABORN_L1_BGP1_ASN273461
vlan 2311
 description VLAN2311_TRANSP_VERO_POP14_L_GRANDE
vlan 2340
 description VLAN2340_INFRAWEB_GERENCIA
vlan 2341
 description VLAN2341_INFRAWEB_PPPOE
vlan 2733
 description VLAN_2733_SW1POP04_SW1POP00_MPLS1_TR_RNV
vlan 3000
 description VLAN_3000_BGP1_CYBER_BGP1_SCHOSSLER
vlan 3005
 description VLAN_3005_TRANSP_TELIUM_S_CASA
vlan 3101
 description VLAN_3101_TRANP_CAMERAS_BRIGADA
vlan 3102
 description VLAN_3102_TRANP_CAMERAS_BRIGADA
vlan 3105
 description VLAN_3105_TRANSPORTE_SSP_POA
vlan 3106
 description VLAN_3106_TRANSPORTE_SSP_POA
vlan 3107
 description VLAN_3107_TRANSP_POA_MAIS_SEG
vlan 3108
 description VLAN_3108_TRANSP_POA_MAIS_SEG
vlan 3111
 description VLAN_3111_TR_CAMERAS_SSP_TRAMANDAI
vlan 3114
 description VLAN_3114_CYBER_BGP1_CE14_LOMBA_L1
vlan 3119
 description VLAN_3119_TRANSP_PROVEDOR_NEGETTI
vlan 3120
 description VLAN_3120_BGP1_NE40_CE20_OSPF
vlan 3121
 description VLAN_3121_BGP1_INTERNET_PREF_SAPUCAIA
vlan 3143
 description VLAN_3143_CYBER_BGP1_PROV_VENTO_SUL
vlan 3147
 description VLAN_3147_BGP1CYBER_PROV_IDENTITY_L1
vlan 3149
 description VLAN_3149_CYBER_BGP1_PROV_GEHLING_E_MULLING
vlan 3150
 description VLAN_3150_CYBER_BGP1_VPM_MAIOLI_L1
vlan 3151
 description VLAN_3151_CYBER_BGP1__ARROBANET_BGP1
vlan 3152
 description VLAN3152_BGP1_CYBER_BGP1_BLUSTELECOM
vlan 3153
 description VLAN_3153_CYBER_BGP1_LM_CIVIL_L1
vlan 3154
 description VLAN_3154_CYBER_BGP1_LM_V_RICA_L1
vlan 3155
 description VLAN_3155_CYBER_BGP1_LM_V_MARES_L1
vlan 3160
 description VLAN_3160_CYBER_BGP1_PROV_NIC_L1
vlan 3162
 description VLAN_3162_BGP1_POP62_EQUATORIAL
vlan 3163
 description VLAN3163_BGP1_CE63_VILLELA
vlan 3166
 description VLAN_3166_CYBER_BGP1_WIANETSUL_L1
vlan 3167
 description VLAN_3167_CYBER_BGP1_LUCFIBRA_L1
vlan 3168
 description VLAN_3168_CYBER_BGP1_TCTELECOM
vlan 3203
 description VLAN_3203_TRANSP_IXRS_BLUS
vlan 3207
 description VLAN_3207_TR_CY_IX_RS_AS273461_CYBER
vlan 3208
 description VLAN_3208_PNI_GGC_ASN273461
vlan 3252
 description VLAN3252_BGP2_SCHOSSLER_BGP1_BLUSTELECOM
vlan 3256
 description VLAN_3256_PPPOE_CLIENTES_TELIUM
vlan 3261
 description VLAN_3261_BGP1_CYBER_BGP2_SCHOSSLER_PROV_VALESAT
vlan 3266
 description VLAN_3266_CYBER_BGP2_WIANETSUL_L2
vlan 3341
 description VLAN_3341_TRANSPORTE_EQUATORIAL_SUBSTACAO
vlan 3511
 description VLAN_3511_TR_FENIX_CYBER_R_NEUTRA
vlan 3532
 description VLAN_3532_TRANSP_CAM_CAMAQUA
vlan 3533
 description VLAN_3533_TRANSP_CAM_CAMAQUA
vlan 3540
 description VLAN_3540_CLIENTES_MEDIANET_REDE_CYBER
vlan 3541
 description VLAN_3541_CLIENTES_MEDIANET_REDE_CYBER
vlan 3550
 description VLAN_3550_TRANSP_R_NEUTRA_LM
vlan 3560
 description VLAN_3560_POWERNET_R_NEUTRA
vlan 3571
 description VLAN_3571_CLI_CYBER_REDE_LP_SANDRO
vlan 3580
 description VLAN_3580_CLIENTES_INFRAWEB_REDE_CYBER
vlan 3581
 description VLAN3581_RN_CYBER_NA_INFRAWEB
vlan 3592
 description VLAN_3592_ALT_ADVANTA
vlan 3602
 description VLAN_3602_TR_ADYL_POP14_ADVANTA
vlan 3790
 description VLAN_3790_BGP1_CYBER_IX_SP_IPV4
vlan 3791
 description VLAN_3791_BGP1_CYBER_IX_SP_IPV6
vlan 3902
 description VLAN_3902_EQUINIX_CYBER_BGP1
vlan 3904
 description VLAN3904_SW1POP01_SW1POP00_PNI_META
vlan 3905
 description VLAN_3905_TR_POP17_POP00_CIRION_LINK1
vlan 3906
 description VLAN3906_SW1POP01_SW1POP00_PNI_META
vlan 3964
 description VLAN_3964_TRANSP_ALT_CAIXA_ADVANTA
vlan 4000
 description VLAN_4000_PTP_BGP1_CYBER_BGP2_SCHOSSLER
vlan 4001
 description VLAN_4001_BGP1CYBER_CGNAT1_SCHOSSLER
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
 local-user admin password irreversible-cipher $1c$q6&9:g>RA-$|\C)9;1bq4^uT098E$vO)BE[PjFpQ$DZWU=%(;o>$
 local-user admin privilege level 15
 local-user admin service-type ssh http
 local-user future password irreversible-cipher $1c$Y5}lDwN=E:$!DRV>(;)M~pr*6ESw7~@vzIg4OQmiWIP|2TP!*u6$
 local-user future privilege level 15
 local-user future service-type ssh
 local-user zandona password irreversible-cipher $1c$Ln|t*R>'-8$p/SsDlFwfE)KQH>Q$5VR-F7/00i=:(QGD&CU(dhR$
 local-user zandona privilege level 15
 local-user zandona service-type telnet ssh http
#
ntp-service server disable
ntp-service ipv6 server disable
ntp-service unicast-server 200.189.40.8
ntp-service unicast-server 200.160.0.8
#
interface Vlanif2
 description VLAN_2_GERENCIA
 ip address 10.244.0.98 255.255.255.252
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
 description VLAN_13_POP00_ARQU_OLT1_CYBER
 l2 binding vsi VSI_13_CY_POP00_POP02_SAP_OLT1
#
interface Vlanif16
 description VLAN16_SERVIDORES_IP_PUBLICO
 l2 binding vsi VSI_16_SERVIDORES_IP_PUBLICOS
#
interface Vlanif17
 description VLAN_17_POP00-02_SERVIDORES_IPS_PRIVADOS
 l2 binding vsi VSI_17_CY_POP00-02_SRV_IPS_PRIV
#
interface Vlanif18
 description VALN_18_POP0_SAP_RAD
 l2 binding vsi VSI_18_CY_POP00_POP02_SAP_RADI
#
interface Vlanif21
 description VLAN_21_POP02_POA_OLT1_SCHOSSLER
 l2 binding vsi VSI_21_CY_POP00_POP02_POA_OLT1
#
interface Vlanif23
 description VLAN_23_POP02_TELIUM_OLT1_SCHOSSLER
 l2 binding vsi VSI_23_CY_POP00_POP02_POA_OLT1
#
interface Vlanif30
 description VLAN_30_POP03_M_FOLRES_MGNT
 l2 binding vsi VSI_30_CY_POP0-2_POP03_M_F_MGNT
#
interface Vlanif31
 description VLAN_31_POP03_M_FLORES_OLT1
 l2 binding vsi VSI_31_CY_POP0-2_POP03_M_F_OLT1
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
 l2 binding vsi VSI_41_CY_POP0-2_POP04_HIP_OLT1
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
 description VLAN_60_POP06_B_VISTA_MGNT
 l2 binding vsi VSI_60_CY_POP0-2_POP06_B_V_MGNT
#
interface Vlanif61
 description VLAN_61_POP06_B_VISTA_OLT1
 l2 binding vsi VSI_61_CY_POP0-2_POP06_B_V_OLT1
#
interface Vlanif70
 description VLAN_70_POP07_S_TECLA_GERENCIA
 l2 binding vsi VSI_70_CY_POP0-2_POP07_STE_MGNT
#
interface Vlanif71
 description VLAN_71_POP07_S_TECLA_OLT1
 l2 binding vsi VSI_71_CY_POP0-2_POP07_STE_OLT1
#
interface Vlanif73
 description VLAN_73_POP07_S_TECLA_OLT1
 l2 binding vsi VSI_73_CY_POP0-2_POP07_STE_OLT1
#
interface Vlanif80
 description VLAN_80_POP08_FREITAS_MGNT
 l2 binding vsi VSI_80_CY_POP0-2_POP08_FRE_MGNT
#
interface Vlanif81
 description VLAN_81_POP08_FREITAS_OLT1
 l2 binding vsi VSI_81_POP0-2_POP08_FREITA_OLT1
#
interface Vlanif83
 description VLAN_83_CYBER_POP08_FREITAS_OLT1
 l2 binding vsi VSI_83_CY_POP0-2_POP08_FRE_OLT1
#
interface Vlanif90
 description VLAN_90_POP09_ITACOLOMI_MGNT
 l2 binding vsi VSI_90_CY_POP0-2_POP09_ITA_MGNT
#
interface Vlanif91
 description VLAN_91_POP09_ITACOLOMI_OLT1
 l2 binding vsi VSI_91_CY_POP0-2_POP09_ITA_OLT1
#
interface Vlanif100
 description VLAN_100_POP10_PQ_EUCALIPTOS_MGNT
 l2 binding vsi VSI_100_CY_POP0-2_POP10_PQ_MGNT
#
interface Vlanif101
 description VLAN_101_POP10_P_EUCALIPTOS_OLT1
 l2 binding vsi VSI_101_CY_POP0-2_POP10_PQ_OLT1
#
interface Vlanif110
 description VLAN_110_POP11_COND_VIVAZ_MGNT
 l2 binding vsi VSI_110_POP00_02_POP11_VI_MGNT
#
interface Vlanif111
 description VLAN_111_POP11_COND_VIVAZ_OLT1
 l2 binding vsi VSI_111_POP00_02_POP11_VI_OLT1
#
interface Vlanif113
 description VLAN_113_POP11_COND_VIVAZ_OLT1
 l2 binding vsi VSI_113_POP00_02_POP11_VI_OLT1
#
interface Vlanif120
 description vlan120_POP12_BETANIA_GERENCIA
 l2 binding vsi VSI_120_CY_POP0-2_POP12_BE_MGNT
#
interface Vlanif121
 description VLAN_121_POP12_BETANIA_OLT1
 l2 binding vsi VSI_121_CY_POP0-2_POP12_BE_OLT1
#
interface Vlanif130
 description VLAN_130_POP13_C_HAVANA_MGNT
 l2 binding vsi VSI_130_POP0-2_POP13_C_HA_MGNT
#
interface Vlanif131
 description VLAN_131_POP13_C_HAVANA_OLT1
 l2 binding vsi VSI_131_POP0-2_POP13_C_HAV_OLT1
#
interface Vlanif133
 description VLAN_133_POP13_C_HAVANA_OLT1
 l2 binding vsi VSI_133_POP0-2_POP13_C_HAV_OLT1
#
interface Vlanif140
 description VLAN_140_POP14_OLT1
 l2 binding vsi VSI_140_POP0-2_POP14_LGRAN_OLT1
#
interface Vlanif141
 description VLAN_141_POP14_LOMBA_GRANDE
 l2 binding vsi VSI_141_POP0-2_POP14_LGRAN_OLT1
#
interface Vlanif150
 description VLAN_150_POP15_EXPOINTER_GERENCIA
 l2 binding vsi VSI_150_CY_POP00_POP15_EXP_MGNT
#
interface Vlanif151
 description VLAN_151_POP15_EXPOINTER_OLT1
 l2 binding vsi VSI_151_CY_POP0-2_POP15_EX_OLT1
#
interface Vlanif160
 description VLAN_160_POP16_CASTELINHO_MGNT
 l2 binding vsi VSI_160_CY_POP0-2_POP16_CA_MGNT
#
interface Vlanif161
 description VLAN_161_POP16_CASTELINHO_OLT1
 l2 binding vsi VSI_161_CY_POP0-2_POP16_CA_OLT1
#
interface Vlanif169
 description VLAN_169_POP16_CASTELINHO_RADIO
 l2 binding vsi VSI_169_CY_POP0-2_POP16_CA_RADI
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
 description VLAN_181_POP18_SSPRS_PPPOE
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
interface Vlanif200
 description VLAN_200_POP20_S_JOAO_OLT1_GERENCIA
 l2 binding vsi VSI_200_SC_POP0-2_POP20_SJ_MGNT
#
interface Vlanif201
 description VLAN_201_POP20_S_JOAO_OLT1_SCHOSSLER
 l2 binding vsi VSI_201_SC_POP0-2_POP20_SJ_OLT1
#
interface Vlanif203
 description VLAN_203_POP20_S_JOAO_OLT1_SCHOSSLER
 l2 binding vsi VSI_203_SC_POP0-2_POP20_SJ_OLT1
#
interface Vlanif213
 description VLAN_213_POP21_PREF_SAPUCAIA
 l2 binding vsi VSI_213_POP0-2_POP21_PREF_SAPUC
#
interface Vlanif230
 description VLAN_230_POP23_ESTEIO_GERENCIA
 l2 binding vsi VSI_230_POP0-2_POP23_EST_MGNT
#
interface Vlanif231
 description VLAN_231_POP23_ESTEIO_OLT1
 l2 binding vsi VSI_231_POP0-2_POP23_EST_OLT1
#
interface Vlanif233
 description VLAN_233_POP23_ESTEIO_OLT1
 l2 binding vsi VSI_233_POP0-2_POP23_EST_OLT1
#
interface Vlanif250
 description VLAN_250_POP25_GERENCIA
 l2 binding vsi VSI_250_CY_POP0-2_POP25_PO_MGNT
#
interface Vlanif251
 description VLAN_250_POP25_OLT1
 l2 binding vsi VSI_251_CY_POP0-2_POP25_CO_OLT1
#
interface Vlanif253
 description VLAN_253_POP25_OLT1_CYBERWEB
 l2 binding vsi VSI_253_CY_POP0-2_POP25_PO_OLT1
#
interface Vlanif258
 description VLAN_258_POP25_OLT1_SCHOSSLER
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
interface Vlanif905
 description VLAN_905_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_905_POP21_POP00_TR_PREF_SAP
 statistic enable both
#
interface Vlanif906
 description VLAN_906_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_906_POP21_POP00_TR_PREF_SAP
#
interface Vlanif907
 description VLAN_907_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_907_POP21_POP00_TR_PREF_SAP
#
interface Vlanif912
 description VLAN_912_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_912_POP21_POP00_TR_PREF_SAP
#
interface Vlanif913
 description VLAN_913_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_913_POP21_POP00_TR_PREF_SAP
#
interface Vlanif914
 description VLAN_914_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_914_POP21_POP00_TR_PREF_SAP
#
interface Vlanif915
 description VLAN_915_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_915_POP21_POP00_TR_PREF_SAP
#
interface Vlanif916
 description VLAN_916_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_916_POP21_POP00_TR_PREF_SAP
#
interface Vlanif917
 description VLAN_917_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_917_POP21_POP00_TR_PREF_SAP
#
interface Vlanif919
 description VLAN_919_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_919_POP21_POP00_TR_PREF_SAP
#
interface Vlanif920
 description VLAN_920_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_920_POP21_POP00_TR_PREF_SAP
#
interface Vlanif922
 description VLAN_922_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_922_POP21_POP00_TR_PREF_SAP
#
interface Vlanif923
 description VLAN_923_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_923_POP21_POP00_TR_PREF_SAP
#
interface Vlanif924
 description VLAN_924_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_924_POP21_POP00_TR_PREF_SAP
#
interface Vlanif926
 description VLAN_926_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_926_POP21_POP00_TR_PREF_SAP
#
interface Vlanif931
 description VLAN_931_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_931_POP21_POP00_TR_PREF_SAP
#
interface Vlanif934
 description VLAN_934_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_934_POP21_POP00_TR_PREF_SAP
#
interface Vlanif936
 description VLAN_936_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_936_POP21_POP00_TR_PREF_SAP
#
interface Vlanif938
 description VLAN_938_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_938_POP21_POP00_TR_PREF_SAP
#
interface Vlanif939
 description VLAN_939_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_939_POP21_POP00_TR_PREF_SAP
#
interface Vlanif940
 description VLAN_940_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_940_POP21_POP00_TR_PREF_SAP
#
interface Vlanif941
 description VLAN_941_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_941_POP21_POP00_TR_PREF_SAP
#
interface Vlanif942
 description VLAN_942_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_942_POP21_POP00_TR_PREF_SAP
#
interface Vlanif945
 description VLAN_945_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_945_POP21_POP00_TR_PREF_SAP
#
interface Vlanif946
 description VLAN_946_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_946_POP21_POP00_TR_PREF_SAP
#
interface Vlanif947
 description VLAN_947_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_947_POP21_POP00_TR_PREF_SAP
#
interface Vlanif948
 description VLAN_948_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_948_POP21_POP00_TR_PREF_SAP
#
interface Vlanif949
 description VLAN_949_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_949_POP21_POP00_TR_PREF_SAP
#
interface Vlanif952
 description VLAN_952_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_952_POP21_POP00_TR_PREF_SAP
#
interface Vlanif953
 description VLAN_953_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_953_POP21_POP00_TR_PREF_SAP
#
interface Vlanif956
 description VLAN_956_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_956_POP21_POP00_TR_PREF_SAP
#
interface Vlanif957
 description VLAN_957_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_957_POP21_POP00_TR_PREF_SAP
#
interface Vlanif958
 description VLAN_958_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_958_POP21_POP00_TR_PREF_SAP
#
interface Vlanif959
 description VLAN_959_TRANSP_VERO
 l2 binding vsi VSI_959_POP00_POP08_TRANSP_VERO
#
interface Vlanif960
 description VLAN_960_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_960_POP21_POP00_TR_PREF_SAP
#
interface Vlanif963
 description VLAN_963_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_963_POP21_POP00_TR_PREF_SAP
#
interface Vlanif965
 description VLAN_965_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_965_POP21_POP00_TR_PREF_SAP
#
interface Vlanif966
 description VLAN_966_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_966_POP21_POP00_TR_PREF_SAP
#
interface Vlanif968
 description VLAN_968_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_968_POP21_POP00_TR_PREF_SAP
#
interface Vlanif970
 description VLAN_970_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_970_POP21_POP00_TR_PREF_SAP
#
interface Vlanif971
 description VLAN_971_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_971_POP21_POP00_TR_PREF_SAP
#
interface Vlanif972
 description VLAN_972_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_972_POP21_POP00_TR_PREF_SAP
#
interface Vlanif973
 description VLAN_973_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_973_POP21_POP00_TR_PREF_SAP
#
interface Vlanif977
 description VLAN_977_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_977_POP21_POP00_TR_PREF_SAP
 statistic enable both
#
interface Vlanif982
 description VLAN_982_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_982_POP21_POP00_TR_PREF_SAP
#
interface Vlanif985
 description VLAN_985_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_985_POP21_POP00_TR_PREF_SAP
#
interface Vlanif986
 description VLAN_986_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_986_POP21_POP00_TR_PREF_SAP
#
interface Vlanif990
 description VLAN_990_TRANS_PREF_SAPUCAIA
 l2 binding vsi VSI_990_POP21_POP00_TR_PREF_SAP
#
interface Vlanif1003
 description VLAN1003_BGP1_CYBER_CE03_CYBER
 l2 binding vsi VSI_1003_BGP1_CYBER_CE03_CYBER
#
interface Vlanif1100
 description VLAN1100_SW1POP0_SW1POP0_MPLS1
 shutdown
 ip address 10.244.100.2 255.255.255.252
 ospf cost 1
 ospf network-type p2p
 mpls
 mpls ldp
#
interface Vlanif1108
 description VLAN1108_SW1POP00_SW1POP08_MPLS1
 mtu 9216
 ip address 10.244.108.1 255.255.255.252
 ospf cost 10
 ospf network-type p2p
 mpls
 mpls ldp
#
interface Vlanif1112
 description VLAN1112_SW1POP0_SW1POP12_MPLS1
 mtu 9216
 ip address 10.244.112.1 255.255.255.252
 ospf cost 1
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif1121
 description VLAN_1121_SW1POP00_SW1POP21_MPLS1
 mtu 9216
 ip address 10.244.121.1 255.255.255.252
 ospf cost 10
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif1125
 description VLAN_1125_SW1POP00_SW1POP25_MPLS1
 shutdown
 ip address 10.244.125.1 255.255.255.252
 ospf cost 1
 ospf network-type p2p
 mpls
 mpls ldp
#
interface Vlanif1144
 description VLAN1144_SW1POP00_SW1POP44_MPLS
 mtu 9216
 ip address 10.244.144.1 255.255.255.252
 ospf cost 1
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif1152
 description VLAN_1152_SW1POP00_SW1POP52_OSPF1
 mtu 9216
 ip address 10.244.152.1 255.255.255.252
 ospf cost 1
 ospf network-type p2p
#
interface Vlanif1166
 description VLAN_1166_SW1POP0_SW1POP66_OSPF
 mtu 9216
 ip address 10.244.166.1 255.255.255.252
 ospf cost 1
 ospf network-type p2p
#
interface Vlanif1195
 description VLAN1195_SW1PO11_SW1PO95_DGTSSP
 ip address 10.244.195.1 255.255.255.252
 ospf cost 100
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif1295
 description VLAN1295_SW1PO02_SW1PO95_DGTSSP
 ip address 10.244.195.5 255.255.255.252
 ospf cost 120
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
interface Vlanif1914
 description VLAN_1914_SEABORN_L1_BGP1_ASN273461
 l2 binding vsi VSI_1914_SEABORN_L1_ASN273461
#
interface Vlanif2311
 description VLAN2311_SW1POP00_SW1POP14_TRVERO
 mtu 9216
 ip address 10.244.114.5 255.255.255.252
 ospf cost 120
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif2733
 description VLAN_2733_SW1POP04_SW1POP00_MPLS1_TR_RNV
 mtu 9216
 ip address 10.244.100.9 255.255.255.252
 ospf cost 10
 ospf network-type p2p
 mpls
 mpls ldp
#
interface Vlanif3000
 description VLAN_3000_BGP1_CYBER_BGP1_SCHOSSLER
 l2 binding vsi VSI_3000_CYB_POP00-20_BGP1_BGP1
#
interface Vlanif3005
 description VLAN_3005_TRANSP_TELIUM_STA_CASA
 l2 binding vsi VSI_3005_TRANSP_TELIU_STA_CASA
#
interface Vlanif3101
 description VLAN_3101_TRANP_CAMERAS_BRIGADA
 l2 binding vsi VSI_3101_POP00_TRANS_CAM_SAPUCA
#
interface Vlanif3102
 description VLAN_3102_TRANP_CAMERAS_BRIGADA
 l2 binding vsi VSI_3102_POP00_TRANS_CAM_SAPUCA
#
interface Vlanif3105
 description VLAN_3105_TRANSPORTE_SSP_POA
 l2 binding vsi VSI_3105_POP00_POP02_TR_CAM_SSP
#
interface Vlanif3106
 description VLAN_3106_TRANSPORTE_SSP_POA
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
interface Vlanif3111
 description VLAN_3111_TR_CAMERAS_SSP_TRAMANDAI
 l2 binding vsi VSI_3111_POP00_TR_CAM_DGT_TRAMA
#
interface Vlanif3114
 description VLAN_3114_CYBER_BGP1_CE14_LOMBA_L1
 l2 binding vsi VSI3114_POP00_POP14_LOMBA_BGP1
#
interface Vlanif3119
 description VLAN_3119_TRANSP_PROVEDOR_NEGETTI
 l2 binding vsi VSI3119_POP00_TRAN_PROV_NEGETTI
#
interface Vlanif3120
 description VLAN_3120_BGP1_NE40_CE20_OSPF
 l2 binding vsi VSI_3120_POP00_POP20_BGP1_CE20
#
interface Vlanif3121
 description VLAN_3121_BGP1_INTERNET_PREF_SAPUCAIA
 l2 binding vsi VSI3121_POP0-2_POP21_PREF_SAPUC
#
interface Vlanif3143
 description VLAN_3143_CYBER_BGP1_PROV_VENTO_SUL
 l2 binding vsi VSI_3143_CY_POP00_PROV_AS52917
#
interface Vlanif3147
 description VLAN_3147_BGP1CYBER_PROV_IDENTITY_L1
 l2 binding vsi VSI_3147_BGP1CYBE_PROV_IDENTITY
#
interface Vlanif3149
 description VLAN_3149_CYBER_BGP1_PROV_GEHLING_E_MULLING
 l2 binding vsi VSI_3149_CY_POP00_PROV_AS270998
#
interface Vlanif3150
 description VLAN_3150_CYBER_BGP1_VPM_MAIOLI_L1
 l2 binding vsi VSI_3150_POP00_PROV_VPM_MAIOLI
#
interface Vlanif3151
 description VLAN_3151_CYBER_BGP1__ARROBANET_BGP1
 l2 binding vsi VSI_3151_POP00_PROV_ARROBANET
#
interface Vlanif3153
 description VLAN_3153_CYBER_BGP1_LM_CIVIL_L1
 l2 binding vsi VSI_3153_CY_POP00_PROV_LM_CIVIL
#
interface Vlanif3154
 description VLAN_3155_CYBER_BGP1_LM_V_MARES_L1
 l2 binding vsi VSI_3154_CY_POP00_PROV_LM_V_RIC
#
interface Vlanif3155
 description VLAN_3155_CYBER_BGP1_LM_V_MARES_L1
 l2 binding vsi VSI_3155_CY_POP00_PROV_LM_V_MAR
#
interface Vlanif3160
 description VLAN_3160_CYBER_BGP1_PROV_NIC_L1
 l2 binding vsi VSI_3160_CY_POP00_PROV_NIC_TELE
#
interface Vlanif3162
 description VLAN_3162_BGP1_POP62_EQUATORIAL
 l2 binding vsi VSI_3162_POP00_PROV_EQUATORIAL
#
interface Vlanif3163
 description VLAN3163_BGP1_CE63_VILLELA
 l2 binding vsi VSI_3163_POP00-02_POP63_VILLELA
#
interface Vlanif3167
 description VLAN_3167_CYBER_BGP1_LUCFIBRA_L1
 l2 binding vsi VSI_3167_POP00_PROV_LUCFIBRA_L1
#
interface Vlanif3168
 description VLAN_3168_CYBER_BGP1_TCTELECOM
 l2 binding vsi VSI_3168_POP00_PROV_TCTELECOM
#
interface Vlanif3203
 description VLAN_3203_TRANSP_IXRS_BLUS
 l2 binding vsi VSI_3203_POP04_POP00_IXRS_BLUS
#
interface Vlanif3207
 description VLAN_3207_TR_CY_IX_RS_AS273461_CYBER
 l2 binding vsi VSI_3207_POP00_POP04_IXRS_CYBER
#
interface Vlanif3208
 description VLAN_3208_PNI_GGC_ASN273461
 l2 binding vsi VSI_3208_PNI_GGC_ASN273461
#
interface Vlanif3252
 description VLAN3252_BGP2_POP52_BLUSTELECOM
 l2 binding vsi VSI_3252_POP00-02_PROV_BLUSTELE
#
interface Vlanif3256
 description VLAN_3256_PPPOE_CLIENTES_TELIUM
 l2 binding vsi VSI_3256_TRANSP_TELIU_DEDICADOS
#
interface Vlanif3261
 description VLAN_3261_BGP1_CYBER_BGP2_SCHOSSLER_PROV_VALESAT
 l2 binding vsi VSI_3261_POP00-02_PROV_VALESAT
#
interface Vlanif3266
 description VLAN_3266_CYBER_BGP2_WIANETSUL_L2
 l2 binding vsi VSI_3266_POP00-02_PROV_WIANETSU
#
interface Vlanif3341
 description VLAN_3341_TRANSPORTE_EQUATORIAL_SUBSTACAO
 l2 binding vsi VSI_3341_POP62_TR_EQUAT_SUBSTA
#
interface Vlanif3511
 description VLAN_3511_TR_FENIX_CYBER_R_NEUTRA
 l2 binding vsi VSI3511_POP12_TR_FENIX_CYBER_RN
#
interface Vlanif3532
 description VLAN_3532_TRANSP_CAM_CAMAQUA
 l2 binding vsi VSI_3532_POP00_TRAN_CAM_CAMAQUA
#
interface Vlanif3533
 description VLAN_3533_TRANSP_CAM_CAMAQUA
 l2 binding vsi VSI_3533_POP00_TRAN_CAM_CAMAQUA
#
interface Vlanif3540
 description VLAN_3540_CLIENTES_MEDIANET_REDE_CYBER
 l2 binding vsi VSI_3540_POP00-02_TRAN_MEDIANET
#
interface Vlanif3541
 description VLAN_3541_CLIENTES_MEDIANET_REDE_CYBER
 l2 binding vsi VSI_3541_POP00-02_TRAN_MEDIANET
#
interface Vlanif3560
 description VLAN_3560_POWERNET_R_NEUTRA
 l2 binding vsi VSI_3560_TRANS_PPPOE_POWERNET
#
interface Vlanif3571
 description VLAN_3571_CLI_CYBER_REDE_LP_SANDRO
 l2 binding vsi VSI_3571_POP0-2_RNEUTRA_LP_SAND
#
interface Vlanif3580
 description VLAN_3580_CLIENTES_INFRAWEB_REDE_CYBER
 l2 binding vsi VSI_3580_POP59_TR_INFRAWEB_PPOE
#
interface Vlanif3581
 description VLAN3581_RN_CYBER_NA_INFRAWEB
 l2 binding vsi VSI_3581_RN_CYBER_NA_INFRAWEB
#
interface Vlanif3602
 description VLAN_3602_TR_ADYL_POP14_ADVANTA
 l2 binding vsi VSI_3602_POP0-2_TR_ADYL_ADVANTA
#
interface Vlanif3790
 description VLAN_3790_BGP1_CYBER_IX_SP_IPV4
 l2 binding vsi VSI_3790_BGP1_CYBER_IX_SP_IPV4
#
interface Vlanif3791
 description VLAN_3791_BGP1_CYBER_IX_SP_IPV6
 l2 binding vsi VSI_3791_BGP1_CYBER_IX_SP_IPV6
#
interface Vlanif3902
 description VLAN_3902_EQUINIX_CYBER_BGP1
 l2 binding vsi VSI_3902_EQUIN_POP00_CYBER_BGP1
#
interface Vlanif3904
 description VLAN3904_SW1POP01_SW1POP00_PNI_META
 l2 binding vsi VSI3904_PNI_META_POP00_CYBER
#
interface Vlanif3905
 description VLAN_3905_TR_POP17_POP00_CIRION_LINK1
 l2 binding vsi VSI_3905_POP17-00_TR_CIRION_L1
#
interface Vlanif3906
 description VLAN3906_SW1POP01_SW1POP00_PNI_META
 l2 binding vsi VSI3906_PNI_META_POP00_CYBER
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
 ip address 192.168.1.253 255.255.255.0
#
interface Eth-Trunk1
 description LAG1_BGP1_CYBER_PX08-09__SW1POP00_PX08-09
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 16 3121 3147
 jumboframe enable 12288
#
interface Eth-Trunk5
 description LAG5_BGP1CY_PCX00_PCX01__SW1POP00_PCX01_PCX02
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1001 1003 1138 1164 1166 1914 2311 3000 3114 3120
 port trunk allow-pass vlan 3143 3147 3149 to 3155 3160 3162 to 3163 3166 to 3168 3208 3261 3266 3902
 port trunk allow-pass vlan 3904 to 3906 4000 to 4001
#
interface Eth-Trunk7
 description LAG7_SW1POP00_P12_P13__PSCE01_P12_P13
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 11 to 13 18 21 to 23 31 to 33 39 41 to 43 51 to 53 61 to 63 71 to 73 79
 port trunk allow-pass vlan 81 83 91 to 93 101 103 109 to 111 113 121 123 131
 port trunk allow-pass vlan 133 141 150 to 151 161 to 163 169 171 173 181 191 193 to 194
 port trunk allow-pass vlan 200 to 201 203 211 213 231 233 251 253 258 271
 port trunk allow-pass vlan 273 281 283 1001 1111 3511 3541 3571 3581 3602
 jumboframe enable 12288
#
interface Eth-Trunk52
 description LAG52_SW1POP01_P07_P08__SW1POP52_BLUS_VIAWEB
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1152 1166 3152 3166 3203 3252 3266
 jumboframe enable 8000
#
interface XGigabitEthernet0/0/1
 description PTP_SW1POP00_PX01_OLT1POP01_PX01
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 10 to 13 905 to 907 912 to 917 919 to 920 922 to 924 926 to 928 931 934 936 938 to 942
 port trunk allow-pass vlan 945 to 949 952 to 953 956 to 960 963 965 to 966 968 970 to 974 977 982 985 to 986
 port trunk allow-pass vlan 990 1195 1295 3005 3101 to 3102 3119 3256 3540 3560 3580
 port trunk allow-pass vlan 3964 to 3965
#
interface XGigabitEthernet0/0/2
 description PTP_SW1POP00_PX06_BGP1_CYBER_PX06_BGP1_ISTI
 port link-type dot1q-tunnel
 port default vlan 2311
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/3
 description SWITCHs_BANCADA
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 220
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/4
 description PTP_SW1POP00_PX04_SW1POP08_PX04_FREITAS
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1108
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/5
 description LAG6_PX04-05_IX_RS_AS273461_CYBER
 port link-type dot1q-tunnel
 port default vlan 3207
#
interface XGigabitEthernet0/0/6
 port media type copper
  undo negotiation auto
 shutdown
#
interface XGigabitEthernet0/0/7
 description PTP_SW1POP0_PX07_SW1POP52-66_TRA_VIAWEB
 eth-trunk 52
#
interface XGigabitEthernet0/0/8
 description LAG1_BGP1_AS273461_PX08-09__SW1POP00_PX08-09_IX_SP
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 3790 to 3791
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/9
 description LAG1_BGP1_AS273461_PX08-09__SW1POP00_PX08-09_IX_SP
 eth-trunk 1
#
interface XGigabitEthernet0/0/10
 description PTP_SW1POP00_PX10__NE40_PX10_CE01
 port link-type dot1q-tunnel
 port default vlan 2311
#
interface XGigabitEthernet0/0/11
 shutdown
#
interface XGigabitEthernet0/0/12
 description SW1POP00_P12__NE40PS_CE01_P12
 eth-trunk 7
#
interface XGigabitEthernet0/0/13
 description SW1POP00_P13__NE40PS_CE01_P13
 eth-trunk 7
#
interface XGigabitEthernet0/0/14
 description SW1POP00_PX14_CGNAT1_sfp-sfpplus1
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 3 to 4 13 18 to 19 30 40 50 60 70 80 90
 port trunk allow-pass vlan 100 110 120 130 160 190 194 200 220 250
 port trunk allow-pass vlan 915 to 916 3121 3163 4001 4012
#
interface XGigabitEthernet0/0/15
 description PTP_SW1POP00_PX15_CGNAT1_sfp-sfpplus2
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 2 10 to 13 16 to 17 21 23 31 39 41 51 53
 port trunk allow-pass vlan 61 71 81 83 91 101 111 113 133 140
 port trunk allow-pass vlan 150 to 151 161 171 173 181 193 201 203 230 to 231 233
 port trunk allow-pass vlan 251 271 273 281 283 915 1111 1395 3005 3103
 port trunk allow-pass vlan 3105 3107 3111 3119 3341 3540 to 3541 3571 3581 3592 3964 to 3965
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/16
 description PTP_SW1POP00_PX16_SW1VERO_PX10_TR_VANs9XX
 port link-type trunk
 undo port trunk allow-pass vlan 1
#
interface XGigabitEthernet0/0/17
 description PTP_SW1POP00_PX17_OLT1POP01_PX02
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 11 to 13 905 to 907 912 to 917 919 to 920 922 to 924 926 to 928 931 934 936 938 to 942
 port trunk allow-pass vlan 945 to 949 952 to 953 956 to 960 963 965 to 966 968 970 to 974 977 982 985 to 986
 port trunk allow-pass vlan 990 1195 1295 3005 3101 to 3102 3119 3256 3540 3560 3580
 port trunk allow-pass vlan 3964 to 3965
 stp disable
#
interface XGigabitEthernet0/0/18
 description PTP_SW1POP00_PX18_SW1POP21_PX04
 port link-type trunk
 port trunk allow-pass vlan 1121 1125
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/19
 description PTP_SW1POP00_PX19_SWVERO_PX
 shutdown
#
interface XGigabitEthernet0/0/20
 shutdown
#
interface XGigabitEthernet0/0/21
 description PTP_SW1POP00_PX21_SW1VERO_PX01_TR_IX_SP_COTIA
 port link-type trunk
 undo port trunk allow-pass vlan 1
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/22
 description SERVIDOR_SPEEDTEST
 port link-type access
 port default vlan 16
#
interface XGigabitEthernet0/0/23
 description PTP_SW1POP00_PX23_SW3POP00_PX03
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 2 11 13 17 to 19 23 2311 3101 to 3102 3105 to 3108 3341 3592
 port trunk allow-pass vlan 3964
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/24
 description PTP_SW1POP00_PX24_CE00_GERENCIAS_sfp-sfpplus4
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 900 to 999 3532 to 3533
#
interface 100GE0/0/1
 description LAG5_BGP1_PCX00_PCX01__SW1POP00_PCX01_PCX02
 eth-trunk 5
#
interface 100GE0/0/2
 description LAG5_BGP1_PCX00_PCX01__SW1POP00_PCX01_PCX02
 eth-trunk 5
#
interface 100GE0/0/3
 description PTP_SW1POP00_PCX03_SW1POP44_PCX03
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1144
 jumboframe enable 12288
#
interface 100GE0/0/4
 shutdown
#
interface 100GE0/0/5
 description PTP_SW1POP00_PCX05__SW1VERO_PCX02
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1138 1164 1264 2311 2733
 jumboframe enable 12288
#
interface 100GE0/0/6
 description PTP_SW1POP00_PCX06__SW1POP12_PQ01
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1112
#
interface NULL0
#
interface LoopBack0
 ip address 10.244.189.0 255.255.255.255
#
interface Tunnel203
 description VLAN3203_IX-RS_BLUS
 shutdown
 ip address unnumbered interface LoopBack0
 tunnel-protocol mpls te
 destination 10.244.188.4
 mpls te tunnel-id 3203
 mpls te record-route label
 mpls te path explicit-path SW1POP04-00_VIA_POP11_VLAN3203
#
ospf 1 router-id 10.244.189.0
 default-route-advertise
 bfd all-interfaces enable
 import-route direct cost 15 type 1
 import-route static cost 15 type 1
 silent-interface all
 undo silent-interface Vlanif1112
 undo silent-interface Vlanif1100
 undo silent-interface Vlanif1108
 undo silent-interface Vlanif1166
 undo silent-interface Vlanif1152
 undo silent-interface Vlanif1125
 undo silent-interface Vlanif2733
 undo silent-interface Vlanif1121
 undo silent-interface Vlanif1195
 undo silent-interface Vlanif1295
 undo silent-interface Vlanif1144
 undo silent-interface Vlanif2311
 opaque-capability enable
 area 0.0.0.0
  network 10.244.100.0 0.0.0.3 description Vlanif1100
  network 10.244.100.4 0.0.0.3 description Vlanif1201
  network 10.244.100.8 0.0.0.3 description Vlanif2733_TR_VERO
  network 10.244.105.8 0.0.0.3 description Vlanif1305
  network 10.244.108.0 0.0.0.3
  network 10.244.110.4 0.0.0.3 description Vlanif1210
  network 10.244.112.0 0.0.0.3
  network 10.244.114.4 0.0.0.3 description Vlanif2311_POP14_TR_VERO
  network 10.244.114.8 0.0.0.3
  network 10.244.115.0 0.0.0.3
  network 10.244.117.0 0.0.0.3
  network 10.244.121.0 0.0.0.3 description Vlanif1121_POP21_PREFEITURA
  network 10.244.125.0 0.0.0.3 description Vlanif1125
  network 10.244.144.0 0.0.0.3 description Vlanif1144
  network 10.244.152.0 0.0.0.3
  network 10.244.166.0 0.0.0.3
  network 10.244.195.0 0.0.0.3 description Vlanif1195
  network 10.244.195.4 0.0.0.3 description Vlanif1295
  network 10.244.199.4 0.0.0.3 description Vlanif1299
  mpls-te enable
#
arp expire-time 14400
#
undo icmp name timestamp-request receive
#
ip route-static 0.0.0.0 0.0.0.0 10.244.0.97 preference 1
#
snmp-agent
snmp-agent local-engineid 800007DB03C833E59E7840
snmp-agent community read cipher %^%#5),mD@H,\<B0Si7WaSrP2r=CZWa@A,~*Q#A563z>O"z`JAm)&Qx4`'Q(~a+RVipF6`=Lj;!.$m#l)|]8%^%#
snmp-agent sys-info contact Cyberweb
snmp-agent sys-info location -30.0027675,-51.1981488
snmp-agent sys-info version v2c v3
snmp-agent trap enable
snmp-agent protocol source-status all-interface
undo snmp-agent protocol source-status ipv6 all-interface
#
stelnet server enable
ssh client first-time enable
ssh client 10.244.110.6 assign rsa-key 10.244.110.6
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
 set authentication password cipher $1c$'C.90K)S`O$aspbOJ`9<OnT<Z~!Wh>.$("P&@+SV8zIpvCohV]M$
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
<SW1POP00_CYBER>
```
