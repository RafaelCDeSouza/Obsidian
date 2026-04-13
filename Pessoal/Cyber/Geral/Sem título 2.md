













































   ____  _    _ _______ _____ ____  _____  ______ 
  / __ \| |  | |__   __/ ____/ __ \|  __ \|  ____|
 | |  | | |  | |  | | | |   | |  | | |__) | |__   
 | |  | | |  | |  | | | |   | |  | |  _  /|  __|  
 | |__| | |__| |  | | | |___| |__| | | \ \| |____ 
  \____/ \____/   |_|  \_____\____/|_|  \_\______|
                                                  
                                                  
  OutCore RouterOS 7.20 (c) 1999-2025       https://outcore.com.br


Press F1 for help


[adviceit@fw-OutCore-Telium] > export show-sensitive 
# 2025-10-22 20:28:10 by RouterOS 7.20
# software id = BSJD-U8ZQ
#
# model = CCR1036-8G-2S+
# serial number = 4C9302E38D57
/interface bridge
add name=BRD_DIRCON
add name=BRD_OUTCORE port-cost-mode=short
/interface ovpn-server
add name=OpenVPN-AGI user=OpenVPN-AGI
add name=OpenVPN-Alianca-Cachoeirinha user=OpenVPN-Alianca-Cachoeirinha
add name=OpenVPN-Alianca-Capao user=OpenVPN-Alianca-Capao
add name=OpenVPN-Alianca-Matriz user=OpenVPN-Alianca-Matriz
add name=OpenVPN-Alianca-Telium user=OpenVPN-Alianca-Telium
add name=OpenVPN-Argos user=OpenVPN-Argos
add name=OpenVPN-AuxZN user=OpenVPN-AuxZN
add name=OpenVPN-BVC user=OpenVPN-BVC
add name=OpenVPN-Belmondo user=OpenVPN-Belmondo
add name=OpenVPN-Bruna user=OpenVPN-Bruna
add name=OpenVPN-CMA user=OpenVPN-CMA
add name=OpenVPN-CafedoMercado user=OpenVPN-CafedoMercado
add name=OpenVPN-Central-AB user=OpenVPN-Central-AB
add name=OpenVPN-Central-ABOdonto user=OpenVPN-Central-ABOdonto
add name=OpenVPN-Central-Adm user=OpenVPN-Central-Adm
add name=OpenVPN-Central-Alvorada user=OpenVPN-Central-Alvorada
add name=OpenVPN-Central-Azenha user=OpenVPN-Central-Azenha
add name=OpenVPN-Central-Cachoeirinha user=OpenVPN-Central-Cachoeirinha
add name=OpenVPN-Central-DF47 user=OpenVPN-Central-DF47
add name=OpenVPN-Central-Gravatai user=OpenVPN-Central-Gravatai
add name=OpenVPN-Cooperpoa user=OpenVPN-Cooperpoa
add name=OpenVPN-DGT-Poa user=OpenVPN-DGT-Poa
add name=OpenVPN-DermatoItaigara user=OpenVPN-DermatoItaigara
add name=OpenVPN-DermatoVilas user=OpenVPN-DermatoVilas
add disabled=yes name=OpenVPN-Dircon user=OpenVPN-Dircon
add name=OpenVPN-Dorvo user=OpenVPN-Dorvo
add name=OpenVPN-DorvoColinas user=OpenVPN-DorvoColinas
add name=OpenVPN-Edlo-Canoas user=OpenVPN-Edlo-Canoas
add name=OpenVPN-Edlo-Sapucaia user=OpenVPN-Edlo-Sapucaia
add name=OpenVPN-Elastonordeste user=OpenVPN-Elastonordeste
add name=OpenVPN-Idealle user=OpenVPN-Idealle
add name=OpenVPN-Loja7200 user=OpenVPN-Loja7200
add name=OpenVPN-Loja7200Escritorio user=OpenVPN-Loja7200Escritorio
add name=OpenVPN-MCK user=OpenVPN-MCK
add name=OpenVPN-Machado user=OpenVPN-Machado
add name=OpenVPN-MedTrabalho user=OpenVPN-MedTrabalho
add name=OpenVPN-ProntoOlhos-Centro user=OpenVPN-ProntoOlhos-Centro
add name=OpenVPN-ProntoOlhos-Jacinto user=OpenVPN-ProntoOlhos-Jacinto
add name=OpenVPN-ProntoOlhos-Nilo user=OpenVPN-ProntoOlhos-Nilo
add name=OpenVPN-RRF user=OpenVPN-RRF
add name=OpenVPN-Rodrigues user=OpenVPN-Rodrigues
add name=OpenVPN-Russell-RJ user=OpenVPN-Russell-RJ
add name=OpenVPN-Russell-SP user=OpenVPN-Russell-SP
add name=OpenVPN-UDC user=OpenVPN-UDC
add name=OpenVPN-VR-Caxias user=OpenVPN-VR-Caxias
add name=OpenVPN-VR-Esteio user=OpenVPN-VR-Esteio
add name=OpenVPN-VR-Matriz user=OpenVPN-VR-Matriz
add name=OpenVPN-VR-NH user=OpenVPN-VR-NH
add name=OpenVPN-VR-POA user=OpenVPN-VR-POA
add name=OpenVPN-VR-SaoLeo user=OpenVPN-VR-SaoLeo
add name=OpenVPN-VR-Sapucaia user=OpenVPN-VR-Sapucaia
add name=OpenVPN-iPorto-Daniela user=OpenVPN-iPorto-Daniela
add name=OpenVPN-iPorto-Francisco user=OpenVPN-iPorto-Francisco
add name=OpenVPN-iPorto-Ygor user=OpenVPN-iPorto-Ygor
/interface ethernet
set [ find default-name=ether1 ] comment=Telium
set [ find default-name=ether2 ] comment="Fibra Cyber"
set [ find default-name=ether4 ] comment=OutCore
set [ find default-name=ether5 ] comment=Dircon
/interface pppoe-client
add disabled=no interface=ether2 name=pppoe-out-cyber password=11373281000144 user=advice_informacao
/interface eoip
add local-address=10.254.254.5 mac-address=02:1F:F2:7B:9E:E9 name=EOIP_OUTCORE_CYBER remote-address=10.254.254.6 tunnel-id=13
add allow-fast-path=no ipsec-secret=rT7Z25ve8UyCiusWSlH84aIuhRTC2V local-address=200.194.250.250 mac-address=02:1F:F2:7B:9E:E9 name=EOIP_OUTCORE_TELIUM remote-address=200.170.252.138 tunnel-id=11
add allow-fast-path=no ipsec-secret=rT7Z25ve8UyCiusWSlH84aIuhRTC2V local-address=200.194.250.250 mac-address=02:01:73:C0:3D:3A name=eoip-Dircon-Cyber remote-address=45.235.209.66 tunnel-id=10
add allow-fast-path=no ipsec-secret=xQHiz2gjHnyZPSjosw20 local-address=10.254.252.1 mac-address=02:27:92:CD:08:88 name=eoip-Dircon-Vivo remote-address=10.254.252.2 tunnel-id=12
/interface wireguard
add listen-port=51821 mtu=1420 name=WG_OUTCORE_CLIENTES private-key="GJevqVabGWyWs/Cm7YTgcrXkKR6xg6ZSFF2li5VSFVw="
add listen-port=51822 mtu=1420 name=WG_OUTCORE_DIRCON private-key="4NUE/rF714dcor5gE+rih212VRnYMxjNb/8K/tvhWEs="
add listen-port=51820 mtu=1420 name=WG_OUTCORE_TELIUM private-key="GJevqVabGWyWs/Cm7YTgcrXkKR6xg6ZSFF2li5VSFVw="
add listen-port=51823 mtu=1420 name=WG_OUTCORE_TELIUM_RAFAEL_HO private-key="GJevqVabGWyWs/Cm7YTgcrXkKR6xg6ZSFF2li5VSFVw="
/interface vlan
add interface=ether2 name=vlan_101 vlan-id=101
/interface bonding
add arp-ip-targets=10.254.252.2 down-delay=3s mode=active-backup name=BND_DIRCON_TELIUM_IDC primary=eoip-Dircon-Cyber slaves=eoip-Dircon-Cyber,eoip-Dircon-Vivo up-delay=3s
add arp-ip-targets=10.254.254.6 mode=active-backup name=BND_OUTCORE_TELIUM_IDC primary=EOIP_OUTCORE_CYBER slaves=EOIP_OUTCORE_TELIUM,EOIP_OUTCORE_CYBER
/interface list
add name=Internet
add comment="Bridge(s) LAN" name=LAN
add name=Vizinhanca
add name=VizinhancaProibidaRoMon
/interface lte apn
set [ find default=yes ] ip-type=ipv4 use-network-apn=no
/ip ipsec peer
add address=131.0.103.250/32 comment=iPorto name=iPORTO
/ip ipsec profile
set [ find default=yes ] dh-group=modp1536 dpd-interval=2m dpd-maximum-failures=5 enc-algorithm=3des
add dh-group=modp1536 dpd-interval=2m dpd-maximum-failures=5 enc-algorithm=3des name=profile_1
add dh-group=modp1536 dpd-interval=2m dpd-maximum-failures=5 enc-algorithm=3des name=Auxiliadora
add dh-group=modp2048 dpd-interval=disable-dpd enc-algorithm=aes-256 lifetime=8h name=TMSA nat-traversal=no
add dh-group=modp1536 dpd-interval=2m dpd-maximum-failures=5 enc-algorithm=aes-128 hash-algorithm=sha256 name=Guarida
add dh-group=modp2048 dpd-interval=2m dpd-maximum-failures=5 enc-algorithm=aes-256 hash-algorithm=sha256 name=RussellPoa
add dh-group=modp1536 dpd-interval=2m dpd-maximum-failures=5 enc-algorithm=aes-256 hash-algorithm=sha256 name=BeckerMai nat-traversal=no
add dh-group=modp1536 dpd-interval=10s dpd-maximum-failures=5 enc-algorithm=aes-256 hash-algorithm=sha256 lifetime=1h name=OCI-VR nat-traversal=no
add dh-group=modp1024 dpd-interval=10s dpd-maximum-failures=5 enc-algorithm=aes-256 hash-algorithm=sha256 lifetime=8h name=RussellAzure nat-traversal=no
add dh-group=modp1024 dpd-interval=2m dpd-maximum-failures=5 enc-algorithm=aes-256 hash-algorithm=sha256 name=CCEE
/ip ipsec peer
add address=200.228.200.24/32 name=CCEE profile=CCEE
add address=200.225.50.106/32 comment=Guarida name=GuaridaDC-ELEA profile=Guarida
add address=200.215.216.138/32 comment=Auxiliadora name=Auxiliadora profile=Auxiliadora
add address=200.170.252.38/32 comment="Russell Azure" name=RussellPoa profile=RussellPoa
add address=200.155.148.94/32 comment=TMSA exchange-mode=ike2 name=TMSA-Telium profile=TMSA send-initial-contact=no
add address=200.143.124.10/32 comment=Guarida name=GuaridaPE-BR profile=Guarida
add address=200.143.124.2/32 comment=Guarida name=GuaridaDC-BR profile=Guarida
add address=200.143.121.157/32 comment=Guarida name=GuaridaCapaoCanoa-BR profile=Guarida
add address=200.143.121.137/32 comment=Guarida name=GuaridaBelaVista-BR profile=Guarida
add address=200.143.121.135/32 comment=Guarida name=GuaridaZonaSul-BR profile=Guarida
add address=200.143.121.133/32 comment=Guarida name=GuaridaCentro-BR profile=Guarida
add address=187.103.100.34/32 comment=TMSA name=TMSA-BRDigital passive=yes profile=TMSA
add address=187.49.79.237/32 comment=Guarida name=GuaridaZonaSul-Sygo profile=Guarida
add address=187.49.74.201/32 comment=Guarida name=GuaridaCentro-Sygo profile=Guarida
add address=177.87.34.16/32 comment=Guarida name=GuaridaCapaoCanoa-Sygo profile=Guarida
add address=170.231.44.241/32 comment=Guarida name=GuaridaBelaVista-Sygo profile=Guarida
add address=170.231.44.239/32 comment=Guarida name=GuaridaPE-Sygo profile=Guarida
add address=168.138.240.85/32 comment=OCI exchange-mode=ike2 name=OCI-VR-TELIUM profile=OCI-VR
add address=168.138.235.255/32 comment=OCI exchange-mode=ike2 name=OCI-VR-CYBER profile=OCI-VR
/ip ipsec proposal
set [ find default=yes ] enc-algorithms=aes-128-cbc
add enc-algorithms=3des name=PadraoFortiGate pfs-group=modp1536
add auth-algorithms=sha256 enc-algorithms=aes-256-cbc lifetime=8h name=TMSA pfs-group=none
add enc-algorithms=aes-128-cbc name=Guarida pfs-group=modp1536
add auth-algorithms=sha256 enc-algorithms=aes-256-cbc name=RussellPoa pfs-group=modp2048
add auth-algorithms=sha256 enc-algorithms=aes-256-cbc lifetime=1h name=BeckerMai pfs-group=modp1536
add auth-algorithms=sha256 enc-algorithms=aes-256-cbc lifetime=1h name=OCI-VR pfs-group=modp1536
add auth-algorithms=sha256 enc-algorithms=aes-256-cbc lifetime=1h name=RussellAzure pfs-group=modp1536
add auth-algorithms=sha256,sha1 enc-algorithms=aes-256-cbc name=CCEE pfs-group=none
/ip pool
add name=pool_local ranges=10.90.100.2-10.90.100.254
add name=ovpn-pool ranges=10.88.79.100-10.88.79.200
add name=dhcp_pool6 ranges=10.5.50.2-10.5.50.254
add name=dhcp_pool7 ranges=10.70.0.2-10.70.0.254
add name=pool_visitante ranges=10.241.241.3-10.241.241.10
add name=l2tp-pool ranges=10.88.78.2-10.88.78.250
add name=pool_radius ranges=10.240.240.2-10.240.240.20
add name=dhcp_pool9 ranges=10.240.240.2-10.240.240.254
add name=dhcp_pool10 ranges=10.122.0.100-10.122.0.150
/ip smb users
set [ find default=yes ] disabled=yes
/port
set 0 name=serial0
set 1 name=serial1
/ppp profile
add name=default-require-encryption
add change-tcp-mss=yes local-address=10.88.79.1 name=ovpn remote-address=ovpn-pool use-encryption=yes
add change-tcp-mss=yes local-address=10.88.78.1 name=l2tp remote-address=l2tp-pool use-compression=yes use-encryption=yes
add change-tcp-mss=yes name=ovpn_russell use-compression=yes use-encryption=yes use-ipv6=no use-mpls=no
/routing id
add disabled=no name=id-OSPF select-dynamic-id=only-loopback
/routing ospf instance
add disabled=no name=OSPF_ESCRITORIO originate-default=never out-filter-chain=ospf-out redistribute=connected,static,vpn router-id=id-OSPF
/routing ospf area
add disabled=no instance=OSPF_ESCRITORIO name=OSPF_ESCRITORIO_AREA0
/routing table
add disabled=no fib name=HTTP-Route
add disabled=no fib name=to_Telium
add disabled=no fib name=to_Cyber
/snmp community
set [ find default=yes ] addresses=10.93.0.6/32
/system logging action
set 3 remote=172.190.180.119 remote-log-format=syslog syslog-facility=local0
/certificate settings
set builtin-trust-anchors=not-trusted
/dude
set enabled=yes
/interface bridge port
add bridge=BRD_OUTCORE ingress-filtering=no interface=ether4 internal-path-cost=10 path-cost=10
add bridge=BRD_DIRCON interface=ether5
add bridge=BRD_DIRCON disabled=yes interface=BND_DIRCON_TELIUM_IDC
/ip firewall connection tracking
set udp-timeout=1m
/ip neighbor discovery-settings
set discover-interface-list=all
/ip settings
set max-neighbor-entries=8192
/ipv6 settings
set disable-ipv6=yes max-neighbor-entries=8192 soft-max-neighbor-entries=8191
/interface l2tp-server server
set enabled=yes
/interface list member
add interface=ether1 list=Internet
add disabled=yes interface=ether2 list=Internet
add interface=BND_OUTCORE_TELIUM_IDC list=Vizinhanca
add interface=BRD_OUTCORE list=Vizinhanca
add disabled=yes interface=ether1 list=VizinhancaProibidaRoMon
add disabled=yes interface=ether2 list=VizinhancaProibidaRoMon
add interface=EOIP_OUTCORE_CYBER list=Vizinhanca
add interface=EOIP_OUTCORE_TELIUM list=Vizinhanca
/interface ovpn-server server
add auth=sha1,sha256 certificate=CertOVPN-2025 cipher=blowfish128,aes128-cbc,aes192-cbc,aes256-cbc default-profile=ovpn disabled=no mac-address=FE:40:96:72:0A:C6 name=ovpn-server-outcore
add auth=sha1,sha256 certificate=CertOVPN-Dircon cipher=blowfish128,aes128-cbc,aes192-cbc,aes256-cbc default-profile=ovpn disabled=no mac-address=FE:40:96:72:0A:C6 name=ovpn-server-dircon port=1195
/interface wireguard peers
add allowed-address=10.254.254.18/32,10.91.0.0/16,224.0.0.0/24 endpoint-address=200.170.252.138 endpoint-port=51820 interface=WG_OUTCORE_TELIUM name=WG_PEER_OUTCORE_TELIUM persistent-keepalive=10s preshared-key=\
    "SJPVltV4cB3x6/0lV+NXExtBc2AFo/gzFb+EA0YDhVs=" public-key="MUI2urXapmfosAKpoBqsjNFYGmQhiJGnnKfWiHCoHV4="
add allowed-address=10.254.254.14/32,192.168.31.0/24,224.0.0.0/24 endpoint-address=45.235.208.49 endpoint-port=51823 interface=WG_OUTCORE_TELIUM_RAFAEL_HO name=WG_PEER_RAFAEL_HO persistent-keepalive=10s preshared-key=\
    "SJPVltV4cB3x6/0lV+NXExtBc2AFo/gzFb+EA0YDhVs=" public-key="9yPlAJudQrw5ItToOhJQacOYZ2I3MC9i1hwlipfqu1w="
add allowed-address=10.254.250.1/32,10.13.0.0/16 interface=WG_OUTCORE_DIRCON name=WG_PEER_DIRCON_CLARO persistent-keepalive=10s preshared-key="SJPVltV4cB3x6/0lV+NXExtBc2AFo/gzFb+EA0YDhVs=" public-key=\
    "BI6TN81+oxmp9pHqybgDgFoiwqJDCTIqYMn+Nvr4n2E="
/ip address
add address=200.194.250.250/30 interface=ether1 network=200.194.250.248
add address=10.90.0.2/16 interface=BRD_OUTCORE network=10.90.0.0
add address=10.13.0.1/24 interface=BRD_DIRCON network=10.13.0.0
add address=10.154.254.1/29 interface=vlan_101 network=10.154.254.0
add address=10.254.254.1/30 comment="IP para ROTEAMENTO do Bonding" disabled=yes interface=BND_OUTCORE_TELIUM_IDC network=10.254.254.0
add address=10.254.254.5/30 comment="IP para ROTEAMENTO ao ESCRITORIO" interface=vlan_101 network=10.254.254.4
add address=10.254.254.11/29 interface=ether2 network=10.254.254.8
add address=10.90.0.1/16 interface=BRD_OUTCORE network=10.90.0.0
add address=10.254.254.17/30 comment="WireGuard OUTCORE" interface=WG_OUTCORE_TELIUM network=10.254.254.16
add address=1.255.255.1 interface=lo network=1.255.255.1
add address=10.254.254.13/30 comment="WireGuard RAFAEL" interface=WG_OUTCORE_TELIUM_RAFAEL_HO network=10.254.254.12
add address=10.254.213.1/30 interface=BND_DIRCON_TELIUM_IDC network=10.254.213.0
add address=10.13.0.2/24 interface=BRD_DIRCON network=10.13.0.0
/ip cloud
set ddns-enabled=yes
/ip dns
set allow-remote-requests=yes servers=208.67.222.222,8.8.8.8
/ip dns static
add address=10.90.0.5 name=unifi type=A
/ip firewall address-list
add address=38.250.225.25 list=adviceIT
add address=200.170.252.138 list=adviceIT
add address=10.93.0.0/24 list=adviceIT
add address=10.90.0.0/16 list=adviceIT
add address=45.235.208.49 list=adviceIT
add address=10.13.0.0/16 list=RangeDircon
add address=10.90.0.0/16 list=IPs_Liberados
add address=10.90.0.0/16 list=RangeInterno
add address=10.13.0.0/16 list=IPs_Liberados
add address=10.91.0.0/16 list=adviceIT
add address=10.91.0.0/16 list=RangeInterno
add address=10.91.0.0/16 list=IPs_Liberados
add address=138.186.116.3 list=LiberaVPNTemporario
add address=45.165.86.161 list=LiberaVPNTemporario
add address=179.42.126.129 list=LiberaVPNTemporario
add address=45.177.154.108 list=LiberaVPNTemporario
add address=192.168.31.0/24 comment="RAFAEL HO" list=adviceIT
/ip firewall filter
add action=passthrough chain="-- Seperador --" comment="# ==== INPUT - prote\C3\A7\C3\A3o e libera\C3\A7\C3\B5es ==== #"
add action=drop chain=input comment="Drop connections invalid" connection-state=invalid
add action=accept chain=input comment="Accept established/related connections" connection-state=established,related
add action=accept chain=input comment="Full access RedeLocal" src-address-list=RangeInterno
add action=accept chain=input comment="Libera OSPF " in-interface=WG_OUTCORE_TELIUM protocol=ospf
add action=accept chain=input comment="Full access temporrio KnockKnock" src-address-list=KnockKnock_Fase3
add action=jump chain=input comment="Proteo Input: Blacklist, portscan" jump-target=ProtecaoInput
add action=jump chain=input comment=Port-knocking jump-target=KnowKnow
add action=jump chain=input comment="Jump servios liberados" jump-target=ServicesInput
add action=drop chain=input comment="Drop all other input (seguraca padrao)"
add action=passthrough chain="-- Seperador --" comment="# ==== FORWARD - prote\C3\A7\C3\A3o e libera\C3\A7\C3\B5es ==== #"
add action=drop chain=forward comment="Drop invalid forward" connection-state=invalid
add action=accept chain=forward comment="Accept established/related forward" connection-state=established,related
add action=jump chain=forward comment="Proteo Forward: Blacklist, portscan" jump-target=ProtecaoForward
add action=accept chain=forward comment="FWD adviceIT origem" dst-address-list=RangeInterno src-address-list=adviceIT
add action=accept chain=forward comment="FWD adviceIT destino" dst-address-list=adviceIT src-address-list=RangeInterno
add action=accept chain=forward comment="FWD in VPN" in-interface=WG_OUTCORE_TELIUM_RAFAEL_HO out-interface=BRD_DIRCON
add action=accept chain=forward comment="FWD in VPN" in-interface=WG_OUTCORE_TELIUM_RAFAEL_HO out-interface=all-ppp
add action=accept chain=forward comment="FWD out VPN" out-interface=all-ppp
add action=accept chain=forward comment="FWD out VPN" in-interface=WG_OUTCORE_TELIUM src-address=192.168.31.0/24
add action=accept chain=forward comment="FWD out VPN" in-interface=WG_OUTCORE_TELIUM src-address=10.91.0.0/16
add action=accept chain=forward comment="FWD out VPN" in-interface=vlan_101 src-address=10.91.0.0/16
add action=accept chain=forward comment="FWD out Clientes" dst-address-list=RangeClientes
add action=accept chain=forward comment="FWD HTTP/HTTPS RedeLocal" dst-port=80,443 out-interface-list=Internet protocol=tcp src-address-list=RangeInterno
add action=accept chain=forward comment="FWD HTTP/HTTPS UDP RedeLocal" dst-port=80,443 out-interface-list=Internet protocol=udp src-address-list=RangeInterno
add action=accept chain=forward comment="FWD Email RedeLocal" dst-port=25,110,143,465,587,993,995 out-interface-list=Internet protocol=tcp src-address-list=RangeInterno
add action=accept chain=forward comment="FWD HTTP/HTTPS RedeLocal" dst-port=80,443 out-interface-list=Internet protocol=tcp src-address-list=RangeDircon
add action=accept chain=forward comment="FWD HTTP/HTTPS UDP RedeLocal" dst-port=80,443 out-interface-list=Internet protocol=udp src-address-list=RangeDircon
add action=accept chain=forward comment="FWD Email RedeLocal" dst-port=25,110,143,465,587,993,995 out-interface-list=Internet protocol=tcp src-address-list=RangeDircon
add action=accept chain=forward comment="FWD Docker" dst-address=10.90.0.18 dst-port=80,443 protocol=tcp
add action=accept chain=forward comment="FWD SC TMSA" dst-address=10.90.0.17 dst-port=8042,8043 in-interface=ether1 protocol=tcp
add action=accept chain=forward comment="FWD SC TMSA" dst-address=10.90.0.5 dst-port=8041 in-interface=ether1 protocol=tcp
add action=accept chain=forward comment="FWD iPorto" dst-address=10.90.0.25 dst-port=3389 protocol=tcp
add action=accept chain=forward comment="FWD IPs liberados Internet" out-interface-list=Internet src-address-list=IPs_Liberados
add action=drop chain=forward comment="Drop all other forward (seguraca padrao)" disabled=yes
add action=passthrough chain="-- Seperador --" comment="# ==== CADEIAS DE PROTE\C3\87\C3\83O ==== #"
add action=drop chain=ProtecaoInput comment="Bloqueia BlackList Input" disabled=yes src-address-list=BlackList
add action=add-src-to-address-list address-list=BlackList address-list-timeout=1d chain=ProtecaoInput comment="Detecta portscan" disabled=yes protocol=tcp psd=21,3s,3,1
add action=drop chain=ProtecaoForward comment="Bloqueia BlackList Forward" disabled=yes src-address-list=BlackList
add action=passthrough chain="-- Seperador --" comment="# ==== PORT-KNOCKING ==== #"
add action=add-src-to-address-list address-list=KnockKnock_Fase1 address-list-timeout=30s chain=KnowKnow comment="KnockKnock Fase 1" dst-port=2009 in-interface=ether1 protocol=tcp
add action=add-src-to-address-list address-list=KnockKnock_Fase2 address-list-timeout=30s chain=KnowKnow comment="KnockKnock Fase 2" dst-port=2018 in-interface=ether1 protocol=tcp src-address-list=KnockKnock_Fase1
add action=add-src-to-address-list address-list=KnockKnock_Fase3 address-list-timeout=1h chain=KnowKnow comment="KnockKnock Fase 3" dst-port=2036 in-interface=ether1 protocol=tcp src-address-list=KnockKnock_Fase2
add action=passthrough chain="-- Seperador --" comment="# ==== SERVI\C3\87OS LIBERADOS (ServicesInput) ==== #"
add action=accept chain=ServicesInput comment="Winbox LAN" dst-port=8291 protocol=tcp src-address-list=RangeInterno
add action=accept chain=ServicesInput comment="Winbox adviceIT" dst-port=8291 protocol=tcp src-address-list=adviceIT
add action=accept chain=ServicesInput comment="Dude adviceIT" dst-port=2210,2211 protocol=tcp src-address-list=adviceIT
add action=accept chain=ServicesInput comment="DNS LAN" dst-port=53 protocol=udp src-address-list=RangeInterno
add action=accept chain=ServicesInput comment="DHCP LAN" dst-port=67 protocol=udp src-address-list=RangeInterno
add action=accept chain=ServicesInput comment="DHCP LAN" dst-port=68 protocol=udp src-address-list=RangeInterno
add action=accept chain=ServicesInput comment="Winbox web LAN" dst-port=8081 protocol=tcp src-address-list=RangeInterno
add action=accept chain=ServicesInput comment="Winbox web adviceIT" dst-port=8081 protocol=tcp src-address-list=adviceIT
add action=accept chain=ServicesInput comment=WireGuard dst-port=51820 protocol=tcp
add action=accept chain=ServicesInput comment=OSPF protocol=ospf
add action=accept chain=ServicesInput comment=WireGuard dst-port=51820 protocol=udp
add action=accept chain=ServicesInput comment="FTP LAN" dst-port=21 protocol=tcp src-address-list=RangeInterno
add action=accept chain=ServicesInput comment="FTP adviceIT" dst-port=21 protocol=tcp src-address-list=adviceIT
add action=accept chain=ServicesInput comment="Telnet LAN" dst-port=23 protocol=tcp src-address-list=RangeInterno
add action=accept chain=ServicesInput comment="Telnet adviceIT" dst-port=23 protocol=tcp src-address-list=adviceIT
add action=accept chain=ServicesInput comment="SSH LAN" dst-port=22 protocol=tcp src-address-list=RangeInterno
add action=accept chain=ServicesInput comment="SSH adviceIT" dst-port=22 protocol=tcp src-address-list=adviceIT
add action=accept chain=ServicesInput comment="Ping LAN" dst-limit=1,5,src-address icmp-options=8:0 in-interface=!all-ppp protocol=icmp
add action=accept chain=ServicesInput comment="Ping VPN" icmp-options=8:0 in-interface=all-ppp protocol=icmp
add action=accept chain=ServicesInput comment="GRE VPN" protocol=gre
add action=accept chain=ServicesInput comment=OpenVPN dst-port=1194 protocol=tcp
add action=accept chain=ServicesInput comment=OpenVPN dst-port=1195 protocol=tcp
add action=accept chain=ServicesInput comment=PPTP dst-port=1723 protocol=tcp
add action=accept chain=ServicesInput comment="L2TP TCP" dst-port=1701 protocol=tcp
add action=accept chain=ServicesInput comment="L2TP UDP" dst-port=1701 protocol=udp
add action=accept chain=ServicesInput comment="SNMP adviceIT" dst-port=161 protocol=udp src-address-list=adviceIT
/ip firewall mangle
add action=mark-connection chain=prerouting comment="Marca conex\C3\B5es HTTP/HTTPS TCP e UDP" disabled=yes dst-address-list=!adviceIT new-connection-mark=HTTP-Conn src-address=10.13.0.5 src-address-list=!adviceIT
add action=mark-connection chain=prerouting disabled=yes dst-address-list=adviceIT new-connection-mark=HTTP-Conn src-address=10.13.0.5 src-address-list=!adviceIT
add action=mark-packet chain=prerouting connection-mark=HTTP-Conn disabled=yes dst-address-list=adviceIT new-packet-mark=HTTP-Pkt src-address=10.13.0.5 src-address-list=!adviceIT
add action=mark-routing chain=prerouting connection-mark=HTTP-Conn disabled=yes dst-address-list=!adviceIT new-routing-mark=HTTP-Route passthrough=no src-address=10.13.0.5 src-address-list=!adviceIT
add action=change-mss chain=forward comment="Tamanho Pacote Dircon" new-mss=1360 protocol=tcp tcp-flags=syn tcp-mss=1361-65535
/ip firewall nat
add action=dst-nat chain=dstnat dst-address=200.194.250.250 dst-port=80,443 protocol=tcp to-addresses=10.90.0.18
add action=dst-nat chain=dstnat dst-address=200.194.250.250 dst-port=8041 protocol=tcp to-addresses=10.90.0.5
add action=dst-nat chain=dstnat dst-address=200.194.250.250 dst-port=8042,8043 protocol=tcp to-addresses=10.90.0.17
add action=masquerade chain=srcnat comment=ScreenConnect dst-address=10.90.0.5 dst-port=8040,8041 out-interface=BRD_OUTCORE protocol=tcp
add action=dst-nat chain=dstnat comment=iPorto dst-address=10.90.0.25 dst-port=3390 protocol=tcp to-addresses=10.90.0.25 to-ports=3389
add action=masquerade chain=srcnat comment="Mascara VPN para os Clientes" in-interface=WG_OUTCORE_TELIUM out-interface=all-ppp src-address=192.168.31.0/24
add action=masquerade chain=srcnat comment="Mascara VPN para os Clientes" in-interface=WG_OUTCORE_TELIUM out-interface=all-ppp src-address=10.91.0.0/16
add action=masquerade chain=srcnat comment="Mascara VPN para os Clientes" in-interface=vlan_101 out-interface=all-ppp src-address=10.91.0.0/16
add action=masquerade chain=srcnat comment="Mascara VPN para os Clientes" in-interface=vlan_101 out-interface=BRD_DIRCON src-address=10.91.0.0/16
add action=masquerade chain=srcnat comment="Libera navegacao da rede interna" in-interface=BRD_DIRCON out-interface-list=Internet
add action=masquerade chain=srcnat comment="Libera navegacao da rede interna" in-interface=BRD_OUTCORE out-interface-list=Internet
add action=src-nat chain=srcnat comment="Libera navegacao da rede interna" in-interface=BRD_OUTCORE out-interface=ether1 to-addresses=200.194.250.250
add action=src-nat chain=srcnat comment="Libera navegacao da rede interna" in-interface=BRD_OUTCORE out-interface=pppoe-out-cyber to-addresses=38.250.225.25
/ip firewall service-port
set sip disabled=yes
/ip ipsec identity
add peer=iPORTO secret=VPN@IPSec&2018
add peer=GuaridaPE-BR secret="aijkajiah877625\$#!4eafddfhgja"
add peer=GuaridaDC-ELEA secret="aijkajiah877625\$#!4eafddfhgja"
add peer=Auxiliadora secret=VPN@IPSec&2018
add peer=TMSA-Telium secret=Senha@OutCore2022
add peer=TMSA-BRDigital secret=Senha@OutCore2020
add peer=GuaridaZonaSul-BR secret="aijkajiah877625\$#!4eafddfhgja"
add peer=GuaridaBelaVista-BR secret="aijkajiah877625\$#!4eafddfhgja"
add peer=GuaridaZonaSul-Sygo secret="aijkajiah877625\$#!4eafddfhgja"
add peer=GuaridaCentro-Sygo secret="aijkajiah877625\$#!4eafddfhgja"
add peer=GuaridaCapaoCanoa-Sygo secret="aijkajiah877625\$#!4eafddfhgja"
add peer=GuaridaCentro-BR secret="aijkajiah877625\$#!4eafddfhgja"
add peer=GuaridaCapaoCanoa-BR secret="aijkajiah877625\$#!4eafddfhgja"
add peer=GuaridaBelaVista-Sygo secret="aijkajiah877625\$#!4eafddfhgja"
add peer=GuaridaPE-Sygo secret="aijkajiah877625\$#!4eafddfhgja"
add peer=OCI-VR-CYBER secret=Sj2yTxiynMoWVv9shmAKSS3eSwcZ9jCNpOFo1dtoWDQxJafsDtIPZdL4IjPFPY2d
add peer=CCEE secret=NyldYkAOgSLPSdnB9xku
add peer=RussellPoa secret=SenhaIPSecRussell2021
add peer=GuaridaDC-BR secret="aijkajiah877625\$#!4eafddfhgja"
add peer=OCI-VR-TELIUM secret=BW8qocjtzl6yx85gziybKvXPs5XMnP3xGCfKThyn5FWM6Orwm2p4SHl4AahtgkK2
/ip ipsec policy
add comment=Guarida disabled=yes dst-address=10.10.16.0/24 peer=GuaridaCapaoCanoa-BR proposal=Guarida src-address=10.90.0.0/16 tunnel=yes
add comment=Guarida disabled=yes dst-address=10.10.16.0/24 peer=GuaridaCapaoCanoa-Sygo proposal=Guarida src-address=10.90.0.0/16 tunnel=yes
add comment=Guarida disabled=yes dst-address=10.10.13.0/24 peer=GuaridaZonaSul-BR proposal=Guarida src-address=10.90.0.0/16 tunnel=yes
add comment=Guarida disabled=yes dst-address=10.10.13.0/24 peer=GuaridaZonaSul-Sygo proposal=Guarida src-address=10.90.0.0/16 tunnel=yes
add comment=Guarida disabled=yes dst-address=10.10.12.0/24 peer=GuaridaBelaVista-BR proposal=Guarida src-address=10.90.0.0/16 tunnel=yes
add comment=Guarida disabled=yes dst-address=10.10.12.0/24 peer=GuaridaBelaVista-Sygo proposal=Guarida src-address=10.90.0.0/16 tunnel=yes
add comment=Guarida disabled=yes dst-address=10.10.20.0/24 peer=GuaridaPE-Sygo proposal=Guarida src-address=10.90.0.0/16 tunnel=yes
add comment=Guarida disabled=yes dst-address=10.10.201.0/24 peer=GuaridaPE-Sygo proposal=Guarida src-address=10.90.0.0/16 tunnel=yes
add comment=Guarida disabled=yes dst-address=10.10.10.0/24 peer=GuaridaDC-ELEA proposal=Guarida src-address=10.90.0.0/16 tunnel=yes
add comment=Guarida disabled=yes dst-address=10.10.10.0/24 peer=GuaridaDC-BR proposal=Guarida src-address=10.90.0.0/16 tunnel=yes
add comment=Guarida disabled=yes dst-address=10.10.200.0/24 peer=GuaridaDC-ELEA proposal=Guarida src-address=10.90.0.0/16 tunnel=yes
add comment=Guarida disabled=yes dst-address=10.10.200.0/24 peer=GuaridaDC-BR proposal=Guarida src-address=10.90.0.0/16 tunnel=yes
add comment=Guarida disabled=yes dst-address=10.10.80.0/24 peer=GuaridaDC-ELEA proposal=Guarida src-address=10.90.0.0/16 tunnel=yes
add comment=Guarida disabled=yes dst-address=10.10.80.0/24 peer=GuaridaDC-BR proposal=Guarida src-address=10.90.0.0/16 tunnel=yes
add comment=Guarida disabled=yes dst-address=10.10.20.0/24 peer=GuaridaPE-BR proposal=Guarida src-address=10.90.0.0/16 tunnel=yes
add comment=Guarida disabled=yes dst-address=10.10.201.0/24 peer=GuaridaPE-BR proposal=Guarida src-address=10.90.0.0/16 tunnel=yes
add comment=GuaridaCentro disabled=yes dst-address=10.10.30.0/24 peer=GuaridaCentro-BR proposal=Guarida src-address=10.90.0.0/16 tunnel=yes
add comment=GuaridaCentro disabled=yes dst-address=10.10.30.0/24 peer=GuaridaCentro-Sygo proposal=Guarida src-address=10.90.0.0/16 tunnel=yes
add comment=TMSA disabled=yes dst-address=10.55.0.0/16 peer=TMSA-BRDigital proposal=TMSA src-address=10.90.0.0/16 tunnel=yes
add comment=TMSA disabled=yes dst-address=10.50.0.0/16 peer=TMSA-Telium proposal=TMSA src-address=10.90.0.0/16 tunnel=yes
add comment="Vila Rica OCI" disabled=yes dst-address=192.168.0.0/24 peer=OCI-VR-CYBER proposal=OCI-VR src-address=10.90.0.0/16 tunnel=yes
add comment="Vila Rica OCI" disabled=yes dst-address=192.168.0.0/24 peer=OCI-VR-TELIUM proposal=OCI-VR src-address=10.90.0.0/16 tunnel=yes
add comment="Vila Rica OCI" disabled=yes dst-address=192.168.1.0/24 peer=OCI-VR-CYBER proposal=OCI-VR src-address=10.90.0.0/16 tunnel=yes
add comment="Russell Poa" disabled=yes dst-address=10.31.0.0/16 peer=RussellPoa proposal=RussellPoa src-address=10.90.0.0/16 tunnel=yes
/ip route
add disabled=no distance=50 dst-address=0.0.0.0/0 gateway=200.194.250.249 routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add disabled=yes distance=1 dst-address=10.91.0.0/16 gateway=10.254.254.6 routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add disabled=yes distance=1 dst-address=200.170.252.138/32 gateway=200.194.250.249 routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add disabled=no distance=51 dst-address=0.0.0.0/0 gateway=pppoe-out-cyber routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add comment="PBX -> Cyber" disabled=yes distance=10 dst-address=177.137.116.100/32 gateway=200.194.250.249 routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add disabled=no distance=1 dst-address=0.0.0.0/0 gateway=pppoe-out-cyber routing-table=to_Cyber scope=30 suppress-hw-offload=no target-scope=10
add disabled=no distance=1 dst-address=0.0.0.0/0 gateway=200.194.250.249 routing-table=to_Telium scope=30 suppress-hw-offload=no target-scope=10
add check-gateway=ping disabled=no distance=45 dst-address=140.238.179.137/32 gateway=pppoe-out-cyber routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add disabled=no distance=45 dst-address=140.238.179.137/32 gateway=200.194.250.249 routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add disabled=no distance=1 dst-address=10.13.16.0/20 gateway=10.254.213.2 routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add disabled=no distance=1 dst-address=10.13.100.0/20 gateway=10.254.213.2 routing-table=main scope=30 suppress-hw-offload=no target-scope=10
/ip service
set ftp address=0.0.0.0/0 disabled=yes
set ssh address=131.0.100.0/22,10.77.0.0/16,10.78.0.0/16,10.90.0.0/16,10.93.0.0/16
set telnet address=131.0.100.0/22,10.78.0.0/16,10.77.0.0/16,10.90.0.0/16,10.93.0.0/16
set www address=131.0.100.0/22,10.77.0.0/16,10.78.0.0/16,10.90.0.0/16,10.93.0.0/16,192.168.31.0/24 port=8081
set winbox address=131.0.100.0/22,10.78.0.0/16,10.90.0.0/16,10.93.0.0/24,10.88.79.13/32,10.88.79.30/32,10.91.0.0/16,192.168.31.0/24,200.170.252.138/32,45.235.208.49/32
set api address=10.90.0.0/16,10.95.0.0/24 disabled=yes
set api-ssl address=10.90.0.0/16,10.95.0.0/24 disabled=yes
/ip smb shares
set [ find default=yes ] directory=/pub
/ppp secret
add name=OpenVPN-DermatoItaigara password=aAAC51at8D9L7a profile=ovpn remote-address=10.88.79.68 service=ovpn
add name=OpenVPN-DermatoVilas password=aAAC51at8D9L7a profile=ovpn remote-address=10.88.79.135 service=ovpn
add name=OpenVPN-ProntoOlhos-Jacinto password=ZsQ63s5E6sPDyWpB profile=ovpn remote-address=10.88.79.220 routes=192.168.4.0/24,10.0.91.0/24 service=ovpn
add name=OpenVPN-Central-AB password=FLrqcshhKZ7a46E profile=ovpn routes=192.168.5.0/24 service=ovpn
add name=OpenVPN-Central-ABOdonto password=FLrqcshhKZ7a46E profile=ovpn routes=192.168.11.0/24 service=ovpn
add name=OpenVPN-Central-Canoas password=FLrqcshhKZ7a46E profile=ovpn remote-address=10.88.79.44 routes=192.168.6.0/24 service=ovpn
add name=OpenVPN-Central-Cachoeirinha password=FLrqcshhKZ7a46E profile=ovpn remote-address=10.88.79.43 routes=192.168.7.0/24 service=ovpn
add name=OpenVPN-Central-Alvorada password=FLrqcshhKZ7a46E profile=ovpn remote-address=10.88.79.14 routes=192.168.8.0/24 service=ovpn
add name=OpenVPN-MCK password=sjsh7861GFA7651Da profile=ovpn routes=172.45.0.0/16 service=ovpn
add disabled=yes name=OpenVPN-Infosul password=jhgs67fgagfRE4 profile=ovpn routes=172.35.0.0/24 service=ovpn
add name=OpenVPN-Central-Adm password=FLrqcshhKZ7a46E profile=ovpn remote-address=10.88.79.40 routes="192.168.3.0/24, 192.168.1.0/24,192.168.10.0/24, 10.253.222.0/24" service=ovpn
add name=OpenVPN-Russell-SP password=KJGHGkjjhbu56687j profile=ovpn remote-address=10.88.79.119 routes=10.33.0.0/16 service=ovpn
add name=OpenVPN-DorvoColinas password=MqbVz7nWalY3 profile=ovpn routes=172.21.0.0/16 service=ovpn
add name=OpenVPN-Dorvo password=MqbVz7nWalY3 profile=ovpn routes=172.22.0.0/16 service=ovpn
add name=OpenVPN-Loja7200 password="fsER\$\$5fsfj586" profile=ovpn remote-address=10.88.79.12 routes=192.168.0.2/32,192.168.0.6/32 service=ovpn
add name=OpenVPN-Idealle password=6PNPqm5ZNnRa profile=ovpn routes=10.11.1.0/24 service=ovpn
add name=OpenVPN-Central-Azenha password=FLrqcshhKZ7a46E profile=ovpn remote-address=10.88.79.42 routes=192.168.12.0/24 service=ovpn
add name=OpenVPN-ProntoOlhos-Nilo password=Ij700O9lZAbqAdwg profile=ovpn routes=10.0.93.0/24 service=ovpn
add name=OpenVPN-Machado password=5KWnJvHahkuO profile=ovpn remote-address=10.88.79.66 routes=172.20.3.0/24 service=ovpn
add name=OpenVPN-Elastonordeste password=h894K5jA7xTmv4b profile=ovpn routes=172.24.0.0/16 service=ovpn
add name=OpenVPN-RRF password=4278gSs1SF profile=ovpn routes=172.26.0.0/16 service=ovpn
add name=OpenVPN-AGI password=aak27892JHGA88 profile=ovpn remote-address=10.88.79.133 routes=172.37.0.0/16 service=ovpn
add name=OpenVPN-ProntoOlhos-Centro password=ZsQ63s5E6sPDyWpB profile=ovpn remote-address=10.88.79.233 routes=10.0.90.0/24 service=ovpn
add name=OpenVPN-Russell-RJ password=KJGHGkjjhbgd856687j profile=ovpn routes=10.32.0.0/16 service=ovpn
add name=OpenVPN-RafaelSouza password=3eadasRRDf3109 profile=ovpn remote-address=10.88.79.23 service=ovpn
add name=OpenVPN-EduardoAlcay password=3eadasRRDf3109 profile=ovpn remote-address=10.88.79.13
add name=OpenVPN-RafaelSouza-Mac password=3eadasRRDf3109 profile=ovpn remote-address=10.88.79.16 service=ovpn
add name=OpenVPN-Central-Gravatai password=FLrqcshhKZ7a46E profile=ovpn remote-address=10.88.79.47 routes=192.168.14.0/24 service=ovpn
add name=OpenVPN-DGT-Poa password=3easRRDfdf321323 profile=ovpn remote-address=10.88.79.20 routes=10.29.0.0/16 service=ovpn
add name=OpenVPN-Edlo-Canoas password=aAAC51at8D9L7a profile=ovpn remote-address=10.88.79.248 service=ovpn
add name=OpenVPN-Loja7200Escritorio password=skjs7816aGA651! profile=ovpn remote-address=10.88.79.11 service=ovpn
add name=OpenVPN-Argos password=4BaSQAme5u profile=ovpn routes=10.19.0.0/16 service=ovpn
add name=OpenVPN-MedTrabalho password=5SUhxU58IzDj profile=ovpn remote-address=10.88.79.9 routes=192.168.15.0/24 service=ovpn
add name=OpenVPN-Rodrigues password=BQsG9iP4EZum profile=ovpn remote-address=10.88.79.65 routes=10.14.0.0/16 service=ovpn
add name=OpenVPN-iPorto-Otavio password=FjGHfpzmCZXvVM4k10v1n0tBg profile=ovpn remote-address=10.88.79.33 service=ovpn
add disabled=yes name=OpenVPN-SergioSanti password=zYcwcKZi0efFH2izoznb profile=ovpn service=ovpn
add name=OpenVPN-iPorto-Fernanda password=OpenVPN-iPorto-Fernanda@2022 profile=ovpn remote-address=10.88.79.27 service=ovpn
add name=OpenVPN-iPorto-Daniela password=gHFJYtOFKwpptNWoiTkh45 profile=ovpn remote-address=10.88.79.25 service=ovpn
add name=OpenVPN-iPorto-Ygor password=qXNeTRKpZ1EYBn5PT0WE profile=ovpn remote-address=10.88.79.93 service=ovpn
add disabled=yes name=OpenVPN-CMA password=aj615rFAPU3 profile=ovpn routes=192.168.254.0/24 service=ovpn
add disabled=yes name=OpenVPN-Therapi-Fabrica password=plGEt4NKjaN3 profile=ovpn routes=10.66.0.0/16 service=ovpn
add name=OpenVPN-BVC password=4nOz1qfzrO profile=ovpn routes=10.18.0.0/16 service=ovpn
add name=OpenVPN-Belmondo password=1NZTX5FtZ6Zo profile=ovpn remote-address=10.88.79.18 routes=10.1.1.0/24 service=ovpn
add name=OpenVPN-Cooperpoa password=0E1F3h5Nwq profile=ovpn remote-address=10.88.79.67 routes=10.0.12.0/24 service=ovpn
add name=OpenVPN-Dircon password=eerPH6Cy94FGhjk profile=ovpn service=ovpn
add name=OpenVPN-VR-Esteio password=4WJbujN9kMmj2uPL2PCz profile=ovpn routes=10.10.60.0/24 service=ovpn
add name=OpenVPN-VR-SaoLeo password=wJKkv2UbbcUaDiuSu7z8 profile=ovpn remote-address=10.88.79.221 routes=10.10.30.0/24 service=ovpn
add name=OpenVPN-VR-NH password=OJzcqF8ZQWqO8AkUI94Q profile=ovpn routes=10.10.40.0/24 service=ovpn
add name=OpenVPN-VR-POA password=mvGwLigK0Wmko2MKrn6T profile=ovpn remote-address=10.88.79.7 service=ovpn
add name=OpenVPN-VR-Sapucaia password=jHYg8DbdrlqCfAmTZgLq profile=ovpn routes=10.10.70.0/24 service=ovpn
add comment="Rafael - Casa" name=OpenVPN-RafaelSouzaHomeOffice password=3eadasRRDf3109 profile=ovpn remote-address=10.88.79.30 routes=192.168.31.0/24 service=ovpn
add name=OpenVPN-VR-Matriz password=NGRkhzkD5NhRt96 profile=ovpn routes="10.10.50.0/24, 168.181.166.246/32" service=ovpn
add name=OpenVPN-Russell-Poa password=KJGHGkjjhbgd856687j profile=ovpn remote-address=10.88.79.225 routes=10.31.0.0/16 service=ovpn
add disabled=yes name=OpenVPN-CafedoMercado password=GBlxo2kQHnrpX42Wz4GzIOLut0rRC profile=ovpn remote-address=10.88.79.147 service=ovpn
add disabled=yes name=OpenVPN-Thiago password=oiudlks7816725tyh profile=ovpn remote-address=10.88.79.34 service=ovpn
add disabled=yes name=OpenVPN-Therapi-ADM password=plGEt4NKjaN3 profile=ovpn routes=192.168.2.0/24 service=ovpn
add name=OpenVPN-Edlo-Sapucaia password=kuNeYayOk3lNuW9N profile=ovpn remote-address=10.88.79.240 routes=10.28.0.0/24 service=ovpn
add disabled=yes name=OpenVPN-AuxZN password=BQsG9iP4EZum profile=ovpn remote-address=10.88.79.188 routes=10.64.0.0/16 service=ovpn
add disabled=yes name=OpenVPN-Osmar password=twq79AbcXLJ0Rb9m profile=ovpn routes=10.12.0.0/16 service=ovpn
add name=OpenVPN-Central-DF47 password=FLrqcshhKZ7a46E profile=ovpn remote-address=10.88.79.49 routes=192.168.18.0/24 service=ovpn
add disabled=yes name=OpenVPN-OdontoMaster-Aracaju password=rvNJaudpddhR3WmCh3 profile=ovpn routes=10.21.0.0/16 service=ovpn
add name=OpenVPN-OutCore-OVH password=mvGwLigK0Wmko64322MKrn6T profile=ovpn remote-address=10.88.79.114 routes=10.93.0.0/24 service=ovpn
add name=OpenVPN-VR-Caxias password=Q76Rbo8sTjD5HpH1 profile=ovpn remote-address=10.88.79.187 routes=10.10.80.0/24 service=ovpn
add name=OpenVPN-Dorvo-Antonio password=MqbVz7nWalY3 profile=ovpn remote-address=10.88.79.21 routes=10.23.1.0/24 service=ovpn
add name=OpenVPN-Dorvo-Paulo password=6msBCiOMAny4 profile=ovpn routes=10.23.0.0/24 service=ovpn
add name=OpenVPN-iPorto-Francisco password=qXNeTRKpZ1EYBn5PT0WE profile=ovpn remote-address=10.88.79.26 service=ovpn
add name=OpenVPN-UDC password=sBeHd1Pmpjf3MJf5 profile=ovpn routes=10.15.0.0/16 service=ovpn
add name=OpenVPN-OutCore-OVH-Hyper-V password=mvGwLigK0Wmko64322MKrn6T profile=ovpn remote-address=10.88.79.115 service=ovpn
add name=OpenVPN-Alianca-Capao password=ykF69BOVESvC profile=ovpn remote-address=10.88.79.64 routes=10.42.0.0/16 service=ovpn
add name=OpenVPN-OutCore-DCTelium password=4XUawTK4PCQZ profile=ovpn
add name=OpenVPN-Alianca-Telium password=ykF69BOVESvC profile=ovpn remote-address=10.88.79.63 service=ovpn
add name=OpenVPN-Alianca-Matriz password=ykF69BOVESvC profile=ovpn remote-address=10.88.79.62 routes=192.168.0.0/24 service=ovpn
add name=OpenVPN-Alianca-Cachoeirinha password=ykF69BOVESvC profile=ovpn remote-address=10.88.79.61 routes=192.168.2.0/24 service=ovpn
add comment=Dircon name=OpenVPN-Bruna password=Bruna@dircon2025 profile=ovpn remote-address=10.98.97.2 service=ovpn
add name=OpenVPN-Jair password=Jair@dircon2025 profile=ovpn remote-address=10.98.97.3 service=ovpn
/routing bfd configuration
add disabled=no
/routing filter rule
add chain=ospf-out disabled=no rule="if ( dst in 200.194.250.248/30 || dst in 200.170.252.136/30 || dst in 10.254.254.4/30 || dst in 10.254.254.12/30 || dst in 177.137.116.100/32 || dst in 10.254.254.16/30 ) {reject} else {accept}"
/routing ospf interface-template
add area=OSPF_ESCRITORIO_AREA0 comment="Rede Lan2Lan" cost=10 disabled=no networks=10.254.254.4/30 type=ptp use-bfd=yes
add area=OSPF_ESCRITORIO_AREA0 comment="IP LoopBack" disabled=no networks=1.255.255.1/32 passive type=ptp
add area=OSPF_ESCRITORIO_AREA0 comment="Rede WireGuard RAFAEL" cost=100 disabled=no networks=10.254.254.12/30 type=ptp
add area=OSPF_ESCRITORIO_AREA0 comment="Rede WireGuard ESCRITORIO" cost=100 disabled=no networks=10.254.254.16/30 type=ptp use-bfd=yes
add area=OSPF_ESCRITORIO_AREA0 cost=100 disabled=no interfaces=WG_OUTCORE_TELIUM type=ptp use-bfd=yes
/routing rule
add action=lookup-only-in-table disabled=no dst-address=177.137.116.100/32 src-address=10.90.0.10/32 table=to_Cyber
add action=lookup-only-in-table disabled=no dst-address=177.137.116.100/32 src-address=10.13.0.10/32 table=to_Telium
/snmp
set contact=TI enabled=yes location=Matriz trap-version=2
/system clock
set time-zone-name=America/Sao_Paulo
/system identity
set name=fw-OutCore-Telium
/system logging
set 0 disabled=yes prefix=:Info
set 1 prefix=:Error
set 2 prefix=:Warning
set 3 action=memory prefix=:Critical
add topics=dude
/system routerboard settings
set auto-upgrade=yes baud-rate=9600 boot-delay=5s
/system scheduler
add disabled=yes interval=1d name=runScriptRebootAutomatico on-event=ScriptRebootAutomatico policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive start-date=2015-11-20 start-time=04:00:00
add interval=1w name=runScriptBackup on-event=ScriptBackup policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive start-date=2025-06-27 start-time=12:00:00
add disabled=yes interval=30m name=runScriptDDNS on-event=ScriptDDNS policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive start-date=2015-11-19 start-time=22:48:17
add disabled=yes interval=15s name=runScriptFailOver on-event=ScriptFailOver policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive start-date=2015-11-19 start-time=00:00:00
add disabled=yes interval=1m name=runScriptKillConnection on-event=ScriptKillConnection policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon start-date=2024-04-17 start-time=18:27:38
/system script
add dont-require-permissions=no name=ScriptRebootAutomatico owner=adviceit policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive source="/system reboot"
add dont-require-permissions=no name=ScriptDDNS owner=adviceit policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive source=\
    ":global previousIP;\r\
    \n:log info \"Fetching current IP\"\r\
    \n/tool fetch url=\"http://ddns.empresadesuporte.com/cPanelApi/updateDDns.php\?&Cliente=adviceit\" mode=http"
add dont-require-permissions=no name=scriptDDNSRotaPadrao owner=adviceit policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive source=\
    "  :global previousIP;\r\
    \n  :log info \"Fetching current IP\"\r\
    \n  /tool fetch url=\"http://ddns.empresadesuporte.com/cPanelApi/updateDDns.php\?&Cliente=dinamize\" mode=http"
add dont-require-permissions=no name=ScriptKillConnection owner=adviceit policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon source=ip/ipsec/active-peers/kill-connection
add dont-require-permissions=no name=ScriptBackup owner=adviceit policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon source="# Defini\E7\F5es\r\
    \n:local identity [/system identity get name]\r\
    \n:local date [/system clock get date]\r\
    \n:local time [/system clock get time]\r\
    \n:local dtClean ([:pick \$date 0 4] . [:pick \$date 5 7] . [:pick \$date 8 10])\r\
    \n:local tmClean ([:pick \$time 0 2] . [:pick \$time 3 5])\r\
    \n:local bkpname (\$identity . \"-\" . \$dtClean . \"-\" . \$tmClean)\r\
    \n\r\
    \n:local assunto (\"Backup-\" . \$identity)\r\
    \n:local mailde \"outcore@empresadesuporte.com\"\r\
    \n:local mailpara \"backup@outcore.com.br\"\r\
    \n:local ipserver [:resolve \"mail.empresadesuporte.com\"]\r\
    \n:local texto (\"Arquivo Gerado dia: \" . \$date . \" \E0s: \" . \$time)\r\
    \n:local arquivobkp \"yes\"\r\
    \n\r\
    \n# Define nomes completos dos arquivos\r\
    \n:local bkpfile (\$bkpname . \".backup\")\r\
    \n:local expfile (\$bkpname . \".rsc\")\r\
    \n\r\
    \n:log info \"Iniciando procedimento de backup autom\E1tico\"\r\
    \n\r\
    \n# Gera backups\r\
    \n:if (\$arquivobkp = \"yes\") do={\r\
    \n    /system backup save name=\$bkpname;\r\
    \n    /export file=\$bkpname;\r\
    \n}\r\
    \n\r\
    \n:delay 10s\r\
    \n\r\
    \n# Envia por e-mail\r\
    \n:log info \"Enviando e-mail com backups\"\r\
    \n/tool e-mail send to=\$mailpara subject=(\$assunto . \"-bkp\") body=\$texto file=(\$bkpfile, \$expfile)\r\
    \n\r\
    \n:delay 10s\r\
    \n\r\
    \n# Remove arquivos tempor\E1rios\r\
    \n:log info \"Removendo arquivos de backup\"\r\
    \n/file remove \$bkpfile\r\
    \n/file remove \$expfile\r\
    \n\r\
    \n:log info \"Backup conclu\EDdo com sucesso\""
add dont-require-permissions=no name=BackupDude owner=adviceit policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon source="# Defini\EF\BF\BD\EF\BF\BDes\
    \n:local identity [/system identity get name]\
    \n:local date [/system clock get date]\
    \n:local time [/system clock get time]\
    \n:local dtClean ([:pick \$date 0 4] . [:pick \$date 5 7] . [:pick \$date 8 10])\
    \n:local tmClean ([:pick \$time 0 2] . [:pick \$time 3 5])\
    \n:local bkpname (\$identity . \"-\" . \$dtClean . \"-\" . \$tmClean)\
    \n\
    \n:local assunto (\"BackupDude-\" . \$identity)\
    \n:local mailde \"outcore@empresadesuporte.com\"\
    \n:local mailpara \"backup@outcore.com.br\"\
    \n:local ipserver [:resolve \"mail.empresadesuporte.com\"]\
    \n:local texto (\"Arquivo Gerado dia: \" . \$date . \" \EF\BF\BDs: \" . \$time)\
    \n:local arquivobkp \"yes\"\
    \n\
    \n# Define nomes completos dos arquivos\
    \n:local bkpfile (\$bkpname . \".backup\")\
    \n:local expfile (\$bkpname . \".rsc\")\
    \n\
    \n:log info \"Iniciando procedimento de backup autom\EF\BF\BDtico\"\
    \n\
    \n# Gera backups\
    \n:if (\$arquivobkp = \"yes\") do={\
    \n    /dude export-db backup-file=\$bkpname;\
    \n}\
    \n\
    \n:delay 10s\
    \n\
    \n# Envia por e-mail\
    \n:log info \"Enviando e-mail com backups\"\
    \n/tool e-mail send to=\$mailpara subject=(\$assunto . \"-bkp\") body=\$texto file=(\$bkpfile, \$expfile)\
    \n\
    \n:delay 10s\
    \n\
    \n# Remove arquivos tempor\EF\BF\BDrios\
    \n:log info \"Removendo arquivos de backup\"\
    \n/file remove \$bkpfile\
    \n/file remove \$expfile\
    \n\
    \n:log info \"Backup conclu\EF\BF\BDdo com sucesso\""
/tool e-mail
set from=outcore@empresadesuporte.com password=outcore@2025! port=587 server=10.90.0.18 user=outcore@empresadesuporte.com
/tool netwatch
add comment=Telium disabled=no down-script=\
    "/ip route disable [find comment=\"Link Telium\"]\r\
    \n:log warning \"Link Telium OFFLINE\"\r\
    \n/tool e-mail send to=\"suporte@outcore.com.br\" subject=\"OutCore - Link Telium Down\" body=\"O link Telium esta OFFLINE.\"" host=8.8.8.8 http-codes="" interval=30s packet-count=5 start-delay=30s test-script="" thr-loss-count=5 type=\
    icmp up-script="/ip route enable [find comment =\"Link Telium\"]\r\
    \n:log warning \"Link Telium ONLINE\"\r\
    \n/tool e-mail send to=\"suporte@outcore.com.br\" subject=\"OutCore - Link Telium Up\" body=\"O link Telium esta ONLINE.\""
add comment=Cyber disabled=no down-script="/ip route disable [find comment =\"Link Cyber\"]" host=8.8.4.4 http-codes="" interval=30s packet-count=5 start-delay=30s test-script="" thr-loss-count=5 type=icmp up-script=\
    "/ip route enable [find comment =\"Link Cyber\"]"
/tool romon
set enabled=yes
/tool sniffer
set filter-dst-ip-address=177.137.116.100/32 filter-interface=*A8 filter-port=sip filter-src-ip-address=10.13.0.11/32
[adviceit@fw-OutCore-Telium] > 
