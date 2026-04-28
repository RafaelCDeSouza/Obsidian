---
name: Backup de Equipamento
created: 2026-04-24 23:54
---

# Backup de SW1POP57

## 📋 Informações do Equipamento
| Campo | Valor |
| ----- | ----- |
| **Nome** | SW1POP57 |
| **Tipo** | Switch |
| **Modelo** | {{model}} |
| **Versão de Firmware** | {{firmware_version}} |
| **IP / Endereço** | {{ip_address}} |
| **Local/Área** | {{location}} |
| **Data de Backup** | {{backup_date}} |
| **Responsável** | {{owner}} |

## 📂 Arquivo de Configuração
```text
1|[[SW1POP57]]
     2|
     3|     1|```kotlin
     4|     2|(admin@10.244.188.57) Password:
     5|     3|Welcome to the DmOS CLI
     6|     4|User admin last logged in 2026-04-06T12:46:38.207399+00:00, to DM4370, from 10.244.19.90 using cli-ssh
     7|     5|admin connected from 10.244.19.90 using ssh on SW1POP57_ALT_CAIX01
     8|     6|SW1POP57_ALT_CAIX01# show running-config
     9|     7|aaa authentication-order [ local ]
    10|     8|aaa user admin
    11|     9| password $1$Ao3N.Vl3$q1NAbzd8RKkrJ1mvNcCDS1
    12|    10| group admin
    13|    11|!
    14|    12|aaa user future
    15|    13| password $1$wQuXjN4Y$MzcmWr088DBWQGzkeW62O.
    16|    14| group admin
    17|    15|!
    18|    16|mpls ldp
    19|    17| lsr-id loopback-0
    20|    18|  interface l3-L3_VLAN1157_MPLS
    21|    19|  !
    22|    20|  neighbor targeted 10.244.188.2
    23|    21|  !
    24|    22| !
    25|    23|!
    26|    24|mpls l2vpn
    27|    25| vpls-group POP57_ALT_CAIX01_POP02_TELIUM
    28|    26|  vpn VSI_23_POP02_POP57_VLAN23
    29|    27|   vfi
    30|    28|    pw-type ethernet
    31|    29|    neighbor 10.244.188.2
    32|    30|     pw-id 23
    33|    31|    !
    34|    32|   !
    35|    33|   bridge-domain
    36|    34|    dot1q 23
    37|    35|    bridge-mtu 9000
    38|    36|    access-interface gigabit-ethernet-1/1/4
    39|    37|    !
    40|    38|   !
    41|    39|  !
    42|    40|  vpn VSI_3964_POP02-11_TR_ALT_CAIX01
    43|    41|   vfi
    44|    42|    pw-type ethernet
    45|    43|    neighbor 10.244.188.2
    46|    44|     pw-id 3964
    47|    45|    !
    48|    46|   !
    49|    47|   bridge-domain
    50|    48|    bridge-mtu 9000
    51|    49|    access-interface gigabit-ethernet-1/1/2
    52|    50|    !
    53|    51|    access-interface ten-gigabit-ethernet-1/1/4
    54|    52|    !
    55|    53|   !
    56|    54|  !
    57|    55| !
    58|    56|!
    59|    57|snmp traps config-commit
    60|    58|snmp traps cpu-core
    61|    59|snmp traps cpu-load
    62|    60|snmp traps link-status
    63|    61|snmp traps login-success
    64|    62|snmp agent disabled
    65|    63|snmp agent version v2c
    66|    64|snmp agent version v3
    67|    65|snmp agent engine-id from-mac-address 18:81:ed:56:95:e3
    68|    66|snmp community CyberWeb
    69|    67| sec-name CyberWeb
    70|    68|!
    71|    69|snmp community public
    72|    70| sec-name public
    73|    71|!
    74|    72|snmp notify std_v1_trap
    75|    73| tag std_v1_trap
    76|    74|!
    77|    75|snmp notify std_v2_inform
    78|    76| tag std_v2_inform
    79|    77| type inform
    80|    78|!
    81|    79|snmp notify std_v2_trap
    82|    80| tag std_v2_trap
    83|    81|!
    84|    82|snmp notify std_v3_inform
    85|    83| tag std_v3_inform
    86|    84| type inform
    87|    85|!
    88|    86|snmp notify std_v3_trap
    89|    87| tag std_v3_trap
    90|    88|!
    91|    89|snmp vacm group CyberWeb
    92|    90| member CyberWeb
    93|    91|  sec-model [ v2c ]
    94|    92| !
    95|    93| access "" v2c no-auth-no-priv
    96|    94|  read-view root
    97|    95|  notify-view root
    98|    96| !
    99|    97|!
   100|    98|snmp vacm group public
   101|    99| member public
   102|   100|  sec-model [ v2c ]
   103|   101| !
   104|   102| access "" v2c no-auth-no-priv
   105|   103|  read-view root
   106|   104|  write-view root
   107|   105|  notify-view root
   108|   106| !
   109|   107|!
   110|   108|snmp vacm view root
   111|   109| subtree 1.3
   112|   110|  included
   113|   111| !
   114|   112|!
   115|   113|interface gigabit-ethernet 1/1/1
   116|   114| shutdown
   117|   115| negotiation
   118|   116| duplex full
   119|   117| speed 100M
   120|   118| advertising-abilities 10Mfull 100Mfull 1Gfull
   121|   119| mdix auto
   122|   120| mtu 12266
   123|   121|!
   124|   122|interface gigabit-ethernet 1/1/2
   125|   123| description PORTA_NOTE
   126|   124| no shutdown
   127|   125| negotiation
   128|   126| duplex full
   129|   127| speed 100M
   130|   128| advertising-abilities 10Mfull 100Mfull 1Gfull
   131|   129| mdix auto
   132|   130| mtu 12266
   133|   131|!
   134|   132|interface gigabit-ethernet 1/1/3
   135|   133| shutdown
   136|   134| negotiation
   137|   135| duplex full
   138|   136| speed 100M
   139|   137| advertising-abilities 10Mfull 100Mfull 1Gfull
   140|   138| mdix auto
   141|   139| mtu 12266
   142|   140|!
   143|   141|interface gigabit-ethernet 1/1/4
   144|   142| description PORTA_PC
   145|   143| no shutdown
   146|   144| negotiation
   147|   145| duplex full
   148|   146| speed 100M
   149|   147| advertising-abilities 10Mfull 100Mfull 1Gfull
   150|   148| mdix auto
   151|   149| mtu 12266
   152|   150|!
   153|   151|interface gigabit-ethernet 1/1/5
   154|   152| shutdown
   155|   153| negotiation
   156|   154| duplex full
   157|   155| speed 1G
   158|   156| advertising-abilities 10Mfull 100Mfull 1Gfull
   159|   157| mdix normal
   160|   158| mtu 12266
   161|   159|!
   162|   160|interface gigabit-ethernet 1/1/6
   163|   161| shutdown
   164|   162| negotiation
   165|   163| duplex full
   166|   164| speed 1G
   167|   165| advertising-abilities 10Mfull 100Mfull 1Gfull
   168|   166| mdix normal
   169|   167| mtu 12266
   170|   168|!
   171|   169|interface gigabit-ethernet 1/1/7
   172|   170| shutdown
   173|   171| negotiation
   174|   172| duplex full
   175|   173| speed 1G
   176|   174| advertising-abilities 10Mfull 100Mfull 1Gfull
   177|   175| mdix normal
   178|   176| mtu 12266
   179|   177|!
   180|   178|interface gigabit-ethernet 1/1/8
   181|   179| shutdown
   182|   180| negotiation
   183|   181| duplex full
   184|   182| speed 1G
   185|   183| advertising-abilities 10Mfull 100Mfull 1Gfull
   186|   184| mdix normal
   187|   185| mtu 12266
   188|   186|!
   189|   187|interface ten-gigabit-ethernet 1/1/1
   190|   188| shutdown
   191|   189| no negotiation
   192|   190| duplex full
   193|   191| speed 10G
   194|   192| advertising-abilities 10Mfull 100Mfull 1Gfull
   195|   193| mdix normal
   196|   194| mtu 12266
   197|   195|!
   198|   196|interface ten-gigabit-ethernet 1/1/2
   199|   197| no shutdown
   200|   198| no negotiation
   201|   199| duplex full
   202|   200| speed 10G
   203|   201| advertising-abilities 10Mfull 100Mfull 1Gfull
   204|   202| mdix normal
   205|   203| mtu 12266
   206|   204|!
   207|   205|interface ten-gigabit-ethernet 1/1/3
   208|   206| shutdown
   209|   207| no negotiation
   210|   208| duplex full
   211|   209| speed 10G
   212|   210| advertising-abilities 10Mfull 100Mfull 1Gfull
   213|   211| mdix normal
   214|   212| mtu 12266
   215|   213|!
   216|   214|interface ten-gigabit-ethernet 1/1/4
   217|   215| no shutdown
   218|   216| no negotiation
   219|   217| duplex full
   220|   218| speed 10G
   221|   219| advertising-abilities 10Mfull 100Mfull 1Gfull
   222|   220| mdix normal
   223|   221| mtu 12266
   224|   222|!
   225|   223|interface l3 L3_VLAN1157_MPLS
   226|   224| lower-layer-if vlan 1157
   227|   225| ipv4 address 10.244.157.2/30
   228|   226|!
   229|   227|interface mgmt 1/1/1
   230|   228| ipv4 address 192.168.0.25/24
   231|   229|!
   232|   230|interface loopback 0
   233|   231| ipv4 address 10.244.188.57/32
   234|   232|!
   235|   233|clock timezone BRA -3
   236|   234|hostname SW1POP57_ALT_CAIX01
   237|   235|telnet-server enabled
   238|   236|oam
   239|   237| efm
   240|   238|  interface gigabit-ethernet-1/1/1
   241|   239|   mode passive
   242|   240|  !
   243|   241|  interface gigabit-ethernet-1/1/2
   244|   242|   mode passive
   245|   243|  !
   246|   244|  interface gigabit-ethernet-1/1/3
   247|   245|   mode passive
   248|   246|  !
   249|   247|  interface gigabit-ethernet-1/1/4
   250|   248|   mode passive
   251|   249|  !
   252|   250|  interface gigabit-ethernet-1/1/5
   253|   251|   mode passive
   254|   252|  !
   255|   253|  interface gigabit-ethernet-1/1/6
   256|   254|   mode passive
   257|   255|  !
   258|   256|  interface gigabit-ethernet-1/1/7
   259|   257|   mode passive
   260|   258|  !
   261|   259|  interface gigabit-ethernet-1/1/8
   262|   260|   mode passive
   263|   261|  !
   264|   262|  interface ten-gigabit-ethernet-1/1/1
   265|   263|   mode passive
   266|   264|  !
   267|   265|  interface ten-gigabit-ethernet-1/1/2
   268|   266|   mode passive
   269|   267|  !
   270|   268|  interface ten-gigabit-ethernet-1/1/3
   271|   269|   mode passive
   272|   270|  !
   273|   271|  interface ten-gigabit-ethernet-1/1/4
   274|   272|   mode passive
   275|   273|  !
   276|   274| !
   277|   275|!
   278|   276|loopback-detection
   279|   277| destination-address alternative
   280|   278|!
   281|   279|mac-address-table
   282|   280| aging-time 600
   283|   281|!
   284|   282|layer2-control-protocol
   285|   283| tunnel-mac datacom
   286|   284| tunnel-priority 7
   287|   285|!
   288|   286|vrf global
   289|   287|!
   290|   288|vrf mgmt
   291|   289|!
   292|   290|router ospf 1 vrf global
   293|   291| router-id 10.244.188.57
   294|   292| redistribute static
   295|   293| !
   296|   294| area 0.0.0.0
   297|   295|  interface l3-L3_VLAN1157_MPLS
   298|   296|   cost 100
   299|   297|   bfd
   300|   298|    session-type desired
   301|   299|   !
   302|   300|   network-type point-to-point
   303|   301|  !
   304|   302|  interface loopback-0
   305|   303|  !
   306|   304| !
   307|   305|!
   308|   306|dot1q
   309|   307| vlan 1157
   310|   308|  name VL_1157_SW1POP02_SW1POP57_MPLS
   311|   309|  interface ten-gigabit-ethernet-1/1/2
   312|   310|  !
   313|   311| !
   314|   312|!
   315|   313|license mpls enabled
   316|   314|license mpls key ***
   317|   315|remote-devices
   318|   316| interface gigabit-ethernet-1/1/1
   319|   317| !
   320|   318| interface gigabit-ethernet-1/1/2
   321|   319| !
   322|   320| interface gigabit-ethernet-1/1/3
   323|   321| !
   324|   322| interface gigabit-ethernet-1/1/4
   325|   323| !
   326|   324| interface gigabit-ethernet-1/1/5
   327|   325| !
   328|   326| interface gigabit-ethernet-1/1/6
   329|   327| !
   330|   328| interface gigabit-ethernet-1/1/7
   331|   329| !
   332|   330| interface gigabit-ethernet-1/1/8
   333|   331| !
   334|   332| interface ten-gigabit-ethernet-1/1/1
   335|   333| !
   336|   334| interface ten-gigabit-ethernet-1/1/2
   337|   335| !
   338|   336| interface ten-gigabit-ethernet-1/1/3
   339|   337| !
   340|   338| interface ten-gigabit-ethernet-1/1/4
   341|   339| !
   342|   340|!
   343|   341|SW1POP57_ALT_CAIX01#
   344|   342|```
   345|   343|
```

## 🗒️ Observações
- {{notes}}
