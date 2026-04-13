Switch Huawei


** Switch DataCom **
config
aaa user future
password 5cuSP*#5!Tc$ohUyI5sNB!dQ&
group admin

top

aaa user admin 
password Cyber2025!#@

top

aaa user rafael
password G1g@m0m4s!@#
group admin

aaa user johnatan
password Cyber2025*&$
group admin


comm

aaa
 local-user future password 
 local-user future service-type ssh
 local-user future level 3
 local-user future state block fail-times 3 interval 5