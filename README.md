# Домашнее задание к занятию «Disaster Recovery. FHRP и Keepalived»
# Задание 1
Не смог сделать, так как не смог зайти на УЗ cisco в cisco пакет трейсер, впн не помогает, возможно провайдер блочит
Сделал бы примерно так
track 2 interface GigabitEthernet0/0 line-protocol
interface GigabitEthernet0/0
 standby 1 ip <HSRP-IP>
 standby 1 priority <значение приоритета>
 standby 1 preempt
 # Задание 2
# Bash
 #!/bin/bash

PORT=80
URL="http://localhost:$PORT/index.html"

 Проверяем доступность порта
nc -z localhost $PORT
PORT_STATUS=$?

 Проверяем наличие файла index.html
curl -s $URL | grep -q "Hello"
FILE_STATUS=$?

if [ $PORT_STATUS -ne 0 ] || [ $FILE_STATUS -ne 0 ]; then
    exit 1
else
    exit 0
fi

# конфигурационный файл keepalived
vrrp_script check_webserver {
    script "/usr/local/bin/check_webserver.sh"
    interval 3
    weight -2
}

vrrp_instance VI_1 {
    interface eth0
    state MASTER          # На второй машине  BACKUP
    virtual_router_id 51
    priority 100          # На второй машине  90
    advert_int 1

    authentication {
        auth_type PASS
        auth_pass 1234
    }

    virtual_ipaddress {
        192.168.31.138     # виртуальный IP
    }

    track_script {
        check_webserver
    }
}
![image](https://github.com/user-attachments/assets/47b172db-6e0d-4389-b669-cabae587c4af)
