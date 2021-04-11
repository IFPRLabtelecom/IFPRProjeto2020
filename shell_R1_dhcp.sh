#ip dhcp pool ASSINANTE101
#network 150.100.216.128 255.255.255.252
#default-router 150.100.216.130
#dns-server 150.100.216.130
#exit

cd /home/gustavo/projeto_final/packet_tracer/;
rm cmd_R1_dhcp.txt

#A01...A32==================================================================
VAR_REDE=128;
VAR_IP=130;
for (( VAR_A=101; VAR_A<=132; VAR_A++))
do
echo "ip dhcp pool ASSINANTE$VAR_A" >> cmd_R1_dhcp.txt;
echo "network 150.100.216.$VAR_REDE 255.255.255.252" >> cmd_R1_dhcp.txt;
echo "default-router 150.100.216.$VAR_IP" >> cmd_R1_dhcp.txt;
echo "dns-server 150.100.216.$VAR_IP" >> cmd_R1_dhcp.txt;
echo "exit" >> cmd_R1_dhcp.txt;
VAR_REDE=$[$VAR_REDE+4];
VAR_IP=$[$VAR_IP+4];
done

#A33...A64==================================================================
VAR_REDE=0;
VAR_IP=2;
for (( VAR_A=133; VAR_A<=164; VAR_A++))
do
echo "ip dhcp pool ASSINANTE$VAR_A" >> cmd_R1_dhcp.txt;
echo "network 150.100.217.$VAR_REDE 255.255.255.252" >> cmd_R1_dhcp.txt;
echo "default-router 150.100.217.$VAR_IP" >> cmd_R1_dhcp.txt;
echo "dns-server 150.100.217.$VAR_IP" >> cmd_R1_dhcp.txt;
echo "exit" >> cmd_R1_dhcp.txt;
VAR_REDE=$[$VAR_REDE+4];
VAR_IP=$[$VAR_IP+4];
done
