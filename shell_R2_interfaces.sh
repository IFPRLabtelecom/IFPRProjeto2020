
#int g0/1/0.101
#description A101
#encapsulation dot1Q 101
#ip add 150.100.216.130 255.255.255.252
#no shut
#exit

cd /home/gustavo/projeto_final/packet_tracer/;
rm cmd_R2_interfaces.txt

#A01...A64==================================================================
VAR_IP=2;
for (( VAR_A=101; VAR_A<=164; VAR_A++))
do
echo "int g0/1/0.$VAR_A" >> cmd_R2_interfaces.txt;
echo "description $VAR_A" >> cmd_R2_interfaces.txt;
echo "encapsulation dot1Q $VAR_A" >> cmd_R2_interfaces.txt;
echo "ip add 150.100.218.$VAR_IP 255.255.255.252" >> cmd_R2_interfaces.txt;
echo "no shut" >> cmd_R2_interfaces.txt;
echo "exit" >> cmd_R2_interfaces.txt;
VAR_IP=$[$VAR_IP+4];
done



