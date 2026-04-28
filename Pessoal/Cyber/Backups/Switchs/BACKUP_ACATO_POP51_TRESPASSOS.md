---
name: Backup de Equipamento
created: 2026-04-24 23:54
---

# Backup de ACATO_POP51_TRESPASSOS

## 📋 Informações do Equipamento
| Campo | Valor |
| ----- | ----- |
| **Nome** | ACATO_POP51_TRESPASSOS |
| **Tipo** | Equipamento |
| **Modelo** | {{model}} |
| **Versão de Firmware** | {{firmware_version}} |
| **IP / Endereço** | {{ip_address}} |
| **Local/Área** | {{location}} |
| **Data de Backup** | {{backup_date}} |
| **Responsável** | {{owner}} |

## 📂 Arquivo de Configuração
```text
1|```kotlin
     2|SW1POP51_ARROBANET# show running-config
     3|aaa authentication-order [ local ]
     4|aaa user admin
     5| password $1$Jfl.QgeU$K8v5IZdiS8iNxyrydoAV60
     6| group admin
     7|!
     8|aaa user zandona
     9| password $1$JAxKdktC$gMegws.NVm48AHSV9ig4z.
    10| group admin
    11|!
    12|snmp traps config-commit
    13|snmp traps cpu-core
    14|snmp traps cpu-load
    15|snmp traps link-status
    16|snmp traps login-success
    17|snmp agent disabled
    18|snmp agent version v2c
    19|snmp agent version v3
    20|snmp agent engine-id from-mac-address 18:81:ed:47:92:3a
    21|snmp community public
    22| sec-name public
    23|!
    24|snmp notify std_v1_trap
    25| tag std_v1_trap
    26|!
    27|snmp notify std_v2_inform
    28| tag std_v2_inform
    29| type inform
    30|!
    31|snmp notify std_v2_trap
    32| tag std_v2_trap
    33|!
    34|snmp notify std_v3_inform
    35| tag std_v3_inform
    36| type inform
    37|!
    38|snmp notify std_v3_trap
    39| tag std_v3_trap
    40|!
    41|snmp vacm group public
    42| member public
    43|  sec-model [ v2c ]
    44| !
    45| access "" v2c no-auth-no-priv
    46|  read-view root
    47|  write-view root
    48|  notify-view root
    49| !
    50|!
    51|snmp vacm view root
    52| subtree 1.3
    53|  included
    54| !
    55|!
    56|interface gigabit-ethernet 1/1/1
    57| no shutdown
    58| negotiation
    59| duplex full
    60| speed 100M
    61| advertising-abilities 10Mfull 100Mfull 1Gfull
    62| mdix auto
    63| mtu 12266
    64|!
    65|interface gigabit-ethernet 1/1/2
    66| no shutdown
    67| negotiation
    68| duplex full
    69| speed 100M
    70| advertising-abilities 10Mfull 100Mfull 1Gfull
    71| mdix auto
    72| mtu 12266
    73|!
    74|interface gigabit-ethernet 1/1/3
    75| no shutdown
    76| negotiation
    77| duplex full
    78| speed 100M
    79| advertising-abilities 10Mfull 100Mfull 1Gfull
    80| mdix auto
    81| mtu 12266
    82|!
    83|interface gigabit-ethernet 1/1/4
    84| no shutdown
    85| negotiation
    86| duplex full
    87| speed 100M
    88| advertising-abilities 10Mfull 100Mfull 1Gfull
    89| mdix auto
    90| mtu 12266
    91|!
    92|interface gigabit-ethernet 1/1/5
    93| no shutdown
    94| negotiation
    95| duplex full
    96| speed 1G
    97| advertising-abilities 10Mfull 100Mfull 1Gfull
    98| mdix normal
    99| mtu 12266
   100|!
   101|interface gigabit-ethernet 1/1/6
   102| no shutdown
   103| negotiation
   104| duplex full
   105| speed 1G
   106| advertising-abilities 10Mfull 100Mfull 1Gfull
   107| mdix normal
   108| mtu 12266
   109|!
   110|interface gigabit-ethernet 1/1/7
   111| no shutdown
   112| negotiation
   113| duplex full
   114| speed 1G
   115| advertising-abilities 10Mfull 100Mfull 1Gfull
   116| mdix normal
   117| mtu 12266
   118|!
   119|interface gigabit-ethernet 1/1/8
   120| no shutdown
   121| negotiation
   122| duplex full
   123| speed 1G
   124| advertising-abilities 10Mfull 100Mfull 1Gfull
   125| mdix normal
   126| mtu 12266
   127|!
   128|interface ten-gigabit-ethernet 1/1/1
   129| no shutdown
   130| no negotiation
   131| duplex full
   132| speed 10G
   133| advertising-abilities 10Mfull 100Mfull 1Gfull
   134| mdix normal
   135| mtu 12266
   136|!
   137|interface ten-gigabit-ethernet 1/1/2
   138| no shutdown
   139| no negotiation
   140| duplex full
   141| speed 10G
   142| advertising-abilities 10Mfull 100Mfull 1Gfull
   143| mdix normal
   144| mtu 12266
   145|!
   146|interface ten-gigabit-ethernet 1/1/3
   147| no shutdown
   148| no negotiation
   149| duplex full
   150| speed 10G
   151| advertising-abilities 10Mfull 100Mfull 1Gfull
   152| mdix normal
   153| mtu 12266
   154|!
   155|interface ten-gigabit-ethernet 1/1/4
   156| no shutdown
   157| no negotiation
   158| duplex full
   159| speed 10G
   160| advertising-abilities 10Mfull 100Mfull 1Gfull
   161| mdix normal
   162| mtu 12266
   163|!
   164|interface l3 L3_VLAN1151_MPLS
   165| lower-layer-if vlan 1151
   166| ipv4 address 10.244.151.2/30
   167|!
   168|interface l3 L3_VLAN1251_MPLS
   169| lower-layer-if vlan 1251
   170| ipv4 address 10.244.151.6/30
   171|!
   172|interface mgmt 1/1/1
   173| ipv4 address 192.168.0.25/24
   174|!
   175|hostname SW1POP51_ARROBANET
   176|telnet-server disabled
   177|oam
   178| efm
   179|  interface gigabit-ethernet-1/1/1
   180|   mode passive
   181|  !
   182|  interface gigabit-ethernet-1/1/2
   183|   mode passive
   184|  !
   185|  interface gigabit-ethernet-1/1/3
   186|   mode passive
   187|  !
   188|  interface gigabit-ethernet-1/1/4
   189|   mode passive
   190|  !
   191|  interface gigabit-ethernet-1/1/5
   192|   mode passive
   193|  !
   194|  interface gigabit-ethernet-1/1/6
   195|   mode passive
   196|  !
   197|  interface gigabit-ethernet-1/1/7
   198|   mode passive
   199|  !
   200|  interface gigabit-ethernet-1/1/8
   201|   mode passive
   202|  !
   203|  interface ten-gigabit-ethernet-1/1/1
   204|   mode passive
   205|  !
   206|  interface ten-gigabit-ethernet-1/1/2
   207|   mode passive
   208|  !
   209|  interface ten-gigabit-ethernet-1/1/3
   210|   mode passive
   211|  !
   212|  interface ten-gigabit-ethernet-1/1/4
   213|   mode passive
   214|  !
   215| !
   216|!
   217|loopback-detection
   218| destination-address alternative
   219|!
   220|mac-address-table
   221| aging-time 600
   222|!
   223|layer2-control-protocol
   224| tunnel-mac datacom
   225| tunnel-priority 7
   226|!
   227|vrf global
   228|!
   229|vrf mgmt
   230|!
   231|dot1q
   232| vlan 1151,1251
   233|  interface ten-gigabit-ethernet-1/1/1
   234|  !
   235|  interface ten-gigabit-ethernet-1/1/2
   236|  !
   237| !
   238|!
   239|license mpls enabled
   240|license mpls key ***
   241|remote-devices
   242| interface gigabit-ethernet-1/1/1
   243| !
   244| interface gigabit-ethernet-1/1/2
   245| !
   246| interface gigabit-ethernet-1/1/3
   247| !
   248| interface gigabit-ethernet-1/1/4
   249| !
   250| interface gigabit-ethernet-1/1/5
   251| !
   252| interface gigabit-ethernet-1/1/6
   253| !
   254| interface gigabit-ethernet-1/1/7
   255| !
   256| interface gigabit-ethernet-1/1/8
   257| !
   258| interface ten-gigabit-ethernet-1/1/1
   259| !
   260| interface ten-gigabit-ethernet-1/1/2
   261| !
   262| interface ten-gigabit-ethernet-1/1/3
   263| !
   264| interface ten-gigabit-ethernet-1/1/4
   265| !
   266|!
   267|SW1POP51_ARROBANET#                        1249567947
   268|
   269|```
   270|
```

## 🗒️ Observações
- {{notes}}
