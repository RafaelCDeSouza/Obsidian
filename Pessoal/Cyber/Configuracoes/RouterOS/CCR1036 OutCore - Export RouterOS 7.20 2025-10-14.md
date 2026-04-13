```sql
# 2025-10-14 19:09:10 by RouterOS 7.20
# software id = BSJD-U8ZQ
#
# model = CCR1036-8G-2S+
# serial number = 4C9302E38D57
/interface bridge
add name=BRD_OUTCORE port-cost-mode=short
add disabled=yes name=brd_dircon protocol-mode=none


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
add name=OpenVPN-CMA user=OpenVPN-CMA
add name=OpenVPN-CafedoMercado user=OpenVPN-CafedoMercado
add name=OpenVPN-Central-AB user=OpenVPN-Central-AB
add name=OpenVPN-Central-ABOdonto user=OpenVPN-Central-ABOdonto
add name=OpenVPN-Central-Adm user=OpenVPN-Central-Adm
add name=OpenVPN-Central-Alvorada user=OpenVPN-Central-Alvorada
add name=OpenVPN-Central-Azenha user=OpenVPN-Central-Azenha
add name=OpenVPN-Central-Cachoeirinha user=OpenVPN-Central-Cachoeirinha
add name=OpenVPN-Central-Canoas user=OpenVPN-Central-Canoas
add name=OpenVPN-Central-DF47 user=OpenVPN-Central-DF47
add name=OpenVPN-Central-Gravatai user=OpenVPN-Central-Gravatai
add name=OpenVPN-Cooperpoa user=OpenVPN-Cooperpoa
add name=OpenVPN-DermatoItaigara user=OpenVPN-DermatoItaigara
add name=OpenVPN-DermatoVilas user=OpenVPN-DermatoVilas
add name=OpenVPN-Dircon user=OpenVPN-Dircon
add name=OpenVPN-Dorvo user=OpenVPN-Dorvo
add name=OpenVPN-Dorvo-Antonio user=OpenVPN-Dorvo-Antonio
add name=OpenVPN-Dorvo-Paulo user=OpenVPN-Dorvo-Paulo
add name=OpenVPN-DorvoColinas user=OpenVPN-DorvoColinas
add name=OpenVPN-Edlo-Canoas user=OpenVPN-Edlo-Canoas
add name=OpenVPN-Edlo-Poa user=OpenVPN-DGT-Poa
add name=OpenVPN-Edlo-Sapucaia user=OpenVPN-Edlo-Sapucaia
add name=OpenVPN-EduardoAlcay user=OpenVPN-EduardoAlcay
add name=OpenVPN-Elastonordeste user=OpenVPN-Elastonordeste
add name=OpenVPN-Idealle user=OpenVPN-Idealle
add name=OpenVPN-Loja7200 user=OpenVPN-Loja7200
add name=OpenVPN-Loja7200Escritorio user=OpenVPN-Loja7200Escritorio
add name=OpenVPN-MCK user=OpenVPN-MCK
add name=OpenVPN-Machado user=OpenVPN-Machado
add name=OpenVPN-MedTrabalho user=OpenVPN-MedTrabalho
add name=OpenVPN-MichelleSilva user=OpenVPN-MichelleSilva
add name=OpenVPN-Osmar user=OpenVPN-Osmar
add name=OpenVPN-OutCore-DCTelium user=OpenVPN-OutCore-DCTelium
add name=OpenVPN-OutCore-OVH-Hyper-V user=OpenVPN-OutCore-OVH-Hyper-V
add name=OpenVPN-Persona user=OpenVPN-Persona
add name=OpenVPN-ProntoOlhos-Centro user=OpenVPN-ProntoOlhos-Centro
add name=OpenVPN-ProntoOlhos-Jacinto user=OpenVPN-ProntoOlhos-Jacinto
add name=OpenVPN-ProntoOlhos-Nilo user=OpenVPN-ProntoOlhos-Nilo
add name=OpenVPN-RRF user=OpenVPN-RRF
add name=OpenVPN-RafaelSouza user=OpenVPN-RafaelSouza
add name=OpenVPN-RafaelSouza-Mac user=OpenVPN-RafaelSouza-Mac
add name=OpenVPN-RafaelSouzaHomeOffice user=OpenVPN-RafaelSouzaHomeOffice
add name=OpenVPN-RafaelSouzaIII user=OpenVPN-RafaelSouzaIII
add name=OpenVPN-RafaelSouzaIV user=OpenVPN-RafaelSouzaIV
add name=OpenVPN-Rodrigues user=OpenVPN-Rodrigues
add name=OpenVPN-Russell-PR user=OpenVPN-Russell-PR
add name=OpenVPN-Russell-RJ user=OpenVPN-Russell-RJ
add name=OpenVPN-Russell-SP user=OpenVPN-Russell-SP
add name=OpenVPN-Therapi-ADM user=OpenVPN-Therapi-ADM
add name=OpenVPN-Therapi-CE user=OpenVPN-Therapi-CE
add name=OpenVPN-Therapi-ES user=OpenVPN-Therapi-ES
add name=OpenVPN-Therapi-Fabrica user=OpenVPN-Therapi-Fabrica
add name=OpenVPN-UDC user=OpenVPN-UDC
add name=OpenVPN-VR-Caxias user=OpenVPN-VR-Caxias
add name=OpenVPN-VR-Esteio user=OpenVPN-VR-Esteio
add name=OpenVPN-VR-Matriz user=OpenVPN-VR-Matriz
add name=OpenVPN-VR-NH user=OpenVPN-VR-NH
add name=OpenVPN-VR-POA user=OpenVPN-VR-POA
add name=OpenVPN-VR-SaoLeo user=OpenVPN-VR-SaoLeo
add name=OpenVPN-VR-Sapucaia user=OpenVPN-VR-Sapucaia
add name=OpenVPN-iPorto-Daniela user=OpenVPN-iPorto-Daniela
add name=OpenVPN-iPorto-Fernanda user=OpenVPN-iPorto-Fernanda
add name=OpenVPN-iPorto-Francisco user=OpenVPN-iPorto-Francisco
add name=OpenVPN-iPorto-Mauricio user=OpenVPN-iPorto-Mauricio
add name=OpenVPN-iPorto-Otavio user=OpenVPN-iPorto-Otavio
add name=OpenVPN-iPorto-Pablo user=OpenVPN-iPorto-Pablo
add name=OpenVPN-iPorto-Ygor user=OpenVPN-iPorto-Ygor
/interface ethernet
set [ find default-name=ether1 ] comment="Telium 100Mb"
set [ find default-name=ether2 ] comment="Cyber Lan2Lan 200MB"
set [ find default-name=ether3 ] comment="Rede local"
set [ find default-name=ether4 ] comment="Unifi - Reuniao"
set [ find default-name=ether5 ] comment="Uinifi - Sala"
set [ find default-name=ether8 ] comment="Cyber Internet"


/interface l2tp-ether
add allow-fast-path=yes circuit-id="" connect-to=vpn-dc.outcore.com.br cookie-length=0 digest-hash=md5 disabled=yes ipsec-secret="" l2tp-proto-version=l2tpv3-udp mac-address=FE:25:D7:33:7A:3C mtu=1400 name=l2tp-ether-OutCore-OVH use-ipsec=no \
    use-l2-specific-sublayer=no
    
    
/interface pppoe-client
add disabled=no interface=ether8 name=pppoe-out-cyber password=11373281000144 user=advice_informacao

/interface eoip
add local-address=10.154.254.2 mac-address=02:00:A8:17:8F:AD name=EOIP_OUTCORE_CYBER remote-address=10.154.254.1 tunnel-id=13
add allow-fast-path=no ipsec-secret=rT7Z25ve8UyCiusWSlH84aIuhRTC2V local-address=200.170.252.138 mac-address=02:00:A8:17:8F:AD name=EOIP_OUTCORE_TELIUM remote-address=200.194.250.250 tunnel-id=11


/interface vlan
add interface=BRD_OUTCORE name="VLAN - RADIUS" vlan-id=12
add interface=BRD_OUTCORE name="VLAN - VISITANTE" vlan-id=11
add interface=ether2 name=VLAN_TELIUM_IDC vlan-id=101
/interface bonding
add arp-ip-targets=10.154.254.1 mode=active-backup name=BND_OUTCORE_TELIUM_IDC primary=EOIP_OUTCORE_CYBER slaves=EOIP_OUTCORE_TELIUM,EOIP_OUTCORE_CYBER
/interface list
add name=Internet
add comment="Bridge(s) LAN" name=LAN
add name=Vizinhanca




/interface lte apn
set [ find default=yes ] ip-type=ipv4 use-network-apn=no

/ip dhcp-server option
add code=165 name=WMS value="'10.13.0.8:10443'"
add code=166 name=MQTT value="'10.13.0.8:10443'"
add code=167 name="Ca Validation" value="'false'"
add code=199 name="Group Token" value="'defa-o7Ri`3+P'"
add code=242 name="1600 IP Phone" value="'MCIPADD=200.225.247.124,HTTPSRVR=192.168.1.180'"


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

/ip dhcp-server
add address-pool=pool_local interface=BRD_OUTCORE lease-time=1d name=dhcp_local
add address-pool=pool_visitante interface="VLAN - VISITANTE" lease-time=10m name=dhcp_visitante
add address-pool=dhcp_pool10 interface="VLAN - RADIUS" name=dhcp1

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

/interface ovpn-client
add cipher=aes256-cbc connect-to=vpn-dc.outcore.com.br mac-address=02:FC:B3:C3:56:B5 name=ovpn-out-OutCore-OVH password=aAAC51at8D9L7a profile=ovpn user=OpenVPN-OutCore
add cipher=aes256-cbc connect-to=20.226.70.156 mac-address=02:AD:D9:08:37:87 name=ovpn-out-Russell-Azure password=BUUCWpCyi0e1dg5YYBu4 profile=ovpn protocol=udp user=OpenVPN-OutCore

/queue simple
add disabled=yes dst=192.168.1.0/24 max-limit=20M/20M name=Central target=""
add disabled=yes dst=10.90.0.251/32 max-limit=8M/8M name="Backup clientes" target="" time=8h-18h,mon,tue,wed,thu,fri
add disabled=yes dst=10.90.0.252/32 max-limit=8M/8M name=queue4 target="" time=8h-18h,mon,tue,wed,thu,fri
add disabled=yes dst=209.85.224.71/32 max-limit=10k/10k name=queue1 target=""
add disabled=yes max-limit=512k/512k name=queue2 target=10.90.0.5/32
add disabled=yes dst=10.90.0.200/32 max-limit=5M/5M name=Argos target=""
add dst=149.154.174.100/32 max-limit=1M/1M name=AGI target=""
add disabled=yes dst=10.13.0.253/32 max-limit=1M/1M name="Backup Dircon" queue=ethernet-default/ethernet-default target=10.90.0.200/32 time=8h-18h,mon,tue,wed,thu,fri total-queue=ethernet-default

/routing table
add disabled=no fib name=HTTP-Conn
add disabled=no fib name=HTTP-Conn-Alc-Oracle
add disabled=no fib name=to_link_telium
add disabled=no fib name=to_link_cyber

/snmp community
set [ find default=yes ] addresses=10.93.0.6/32


/system logging action
set 3 remote=172.190.180.119 remote-log-format=syslog syslog-facility=local0
/dude
set enabled=yes

/interface bridge port
add bridge=BRD_OUTCORE interface=ether3 internal-path-cost=10 path-cost=10 trusted=yes
add bridge=BRD_OUTCORE interface=ether4 internal-path-cost=10 path-cost=10
add bridge=BRD_OUTCORE interface=ether5 internal-path-cost=10 path-cost=10
add bridge=BRD_OUTCORE interface=BND_OUTCORE_TELIUM_IDC

/ip firewall connection tracking
set udp-timeout=3m
/ip neighbor discovery-settings
set discover-interface-list=Vizinhanca




/ip settings
set max-neighbor-entries=8192
/ipv6 settings
set disable-ipv6=yes max-neighbor-entries=8192 soft-max-neighbor-entries=8191
/interface l2tp-server server
set enabled=yes
/interface list member
add interface=ether1 list=Internet
add interface=ether2 list=Internet
add interface=pppoe-out-cyber list=Internet
add interface=ether3 list=LAN
add interface=ether4 list=LAN
add interface=ether5 list=LAN
add interface=OpenVPN-RafaelSouzaHomeOffice list=Vizinhanca
add interface=BND_OUTCORE_TELIUM_IDC list=Vizinhanca
add interface=BRD_OUTCORE list=Internet
add interface=BRD_OUTCORE list=Vizinhanca

/interface ovpn-server server
add auth=sha1,sha256 certificate=CertOVPN-2025 cipher=blowfish128,aes128-cbc,aes192-cbc,aes256-cbc default-profile=ovpn disabled=no mac-address=FE:40:96:72:0A:C6 name=ovpn-server1


/ip address
add address=200.170.252.138/30 interface=ether1 network=200.170.252.136
add address=10.90.0.1/16 interface=BRD_OUTCORE network=10.90.0.0
add address=10.241.241.1/24 interface="VLAN - VISITANTE" network=10.241.241.0
add address=10.122.0.1/24 interface="VLAN - RADIUS" network=10.122.0.0
add address=10.13.0.3/16 disabled=yes interface=brd_dircon network=10.13.0.0
add address=10.254.254.1/30 interface=VLAN_TELIUM_IDC network=10.254.254.0
add address=10.254.252.1/29 interface=ether2 network=10.254.252.0
add address=10.154.254.2/29 interface=VLAN_TELIUM_IDC network=10.154.254.0


/ip cloud
set ddns-enabled=yes

/ip dhcp-server lease
add address=10.91.20.2 client-id=1:2:ba:d0:c3:86:c mac-address=02:BA:D0:C3:86:0C server=dhcp_local
add address=10.91.20.3 mac-address=00:25:B3:F0:A8:B2 server=dhcp_local
add address=10.91.10.107 client-id=1:0:b:82:c4:8e:d3 comment=Michelle mac-address=00:0B:82:C4:8E:D3 server=dhcp_local
add address=10.91.100.6 client-id=1:7c:c3:a1:87:8b:fb mac-address=7C:C3:A1:87:8B:FB server=dhcp_local
add address=10.91.10.10 client-id=1:0:b:82:77:f0:99 comment=ATA mac-address=00:0B:82:77:F0:99 server=dhcp_local
add address=10.91.100.28 client-id=1:a4:5d:36:29:13:1f comment="iLo - Server HP - Storage" mac-address=A4:5D:36:29:13:1F server=dhcp_local
add address=10.91.100.47 mac-address=08:94:EF:6D:07:99 server=dhcp_local
add address=10.91.100.27 client-id=1:64:1c:67:5f:e4:12 mac-address=64:1C:67:5F:E4:12 server=dhcp_local
add address=10.91.100.141 mac-address=5C:BB:F6:9E:EE:FA server=dhcp_local
add address=10.91.30.4 client-id=1:4:18:d6:28:4e:3c comment="Unifi - Sala Reuniao" mac-address=04:18:D6:28:4E:3C server=dhcp_local
add address=10.91.30.3 client-id=1:e0:bb:9e:79:34:56 mac-address=E0:BB:9E:79:34:56 server=dhcp_local
add address=10.91.100.100 client-id=1:d0:88:c:93:b7:a1 comment="Eduardo Mac Wi-Fi" mac-address=D0:88:0C:93:B7:A1 server=dhcp_local
add address=10.91.100.137 comment="BMC Lenovo - Server 253" mac-address=08:94:EF:7D:B0:A9 server=dhcp_local
add address=10.91.100.153 client-id=1:a4:5d:36:29:48:fe comment="iLo - Server HP " mac-address=A4:5D:36:29:48:FE server=dhcp_local
add address=10.91.100.250 client-id=ff:f6:86:2c:2f:0:2:0:0:ab:11:ab:29:98:f4:a6:13:9f:72 mac-address=80:C1:6E:A7:94:71 server=dhcp_local
add address=10.91.100.46 client-id=1:a4:5d:36:29:48:fc mac-address=A4:5D:36:29:48:FC server=dhcp_local
add address=10.91.30.1 client-id=1:28:70:4e:5e:70:95 comment="Unifi - Sala OutCore" mac-address=28:70:4E:5E:70:95 server=dhcp_local





/ip dhcp-server network
add address=10.90.0.0/16 dns-server=10.93.0.5,8.8.8.8 gateway=10.90.0.1
add address=10.122.0.0/24 dns-server=10.122.0.1 gateway=10.122.0.1
add address=10.241.241.0/24 dns-server=10.241.241.1 gateway=10.241.241.1 netmask=24

/ip dns
set allow-remote-requests=yes servers=208.67.222.222,8.8.8.8
/ip dns static
add address=10.90.0.5 name=unifi type=A



/ip firewall address-list
add address=10.88.77.26 list=adviceIT
add address=172.45.0.0/16 list=Range_Clientes
add address=10.80.10.0/24 list=Range_Clientes
add address=10.90.0.0/16 list=adviceIT
add address=10.88.77.2 list=VPN_Admin
add address=198.23.114.148 list=Range_Clientes
add address=10.31.0.0/16 list=Range_Clientes
add address=192.168.1.0/24 list=Range_Clientes
add address=172.21.0.0/16 list=Range_Clientes
add address=172.22.0.0/16 list=Range_Clientes
add address=10.1.1.0/24 list=Range_Clientes
add address=172.24.0.0/16 list=Range_Clientes
add address=10.241.241.0/24 list=Wifi-Visitante
add address=10.88.77.0/24 list=Range_Clientes
add address=172.26.0.0/16 list=Range_Clientes
add address=192.168.41.0/24 list=Range_Clientes
add address=192.168.2.0/24 list=Range_Clientes
add address=192.168.3.0/24 list=Range_Clientes
add address=192.168.4.0/24 list=Range_Clientes
add address=192.168.5.0/24 list=Range_Clientes
add address=192.168.6.0/24 list=Range_Clientes
add address=192.168.7.0/24 list=Range_Clientes
add address=192.168.8.0/24 list=Range_Clientes
add address=10.95.0.0/24 list=adviceIT
add address=10.45.1.0/24 list=Range_Clientes
add address=192.168.15.0/24 list=Range_Clientes
add address=10.10.0.0/16 list=Range_Clientes
add address=10.15.0.0/16 list=Range_Clientes
add address=10.17.0.0/16 list=Range_Clientes
add address=10.19.0.0/16 list=Range_Clientes
add address=10.11.0.0/16 list=Range_Clientes
add address=10.12.0.0/16 list=Range_Clientes
add address=10.13.0.0/16 list=Range_Clientes
add address=10.20.0.0/24 list=Range_Clientes
add address=10.30.0.0/16 list=Range_Clientes
add address=10.11.80.0/24 list=Range_Clientes
add address=10.91.0.0/24 list=adviceIT
add address=142.44.252.139 list=adviceIT
add address=10.16.0.0/16 list=Range_Clientes
add address=10.92.0.0/16 list=adviceIT
add address=10.90.0.0/16 list=IPs_Liberados
add address=10.93.0.0/16 list=adviceIT
add address=10.90.0.0/16 list=RangeInterno
add address=10.91.0.0/16 list=adviceIT
add address=179.184.52.110 list=adviceIT
add address=177.69.70.88 list=adviceIT
add address=10.95.0.0/16 list=adviceIT
add address=10.50.0.0/16 list=Range_Clientes
add address=10.88.77.16 list=VPN_OutCore_Admins
add address=10.88.77.6 list=VPN_OutCore_Admins
add address=10.88.79.13 list=VPN_OutCore_Admins
add address=10.3.0.0/16 list=Range_Clientes
add address=10.0.1.0/24 list=Range_Clientes
add address=10.88.77.19 list=VPN_OutCore_Admins
add address=10.2.1.0/24 list=Range_Clientes
add address=10.0.12.0/24 list=Range_Clientes
add address=192.168.100.0/24 list=Range_Clientes
add address=10.254.222.0/24 list=Range_Clientes
add address=10.88.77.33 list=VPN_OutCore_Admins
add address=10.1.0.0/16 list=Range_Clientes
add address=10.80.102.0/24 list=iPORTO
add address=200.170.252.138 list=Sem_Mangle
add address=chamados.outcore.com.br list=Sem_Mangle
add address=10.1.0.0/24 list=Range_Clientes
add address=10.88.77.28 list=VPN_OutCore_Admins
add address=10.90.0.0/16 list=Range_Clientes
add address=200.170.252.138 list=Range_Clientes
add address=10.88.77.30 list=VPN_OutCore_Admins
add address=10.77.0.0/16 list=VPN_OutCore_Admins
add address=192.168.0.0/24 list=Range_Clientes
add address=10.77.100.247 list=VPN_OutCore_Admins
add address=10.88.77.31 list=VPN_OutCore_Admins
add address=10.88.77.10 list=VPN_OutCore_Admins
add address=4c9302e38d57.sn.mynetname.net list=OutCoreExterno
add address=10.93.0.0/24 list=VPN_OutCore_Admins
add address=10.93.0.0/24 list=adviceIT
add address=10.88.77.114 list=VPN_OutCore_Admins
add address=10.88.77.155 list=VPN_OutCore_Admins
add address=192.168.254.0/24 list=Range_Clientes
add address=10.0.0.0/8 list=Sem_Mangle
add address=10.0.90.0/24 list=Range_Clientes
add address=10.0.91.0/24 list=Range_Clientes
add address=10.23.1.0/24 list=Range_Clientes
add address=192.168.255.0/24 list=Range_Clientes
add address=10.88.77.135 list=VPN_OutCore_Admins
add address=192.168.31.0/24 list=VPN_OutCore_Admins
add address=192.168.31.0/24 list=adviceIT
add address=10.90.0.200 list=VeeamBackup
add address=10.90.0.252 list=VeeamBackup
add address=10.90.0.251 list=VeeamBackup
add address=10.13.0.5 list=Dircon
add address=10.13.0.10 list=Dircon
add address=10.90.0.10 comment="PBX principal" list=PBXes
add address=10.13.0.10 comment="PBX principal" list=PBXes
add address=10.13.0.0/16 list=Dircon
add address=10.13.0.11 list=Dircon
add address=10.13.0.11 comment="PBX principal" list=PBXes
add address=10.42.0.0/16 list=Range_Clientes
add address=192.168.31.0/24 list=VPN_Admin
add address=10.88.0.0/16 list=Range_Clientes
add address=45.235.208.110 list=acessoSshPbx
add address=10.154.254.0/30 list=adviceIT



/ip firewall filter
add action=drop chain=input comment="INPUT: drop invalid" connection-state=invalid
add action=accept chain=input comment="INPUT: allow established/related" connection-state=established,related
add action=accept chain=input comment="INPUT: KnockKnock liberado (fase 3)" src-address-list=KnockKnock_Fase3
add action=jump chain=input comment="INPUT: protecoes/mitigacoes" jump-target=ProtecaoInput
add action=accept chain=input comment="INPUT: LAN -> router" src-address-list=RangeInterno
add action=accept chain=input comment="INPUT: SNMP de clientes" dst-port=161 protocol=udp src-address-list=Range_Clientes
add action=accept chain=input comment="INPUT: GRE" protocol=gre
add action=jump chain=input comment="INPUT: servicos do router" jump-target=ServicesInput
add action=drop chain=input comment="INPUT: drop others" log-prefix="Block_Input " src-address-list=adviceIT
add action=accept chain=forward disabled=yes
add action=drop chain=forward comment="FWD: drop invalid" connection-state=invalid
add action=jump chain=forward comment="JUMP SIP_BF" jump-target=SIP_BF
add action=fasttrack-connection chain=forward comment="FWD: fasttrack" connection-state=established,related hw-offload=yes
add action=accept chain=forward comment="FWD: allow established/related" connection-state=established,related
add action=jump chain=forward comment="FWD: protees/mitigaes" jump-target=ProtecaoForward
add action=drop chain=forward comment="FWD: drop BlackList_SIP (internet)" in-interface-list=Internet src-address-list=BlackList_SIP
add action=drop chain=forward comment="FWD: drop brute-forcers" in-interface-list=Internet src-address-list=bf_blacklist
add action=accept chain=forward comment="FWD: adviceIT" src-address-list=adviceIT
add action=accept chain=forward comment="FWD: Dircon" src-address-list=Dircon
add action=accept chain=forward comment="FWD: Wi-Fi Visitante" src-address-list=Wifi-Visitante
add action=accept chain=forward comment="FWD: dst 10.90.0.253 (admin)" dst-address=10.90.0.253
add action=accept chain=forward comment="FWD: OVH - OutCore (src 10.93.0.0/24)" src-address=10.93.0.0/24
add action=accept chain=forward comment="FWD: OVH - OutCore (host)" src-address=10.88.79.115
add action=accept chain=forward comment="FWD: OVH via OVPN" in-interface=ovpn-out-OutCore-OVH
add action=accept chain=forward comment="FWD: VPNs -> 10.90.0.6" dst-address=10.90.0.6 in-interface=all-ppp
# OpenVPN-iPorto-Daniela not ready
# OpenVPN-iPorto-Daniela not ready
add action=accept chain=forward comment="FWD: iPorto -> 10.90.0.25" dst-address=10.90.0.25 in-interface=OpenVPN-iPorto-Daniela
add action=accept chain=forward comment="FWD: Argos -> Backup Veeam" dst-address=10.90.0.200 in-interface=OpenVPN-Argos
# OpenVPN-EduardoAlcay not ready
# OpenVPN-EduardoAlcay not ready
add action=accept chain=forward comment="FWD: VPN Admin" in-interface=OpenVPN-EduardoAlcay
add action=accept chain=forward comment="FWD: Libera SIP Ligueai" dst-address=177.137.116.100 src-address-list=PBXes
add action=accept chain=forward comment="FWD: Libera SIP Ligueai" dst-address-list=PBXes src-address=177.137.116.100
add action=accept chain=forward comment="FWD: Libera SIP Ligueai" dst-address=10.13.0.10 src-address=10.13.0.0/16
add action=accept chain=forward comment="FWD: Libera SIP Ligueai" dst-address=10.13.0.0/16 src-address=10.13.0.10
add action=accept chain=forward comment="FWD: Proxy HTTP/HTTPS" dst-address=10.90.0.18 dst-port=80,443 protocol=tcp
add action=accept chain=forward comment="FWD: Proxy IMAP (Maciel)" dst-address=10.90.0.18 dst-port=1993 protocol=tcp src-address=40.76.19.66
add action=accept chain=forward comment="FWD: Proxy IMAP (VR)" dst-address=10.90.0.18 dst-port=1993 protocol=tcp src-address=10.10.50.41
add action=accept chain=forward comment="FWD: NAT Cmeras" dst-address=10.90.40.1 dst-port=37777 protocol=tcp
add action=accept chain=forward comment="FWD: Central (SIP/IAX/RTP)" dst-address-list=PBXes dst-port=5060,4569,10000-20000 protocol=udp
add action=accept chain=forward comment="FWD: Central (SIP/IAX/RTP)" dst-port=5060,4569,10000-20000 protocol=udp src-address-list=PBXes
add action=accept chain=forward comment="FWD: MAIL" dst-address=10.90.0.18 dst-port=25,110,143,587,465,993,995 protocol=tcp
add action=accept chain=forward comment="FWD: trfego geral do 10.90.0.18" src-address=10.90.0.18
add action=accept chain=forward comment="FWD: Orion" dst-address=10.90.0.6 dst-port=17778,161 protocol=tcp
add action=accept chain=forward comment="FWD: RDP iPorto" dst-address=10.90.0.25 dst-port=3389 protocol=tcp
add action=accept chain=forward comment="FWD: RDP Terminal" dst-address=10.90.0.4 dst-port=3389 protocol=tcp
add action=accept chain=forward comment="FWD: AD LDAP" dst-address=10.90.0.5 dst-port=389 protocol=tcp
add action=accept chain=forward comment="FWD: SSH PBX" dst-address=10.90.0.10 dst-port=22 protocol=tcp src-address-list=acessoSshPbx
add action=accept chain=forward comment="FWD: RDP AD" dst-address=10.90.0.253 dst-port=3389 protocol=tcp
add action=accept chain=forward comment="FWD: Veeam -> Alvos" dst-address-list=VeeamBackup src-address=10.13.0.253
add action=accept chain=forward comment="FWD: Alvos -> Veeam" dst-address=10.13.0.253 src-address-list=VeeamBackup
add action=accept chain=forward comment="FWD: OutCoreMTZ/OVH ida" dst-address=10.91.0.0/24 src-address=10.90.0.0/16
add action=accept chain=forward comment="FWD: OutCoreMTZ/OVH volta" dst-address=10.90.0.0/16 src-address=10.91.0.0/24
add action=accept chain=forward comment="FWD: OutCoreMTZ/RussellPoa" dst-address=10.31.0.0/16 src-address=10.90.0.0/16
add action=accept chain=forward comment="FWD: RussellAzure->OutCore" dst-address=10.90.0.0/16 src-address=10.1.0.0/24
add action=accept chain=forward comment="FWD: OutCore->RussellAzure" dst-address=10.0.0.0/16 src-address=10.90.0.0/16
add action=accept chain=forward comment="FWD: OutCore->TMSA" dst-address=10.50.0.0/16 src-address=10.90.0.0/16
add action=accept chain=forward comment="FWD: OutCore->Guarida (10.10.10.0/24)" dst-address=10.10.10.0/24 src-address=10.90.0.0/16
add action=accept chain=forward comment="FWD: OutCore->Guarida (10.10.202.0/24)" dst-address=10.10.202.0/24 src-address=10.90.0.0/16
add action=accept chain=forward comment="FWD: OutCore->Guarida (10.10.201.0/24)" dst-address=10.10.201.0/24 src-address=10.90.0.0/16
add action=accept chain=forward comment="FWD: OutCore->Guarida (10.10.200.0/24)" dst-address=10.10.200.0/24 src-address=10.90.0.0/16
add action=accept chain=forward comment="FWD: OutCore->Guarida (10.10.17.0/24)" dst-address=10.10.17.0/24 src-address=10.90.0.0/16
add action=accept chain=forward comment="FWD: OutCore->Guarida (GCP)" dst-address=34.69.204.232 src-address=10.90.0.0/16
add action=accept chain=forward comment="FWD: OutCore->Guarida (10.10.16.0/24)" dst-address=10.10.16.0/24 src-address=10.90.0.0/16
add action=accept chain=forward comment="FWD: OutCore->Guarida (172.16.10.0/24)" dst-address=172.16.10.0/24 src-address=10.90.0.0/16
add action=accept chain=forward comment="FWD: OutCore->Guarida (10.10.13.0/24)" dst-address=10.10.13.0/24 src-address=10.90.0.0/16
add action=accept chain=forward comment="FWD: OutCore->Guarida (10.10.80.0/24)" dst-address=10.10.80.0/24 src-address=10.90.0.0/16
add action=accept chain=forward comment="FWD: OutCore->Guarida (10.10.12.0/24)" dst-address=10.10.12.0/24 src-address=10.90.0.0/16
add action=accept chain=forward comment="FWD: OutCore->Vila Rica" dst-address=10.10.50.0/24 src-address=10.90.0.0/16
add action=accept chain=forward comment="FWD: OutCore->Vila Rica (LAN)" dst-address=192.168.0.0/24 src-address=10.90.0.0/16
add action=drop chain=forward comment="FWD: drop restante" log-prefix="Drop_Forw "
add action=accept chain=ServicesInput comment="Srv: Winbox LAN" dst-port=8291 protocol=tcp src-address-list=RangeInterno
add action=accept chain=ServicesInput comment="Srv: Winbox adviceIT" dst-port=8291 protocol=tcp src-address-list=adviceIT
add action=accept chain=ServicesInput comment="Srv: Winbox VPN Admin" dst-port=8291 protocol=tcp src-address-list=VPN_OutCore_Admins
add action=accept chain=ServicesInput comment="Srv: DNS LAN" dst-port=53 protocol=udp src-address-list=RangeInterno
add action=accept chain=ServicesInput comment="Srv: DNS Visitante" dst-port=53 protocol=udp src-address-list=Wifi-Visitante
add action=accept chain=ServicesInput comment="Srv: DHCP LAN" dst-port=67,68 protocol=udp src-address-list=RangeInterno
add action=accept chain=ServicesInput comment="Srv: Winbox Web LAN" dst-port=8081 protocol=tcp src-address-list=RangeInterno
add action=accept chain=ServicesInput comment="Srv: Winbox Web adviceIT" dst-port=8081 protocol=tcp src-address-list=adviceIT
add action=accept chain=ServicesInput comment="Srv: FTP LAN" dst-port=21 protocol=tcp src-address-list=RangeInterno
add action=accept chain=ServicesInput comment="Srv: FTP adviceIT" dst-port=21 protocol=tcp src-address-list=adviceIT
add action=accept chain=ServicesInput comment="Srv: Telnet LAN" dst-port=23 protocol=tcp src-address-list=RangeInterno
add action=accept chain=ServicesInput comment="Srv: Telnet adviceIT" dst-port=23 protocol=tcp src-address-list=adviceIT
add action=accept chain=ServicesInput comment="Srv: SSH LAN" dst-port=22 protocol=tcp src-address-list=RangeInterno
add action=accept chain=ServicesInput comment="Srv: SSH adviceIT" dst-port=22 protocol=tcp src-address-list=adviceIT
add action=accept chain=ServicesInput comment="Srv: PING via VPNs" icmp-options=8:0 in-interface=all-ppp protocol=icmp
add action=accept chain=ServicesInput comment="Srv: OpenVPN TCP" dst-port=1194 protocol=tcp
add action=accept chain=ServicesInput comment="Srv: PPTP" dst-port=1723 protocol=tcp
add action=accept chain=ServicesInput comment="Srv: L2TP UDP" dst-port=1701 protocol=udp
add action=accept chain=ServicesInput comment="Srv: L2TP TCP" dst-port=1701 protocol=tcp
add action=accept chain=ServicesInput comment="Srv: SNMP adviceIT" dst-port=161 protocol=udp src-address-list=adviceIT
add action=accept chain=ServicesInput comment="Srv: Winbox Discovery" dst-port=17778 in-interface=BRD_OUTCORE protocol=udp
add action=add-src-to-address-list address-list=BlackList address-list-timeout=1d chain=ProtecaoInput comment="Prot INPUT: PortScan -> BlackList" protocol=tcp psd=21,3s,3,1
add action=accept chain=ServicesInput comment="Srv: PING da LAN" icmp-options=8:0 in-interface-list=LAN protocol=icmp
add action=add-src-to-address-list address-list=BlackList_SIP_Temp address-list-timeout=15s chain=SIP_BF comment="SIP_BF: temp 15s por porta 5060" connection-state=new dst-port=5060 in-interface-list=Internet protocol=udp
add action=add-src-to-address-list address-list=BlackList_SIP address-list-timeout=1d chain=SIP_BF comment="SIP_BF: promove p/ BlackList_SIP 1d" connection-state=new dst-port=5060 in-interface-list=Internet protocol=udp src-address-list=\
    BlackList_SIP_Temp
add action=add-dst-to-address-list address-list=sip_content_temp address-list-timeout=30s chain=SIP_BF comment="SIP_BF: 401 -> temp(30s)" content="SIP/2.0 401 Unauthorized" in-interface=BRD_OUTCORE limit=20,10:packet protocol=udp \
    src-address-list=PBXes src-port=5060-5069
add action=add-dst-to-address-list address-list=bf_blacklist address-list-timeout=15m chain=SIP_BF comment="SIP_BF: 401 repetido -> bf_blacklist 15m" content="SIP/2.0 401 Unauthorized" dst-address-list=sip_content_temp in-interface=BRD_OUTCORE \
    limit=50,25:packet protocol=udp src-address-list=PBXes src-port=5060-5069
add action=add-dst-to-address-list address-list=sip_content_temp address-list-timeout=30s chain=SIP_BF comment="SIP_BF: 404 -> temp(30s)" content="SIP/2.0 404 Not Found" in-interface=BRD_OUTCORE limit=20,10:packet protocol=udp src-address-list=\
    PBXes src-port=5060-5069
add action=add-dst-to-address-list address-list=bf_blacklist address-list-timeout=15m chain=SIP_BF comment="SIP_BF: 404 repetido -> bf_blacklist 15m" content="SIP/2.0 404 Not Found" dst-address-list=sip_content_temp in-interface=BRD_OUTCORE \
    limit=50,25:packet protocol=udp src-address-list=PBXes src-port=5060-5069
add action=drop chain=SIP_BF comment="SIP_BF: drop BlackList_SIP" in-interface-list=Internet src-address-list=BlackList_SIP




/ip firewall mangle
add action=mark-connection chain=prerouting comment="MGL: entra pela Telium" in-interface=ether1 new-connection-mark=telium_conn
add action=mark-routing chain=output comment="MGL: sai pela Telium" connection-mark=telium_conn new-routing-mark=to_link_telium passthrough=no
add action=mark-connection chain=prerouting comment="MGL: entra pela Cyber" in-interface=ether2 new-connection-mark=cyber_conn
add action=mark-routing chain=output comment="MGL: sai pela Cyber" connection-mark=cyber_conn new-routing-mark=to_link_cyber passthrough=no
add action=change-mss chain=forward comment="MSS Clamp for EoIP" new-mss=1360 protocol=tcp tcp-flags=syn tcp-mss=1361-65535
add action=change-mss chain=forward comment="Clamp MSS provedor" new-mss=clamp-to-pmtu protocol=tcp tcp-flags=syn

add action=src-nat chain=srcnat comment="NAT: Rafael Clientes" dst-address=10.88.0.0/16 src-address=192.168.31.0/24 to-addresses=10.90.0.1
add action=masquerade chain=srcnat comment="NAT: saida LAN" out-interface-list=Internet src-address-list=RangeInterno
add action=masquerade chain=srcnat comment="NAT: saida Dircon" out-interface-list=Internet src-address-list=Dircon
add action=masquerade chain=srcnat comment="NAT: saida VPN Admins" out-interface-list=Internet src-address-list=VPN_OutCore_Admins
add action=src-nat chain=srcnat comment="NAT: IPSec (admins -> clientes)" dst-address-list=Range_Clientes out-interface=ether1 src-address-list=VPN_OutCore_Admins to-addresses=10.90.0.1
add action=masquerade chain=srcnat comment="NAT: saida Visitante" out-interface-list=Internet src-address-list=Wifi-Visitante
add action=masquerade chain=srcnat comment="NAT: Central SIP" dst-port=5060 out-interface-list=Internet protocol=udp src-address-list=PBXes
add action=masquerade chain=srcnat comment="NAT: saida Visitante (faixa direta)" out-interface-list=Internet src-address=10.241.241.0/24
add action=src-nat chain=srcnat comment="NAT: OpenVPN - OCI" dst-address=192.168.0.0/24 to-addresses=10.90.0.1
add action=accept chain=srcnat comment="NAT IPSec: VilaRica-OCI" dst-address=192.168.0.0/24 src-address=10.90.0.0/16
add action=accept chain=srcnat comment="NAT IPSec: Vila Rica" dst-address=10.10.50.0/24 src-address=10.90.0.0/16
add action=accept chain=srcnat comment="NAT IPSec: Guarida 10.10.10.0/24" dst-address=10.10.10.0/24 src-address=10.90.0.0/16
add action=accept chain=srcnat comment="NAT IPSec: Guarida 10.10.11.0/24" dst-address=10.10.11.0/24 src-address=10.90.0.0/16
add action=accept chain=srcnat comment="NAT IPSec: Guarida 10.10.12.0/24" dst-address=10.10.12.0/24 src-address=10.90.0.0/16
add action=accept chain=srcnat comment="NAT IPSec: Guarida 10.10.13.0/24" dst-address=10.10.13.0/24 src-address=10.90.0.0/16
add action=accept chain=srcnat comment="NAT IPSec: Guarida 10.10.16.0/24" dst-address=10.10.16.0/24 src-address=10.90.0.0/16
add action=accept chain=srcnat comment="NAT IPSec: Guarida 10.10.17.0/24" dst-address=10.10.17.0/24 src-address=10.90.0.0/16
add action=accept chain=srcnat comment="NAT IPSec: Guarida 10.10.20.0/24" dst-address=10.10.20.0/24 src-address=10.90.0.0/16
add action=accept chain=srcnat comment="NAT IPSec: Guarida 10.10.30.0/24" dst-address=10.10.30.0/24 src-address=10.90.0.0/16
add action=accept chain=srcnat comment="NAT IPSec: Guarida 10.10.80.0/24" dst-address=10.10.80.0/24 src-address=10.90.0.0/16
add action=accept chain=srcnat comment="NAT IPSec: Guarida 10.10.200.0/24" dst-address=10.10.200.0/24 src-address=10.90.0.0/16
add action=accept chain=srcnat comment="NAT IPSec: Guarida 10.10.201.0/24" dst-address=10.10.201.0/24 src-address=10.90.0.0/16
add action=accept chain=srcnat comment="NAT IPSec: Guarida 172.16.10.0/24" dst-address=172.16.10.0/24 src-address=10.90.0.0/16
add action=dst-nat chain=dstnat comment="DNAT: WEB" dst-address-list=OutCoreExterno dst-port=80,443 protocol=tcp to-addresses=10.90.0.18
add action=masquerade chain=srcnat comment="NAT interno -> WEB" dst-address=10.90.0.18 dst-port=80,443,587 out-interface=BRD_OUTCORE protocol=tcp src-address=10.90.0.0/16
add action=dst-nat chain=dstnat comment="DNAT: RDP iPorto" dst-port=3390 in-interface-list=Internet protocol=tcp to-addresses=10.90.0.25 to-ports=3389
add action=dst-nat chain=dstnat comment="DNAT: SSH PBX" dst-port=22 in-interface-list=Internet log=yes protocol=tcp src-address-list=acessoSshPbx to-addresses=10.90.0.10
add action=masquerade chain=srcnat comment="NAT interno -> RDP 10.90.0.200" dst-address=10.90.0.200 dst-port=3389 out-interface=BRD_OUTCORE protocol=tcp src-address=10.90.0.0/16
add action=dst-nat chain=dstnat comment="DNAT: IAX Central" disabled=yes dst-address-list=OutCoreExterno dst-port=4569 protocol=udp to-addresses=10.90.0.10
add action=masquerade chain=srcnat comment="NAT interno -> Orion" dst-address=10.90.0.6 dst-port=17778 out-interface=BRD_OUTCORE protocol=tcp src-address=10.90.0.0/16
add action=dst-nat chain=dstnat comment="DNAT: Exchange (IP 200.170.252.138)" dst-address=200.170.252.138 dst-port=25,110,143,587,465,993,995 protocol=tcp to-addresses=10.90.0.18
add action=dst-nat chain=dstnat comment="DNAT: Exchange (IP 38.250.225.25)" dst-address=38.250.225.25 dst-port=25,110,143,587,465,993,995 protocol=tcp to-addresses=10.90.0.18
add action=dst-nat chain=dstnat comment="DNAT: Cmeras" dst-port=37777 protocol=tcp to-addresses=10.90.40.1
add action=masquerade chain=srcnat comment="NAT interno -> Cmeras" dst-address=10.90.40.1 dst-port=37777 out-interface=BRD_OUTCORE protocol=tcp src-address=10.90.0.0/16
/ip firewall raw
add action=drop chain=prerouting comment="RAW: bloqueio DNS/NTP de entrada" dst-port=53,123 in-interface-list=Internet protocol=udp
add action=drop chain=prerouting comment="RAW: bloqueio SSDP" dst-port=1900 in-interface-list=Internet protocol=udp
add action=drop chain=prerouting comment="RAW: drop BlackList_SIP" disabled=yes in-interface-list=Internet src-address-list=BlackList_SIP
add action=drop chain=prerouting comment="RAW: drop bf_blacklist" disabled=yes in-interface-list=Internet src-address-list=bf_blacklist
add action=drop chain=prerouting comment="RAW: drop BlackList (geral)" disabled=yes in-interface-list=Internet src-address-list=BlackList
add action=drop chain=prerouting comment="RAW: SIP 5060 Internet -> !PBXes" disabled=yes dst-address-list=!PBXes dst-port=5060 in-interface-list=Internet protocol=udp
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
add comment="Link Telium" disabled=no distance=200 dst-address=0.0.0.0/0 gateway=200.170.252.137 pref-src="" routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add comment="FailOver Telium" disabled=no distance=50 dst-address=8.8.8.8/32 gateway=200.170.252.137 pref-src="" routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add comment="FailOver Cyber" disabled=no distance=50 dst-address=8.8.4.4/32 gateway=pppoe-out-cyber pref-src="" routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add comment="Link Cyber" disabled=no distance=199 dst-address=0.0.0.0/0 gateway=pppoe-out-cyber pref-src="" routing-table=main scope=30 suppress-hw-offload=no target-scope=10 vrf-interface=pppoe-out-cyber
add comment="Telium -> OCI" disabled=no distance=50 dst-address=168.138.240.85/32 gateway=200.170.252.137 pref-src="" routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add check-gateway=ping disabled=no distance=1 dst-address=192.168.25.0/24 gateway=192.168.255.1 routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add check-gateway=ping comment="Telium -> Tri Central - Adm" disabled=yes distance=50 dst-address=177.105.253.36/32 gateway=200.170.252.137 pref-src="" routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add check-gateway=ping disabled=no distance=1 dst-address=51.222.41.81/32 gateway=OpenVPN-OutCore-OVH-Hyper-V routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add disabled=no distance=1 dst-address=192.168.3.0/24 gateway=OpenVPN-Central-Adm routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add disabled=no distance=50 dst-address=10.93.0.0/24 gateway=10.88.77.1 routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add comment="Link Telium" disabled=no distance=50 dst-address=0.0.0.0/0 gateway=200.170.252.137 pref-src="" routing-table=to_link_telium scope=30 suppress-hw-offload=no target-scope=10
add comment="Link Cyber" disabled=no distance=50 dst-address=0.0.0.0/0 gateway=pppoe-out-cyber pref-src="" routing-table=to_link_cyber scope=30 suppress-hw-offload=no target-scope=10
add check-gateway=ping disabled=no distance=25 dst-address=45.235.209.66/32 gateway=pppoe-out-cyber routing-table=main suppress-hw-offload=no
add check-gateway=ping comment="Telium -> Tri Central - Adm" disabled=yes distance=50 dst-address=177.105.253.36/32 gateway=200.170.252.137 pref-src="" routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add check-gateway=ping comment="Link Telium" disabled=no distance=30 dst-address=177.137.116.100/32 gateway=200.170.252.137 pref-src="" routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add disabled=no distance=1 dst-address=192.168.0.253/32 gateway=OpenVPN-Loja7200 routing-table=main scope=30 suppress-hw-offload=no target-scope=10
/ip service
set ftp address=0.0.0.0/0 disabled=yes
set ssh address=131.0.100.0/22,10.77.0.0/16,10.78.0.0/16,10.90.0.0/16,10.93.0.0/16
set telnet address=131.0.100.0/22,10.78.0.0/16,10.77.0.0/16,10.90.0.0/16,10.93.0.0/16
set www address=131.0.100.0/22,10.77.0.0/16,10.78.0.0/16,10.90.0.0/16,10.93.0.0/16 port=8081
set winbox address=131.0.100.0/22,10.78.0.0/16,10.90.0.0/16,10.93.0.0/24,10.88.79.13/32,10.88.79.30/32,192.168.31.0/24
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
add name=OpenVPN-Infosul password=jhgs67fgagfRE4 profile=ovpn routes=172.35.0.0/24 service=ovpn
add name=OpenVPN-Central-Adm password=FLrqcshhKZ7a46E profile=ovpn remote-address=10.88.79.40 routes="192.168.1.0/24,192.168.10.0/24, 10.253.222.0/24" service=ovpn
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
add name=OpenVPN-SergioSanti password=zYcwcKZi0efFH2izoznb profile=ovpn service=ovpn
add name=OpenVPN-iPorto-Fernanda password=OpenVPN-iPorto-Fernanda@2022 profile=ovpn remote-address=10.88.79.27 service=ovpn
add name=OpenVPN-iPorto-Daniela password=gHFJYtOFKwpptNWoiTkh45 profile=ovpn remote-address=10.88.79.25 service=ovpn
add name=OpenVPN-iPorto-Ygor password=qXNeTRKpZ1EYBn5PT0WE profile=ovpn remote-address=10.88.79.93 service=ovpn
add name=OpenVPN-CMA password=aj615rFAPU3 profile=ovpn routes=192.168.254.0/24 service=ovpn
add name=OpenVPN-Therapi-Fabrica password=plGEt4NKjaN3 profile=ovpn routes=10.66.0.0/16 service=ovpn
add name=OpenVPN-BVC password=4nOz1qfzrO profile=ovpn routes=10.18.0.0/16 service=ovpn
add name=OpenVPN-Belmondo password=1NZTX5FtZ6Zo profile=ovpn remote-address=10.88.79.18 routes=10.1.1.0/24 service=ovpn
add name=OpenVPN-Cooperpoa password=0E1F3h5Nwq profile=ovpn remote-address=10.88.79.67 routes=10.0.12.0/24 service=ovpn
add name=OpenVPN-Dircon password=eerPH6Cy94FGhjk profile=ovpn routes=10.13.0.0/16 service=ovpn
add name=OpenVPN-VR-Esteio password=4WJbujN9kMmj2uPL2PCz profile=ovpn routes=10.10.60.0/24 service=ovpn
add name=OpenVPN-VR-SaoLeo password=wJKkv2UbbcUaDiuSu7z8 profile=ovpn remote-address=10.88.79.221 routes=10.10.30.0/24 service=ovpn
add name=OpenVPN-VR-NH password=OJzcqF8ZQWqO8AkUI94Q profile=ovpn routes=10.10.40.0/24 service=ovpn
add name=OpenVPN-VR-POA password=mvGwLigK0Wmko2MKrn6T profile=ovpn remote-address=10.88.79.7 service=ovpn
add name=OpenVPN-VR-Sapucaia password=jHYg8DbdrlqCfAmTZgLq profile=ovpn routes=10.10.70.0/24 service=ovpn
add comment="Rafael - Casa" name=OpenVPN-RafaelSouzaHomeOffice password=3eadasRRDf3109 profile=ovpn remote-address=10.88.79.30 routes=192.168.31.0/24 service=ovpn
add name=OpenVPN-VR-Matriz password=NGRkhzkD5NhRt96 profile=ovpn routes="10.10.50.0/24, 168.181.166.246/32" service=ovpn
add name=OpenVPN-Russell-Poa password=KJGHGkjjhbgd856687j profile=ovpn remote-address=10.88.79.225 routes=10.31.0.0/16 service=ovpn
add name=OpenVPN-CafedoMercado password=GBlxo2kQHnrpX42Wz4GzIOLut0rRC profile=ovpn remote-address=10.88.79.147 service=ovpn
add name=OpenVPN-Thiago password=oiudlks7816725tyh profile=ovpn remote-address=10.88.79.34 service=ovpn
add name=OpenVPN-Therapi-ADM password=plGEt4NKjaN3 profile=ovpn routes=192.168.2.0/24 service=ovpn
add name=OpenVPN-Edlo-Sapucaia password=kuNeYayOk3lNuW9N profile=ovpn remote-address=10.88.79.240 routes=10.28.0.0/24 service=ovpn
add name=OpenVPN-AuxZN password=BQsG9iP4EZum profile=ovpn remote-address=10.88.79.188 routes=10.64.0.0/16 service=ovpn
add name=OpenVPN-Osmar password=twq79AbcXLJ0Rb9m profile=ovpn routes=10.12.0.0/16 service=ovpn
add name=OpenVPN-Central-DF47 password=FLrqcshhKZ7a46E profile=ovpn remote-address=10.88.79.49 routes=192.168.18.0/24 service=ovpn
add name=OpenVPN-OdontoMaster-Aracaju password=rvNJaudpddhR3WmCh3 profile=ovpn routes=10.21.0.0/16 service=ovpn
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
/routing bfd configuration
add disabled=no
/routing rule
add action=lookup disabled=yes src-address=10.90.100.94/32 table=HTTP-Conn
/snmp
set contact=TI enabled=yes location=Matriz trap-version=2


/system clock
set time-zone-name=America/Sao_Paulo
/system identity
set name=fw-OutCore-CCR
/system logging
set 0 disabled=yes prefix=:Info
set 1 prefix=:Error
set 2 prefix=:Warning
set 3 action=memory prefix=:Critical
add topics=ppp,pppoe,debug
/system routerboard settings
set baud-rate=9600 boot-delay=5s

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
add dont-require-permissions=no name=script1 owner=adviceit policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive source=\
    ":global previousIP;\r\
    \n:log info \"Fetching current IP\"\r\
    \n/tool fetch url=\"https://web-dc.adviceit.com.br:8083/api/dyndns/\?do=update&domain=adviceit.firedns.com.br\" mode=https"
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
set filter-dst-ip-address=177.137.116.100/32 filter-interface=pppoe-out-cyber filter-port=sip filter-src-ip-address=10.13.0.11/32
[adviceit@fw-OutCore-CCR] >  

```
