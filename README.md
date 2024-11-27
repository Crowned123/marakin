# Маракин Э.Ю
# Домашнее задание к занятию «Уязвимости и атаки на информационные системы»
# Задание 1
```
21/tcp   open  ftp         vsftpd 2.3.4
|_ftp-anon: Anonymous FTP login allowed (FTP code 230)
22/tcp   open  ssh       
23/tcp   open  telnet      Linux telnetd
25/tcp   open  smtp        Postfix smtpd
53/tcp   open  domain      ISC BIND 9.4.2
80/tcp   open  http        Apache httpd 2.2.8
111/tcp  open  rpcbind     2 (RPC #100000)
139/tcp  open  netbios-ssn Samba smbd 3.X - 4.X (workgroup: WORKGROUP)
445/tcp  open  netbios-ssn Samba smbd 3.X - 4.X (workgroup: WORKGROUP)
512/tcp  open  exec        netkit-rsh rexecd
513/tcp  open  login       OpenBSD or Solaris rlogind
514/tcp  open  tcpwrapped
1099/tcp open  java-rmi    GNU Classpath grmiregistry
1524/tcp open  bindshell   Metasploitable root shell
2049/tcp open  nfs         2-4 (RPC #100003)
2121/tcp open  ftp         ProFTPD 1.3.1
3306/tcp open  mysql       MySQL 5.0.51a
#https://www.exploit-db.com/.
https://www.exploit-db.com/exploits/15215
https://www.exploit-db.com/exploits/30020
https://www.exploit-db.com/exploits/51447
```

# Задание 2

Файл дампа WireShark - https://disk.yandex.ru/d/zUus2VT63LIK1A
```


SYN Scan (полуоткрытый):

Сетевой трафик: Отправляются SYN-пакеты на указанные порты. Если порт открыт, сервер отвечает SYN-ACK. Если порт закрыт, отправляется RST.
Особенность: Сканирование не завершает handshake (TCP-соединение), что делает его менее заметным.
Ответ сервера:
Открытый порт: SYN-ACK
Закрытый порт: RST
FIN Scan:

Сетевой трафик: Отправляется FIN-пакет. Если порт закрыт, сервер отправляет RST. Открытые порты, как правило, игнорируют такие пакеты.
Особенность: Используется для обхода простых брандмауэров.
Ответ сервера:
Открытый порт: нет ответа.
Закрытый порт: RST.
Xmas Scan:

Сетевой трафик: Отправляются "рождественские" пакеты с установленными флагами FIN, URG, PSH. Реакция сервера схожа с FIN-сканированием.
Особенность: Используется для идентификации ОС и обнаружения открытых портов.
Ответ сервера:
Открытый порт: нет ответа.
Закрытый порт: RST.
UDP Scan:

Сетевой трафик: Отправляются UDP-пакеты. Если порт открыт, сервер отвечает в зависимости от службы. Если порт закрыт, отправляется ICMP-сообщение "Destination Unreachable" (type 3, code 3).
Особенность: Сканирование медленное, так как нет стандартного метода подтверждения открытых UDP-портов.
Ответ сервера:
Открытый порт: может быть ответ службы (например, DNS).
Закрытый порт: ICMP "Destination Unreachable".


```


