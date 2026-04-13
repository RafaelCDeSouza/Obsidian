```
# ====== BASE CYBERWEB - RESET DEFAULT (compatível) ======

# 1) Usuário padrão e segurança mínima
/user add name=cyberweb group=full password=cyberweb


# 2) Winbox na porta 1097
/ip service set winbox port=1097

# 3) DNS (sem permitir recursão para LAN)
/ip dns set servers=8.8.8.8,8.8.4.4 allow-remote-requests=no

# 4) SNMP comunidade 'Cyberweb' (sem tentar remover a default)
/snmp set enabled=yes
:if ([:len [/snmp community find where name="Cyberweb"]] = 0) do={ /snmp community add name="Cyberweb" }
:if ([:len [/snmp community find where name="public"]] > 0) do={
    /snmp community set [find where name="public"] addresses=127.0.0.1/32
}

# 5) Renomear interfaces (protegido por existência)
/if ([:len [/interface ethernet find where default-name="ether2"]] > 0) do={
    /interface ethernet set [find where default-name="ether2"] name=ether2_ONU
}
:if ([:len [/interface ethernet find where default-name="ether4"]] > 0) do={
    /interface ethernet set [find where default-name="ether4"] name=ether4_CLIENTE
}

# 6) Bridge e membros (só adiciona se as portas existirem)
/interface bridge add name=br-cyberweb comment="Bridge ONU + CLIENTE"
:if ([:len [/interface ethernet find where name="ether2_ONU"]] > 0) do={
    /interface bridge port add bridge=br-cyberweb interface=ether2_ONU
}
:if ([:len [/interface ethernet find where name="ether4_CLIENTE"]] > 0) do={
    /interface bridge port add bridge=br-cyberweb interface=ether4_CLIENTE
}

# 7) Descoberta de vizinhança apenas nas portas 2 e 5
/interface list add name=DISCOVER comment="Interfaces com neighbor discovery"
:if ([:len [/interface find where name="ether2_ONU"]] > 0) do={
    /interface list member add list=DISCOVER interface=ether2_ONU
}
:if ([:len [/interface find where name="ether5"]] > 0) do={
    /interface list member add list=DISCOVER interface=ether5
}
/ip neighbor discovery-settings set discover-interface-list=DISCOVER

# 8) Banner ASCII CYBERWEB no login
/system note set show-at-login=yes note="\
 .d8888b.           888                       888       888          888      
d88P  Y88b          888                       888   o   888          888      
888    888          888                       888  d8b  888          888      
888        888  888 88888b.   .d88b.  888d888 888 d888b 888  .d88b.  88888b.  
888        888  888 888 \"88b d8P  Y8b 888P\"   888d88888b888 d8P  Y8b 888 \"88b 
888    888 888  888 888  888 88888888 888     88888P Y88888 88888888 888  888 
Y88b  d88P Y88b 888 888 d88P Y8b.     888     8888P   Y8888 Y8b.     888 d88P 
 \"Y8888P\"   \"Y88888 88888P\"   \"Y8888  888     888P     Y888  \"Y8888  88888P\"  
                888                                                           
           Y8b d88P                                                           
            \"Y88P\"                                                            
"

# ====== FIM BASE CYBERWEB ======

```
