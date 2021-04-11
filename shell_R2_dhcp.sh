#ip dhcp pool ASSINANTE101
#network 150.100.216.128 255.255.255.252
#default-router 150.100.216.130
#dns-server 150.100.216.130
#exit

cd /home/gustavo/projeto_final/packet_tracer/;
rm cmd_R2_dhcp.txt

#A01...A64==================================================================
VAR_REDE=0;
VAR_IP=2;
for (( VAR_A=101; VAR_A<=164; VAR_A++))
do
echo "no ip dhcp pool ASSINANTE$VAR_A" >> cmd_R2_dhcp.txt;
echo "ip dhcp pool ASSINANTE$VAR_A" >> cmd_R2_dhcp.txt;
echo "network 150.100.218.$VAR_REDE 255.255.255.252" >> cmd_R2_dhcp.txt;
echo "default-router 150.100.218.$VAR_IP" >> cmd_R2_dhcp.txt;
echo "dns-server 150.100.218.$VAR_IP" >> cmd_R2_dhcp.txt;
echo "exit" >> cmd_R2_dhcp.txt;
VAR_REDE=$[$VAR_REDE+4];
VAR_IP=$[$VAR_IP+4];
done


