```script

Remover ONU da Huawai


POP13_OLT1_HAVANA(config)#undo service-port 11

POP13_OLT1_HAVANA(config)#undo service-port 8

POP13_OLT1_HAVANA(config)#interface gpon 0/1

POP13_OLT1_HAVANA(config-if-gpon-0/1)#ont delete 12 11 ?
---------------------------------------------
  Command of gpon-0/1 Mode:
---------------------------------------------
<cr>  Please press ENTER to execute command

POP13_OLT1_HAVANA(config-if-gpon-0/1)#ont delete 12 11
  Number of ONTs that can be deleted: 1, success: 1

POP13_OLT1_HAVANA(config-if-gpon-0/1)#



#Adiconar



service-port 8 vlan 133 gpon 0/1/12 ont 11 gemport 133 multi-service user-vlan 133 tag-transform translate

service-port 11 vlan 3907 gpon 0/1/12 ont 11 gemport 907 multi-service user-vlan 3907 tag-transform translate




 ont port native-vlan 12 11 eth 1 vlan 3907 priority 0
 ont port native-vlan 12 11 eth 2 vlan 133 priority 0


#Antigo
 ont-lineprofile gpon profile-id 3540 profile-name "LINE_PROFILE_3540"
  omcc encrypt on
  tcont 1 dba-profile-id 11
  tcont 2 dba-profile-id 12
  gem add 133 eth tcont 1 encrypt on
  gem add 907 eth tcont 2 encrypt on
  gem mapping 133 0 vlan 133
  gem mapping 907 0 vlan 3907
  commit
  quit


#novo
 ont-lineprofile gpon profile-id 3907 profile-name "LINE_PROFILE_3907"
  omcc encrypt on
  tcont 1 dba-profile-id 11
  tcont 2 dba-profile-id 12
  gem add 907 eth tcont 1 encrypt on
  gem add 133 eth tcont 2 encrypt on
  gem mapping 133 0 vlan 133
  gem mapping 907 0 vlan 3907
  commit
  quit


#Antigo
 ont-srvprofile gpon profile-id 3907 profile-name "SRVPROFILE_BRIDGE_3907"
  ont-port eth 2
  port vlan eth 1 translation 133 user-vlan 133
  port q-in-q eth 2 enable
  port vlan eth 2 translation 3907 user-vlan 3907
  commit


#Novo
 ont-srvprofile gpon profile-id 3907 profile-name "SRVPROFILE_BRIDGE_3907"
  ont-port eth 2
  port q-in-q eth 1 enable
  port vlan eth 1 translation 3907 user-vlan 3907
  port vlan eth 2 translation 133 user-vlan 133
  commit

service-port 8 vlan 133 gpon 0/1/12 ont 11 gemport 133 multi-service user-vlan 133 tag-transform translate






Teste HUAWAI Sapucaia
interface gpon 0/2
ont add 0 1 sn-auth "52434D471998DDA0" omci ont-lineprofile-id 1 ont-srvprofile-id 1 desc "4651"
service-port 1 vlan 11 gpon 0/2/0 ont 1 gemport 1 multi-service user-vlan 11 tag-transform translate



```
