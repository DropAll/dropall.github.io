#!/bin/bash
echo -e "\nAnalisando os logs das contas, por gentileza aguarde.";
sleep 1;

DATA=$(apachectl fullstatus | grep "Current Time" | awk '{print $4}' | tr - /);

xmlrpc=$(find /home/*/access-logs/ -type f | grep -v "ftp" | xargs grep "$DATA" | grep "xmlrpc.php" | egrep -o "/home/\w+/" | sort | uniq -c | sort -n | tail -10);

registro=$(find /home/*/access-logs/ -type f | grep -v "ftp" | xargs grep "$DATA" | grep "regist" | grep POST | egrep -o "/home/\w+/" | sort | uniq -c | sort -n | tail -10);

echo -e "\n\t\txmlrpc"
echo -e "-------------------------------------"
echo -e "$xmlrpc"
echo -e "-------------------------------------"

echo -e "\n\tSistema de registro"
echo -e "-------------------------------------"
echo -e "$registro"
echo -e "-------------------------------------"

echo -e "\n\tRequisições POST"
post=$(find /home/*/access-logs/ -type f | grep -v "ftp" | xargs grep "$DATA" | grep POST | egrep -o "/home/\w+/" | sort | uniq -c | sort -n | tail -10);
echo -e "-------------------------------------"
echo -e "$post"
echo -e "-------------------------------------"

echo -e "\n\tRequisições GET"
get=$(find /home/*/access-logs/ -type f | grep -v "ftp" | xargs grep "$DATA" | grep GET | egrep -o "/home/\w+/" | sort | uniq -c | sort -n | tail -10);
echo -e "-------------------------------------"
echo -e "$get"
echo -e "-------------------------------------"

echo -e "\n\tRequisições na data de hoje"
req=$(find /home/*/access-logs/ -type f | grep -v "ftp" | xargs grep "$DATA" | egrep -o "/home/\w+/" | sort | uniq -c | sort -n | tail -10);
echo -e "-------------------------------------"
echo -e "$req"
echo -e "-------------------------------------"
