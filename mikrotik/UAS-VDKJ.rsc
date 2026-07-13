# 2026-07-14 04:53:50 by RouterOS 7.21.5
# system id = QjUNpoCQ63F
#
/interface ethernet
set [ find default-name=ether1 ] disable-running-check=no
set [ find default-name=ether2 ] disable-running-check=no
set [ find default-name=ether3 ] disable-running-check=no
/ip address
add address=7.7.7.1/30 interface=ether2 network=7.7.7.0
add address=192.168.56.1/24 interface=ether3 network=192.168.56.0
/ip dhcp-client
add interface=ether1
/ip dns
set allow-remote-requests=yes servers=8.8.8.8
/ip firewall nat
add action=masquerade chain=srcnat out-interface=ether1
