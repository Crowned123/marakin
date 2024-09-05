# Домашнее задание к занятию «Disaster Recovery. FHRP и Keepalived»
# Задание 1
![image](https://github.com/user-attachments/assets/eccd27fe-ad94-4fd1-b6ca-4b80ee6043bf)
# Конфиг HAproxy
```
global
    log /dev/log    local0
    log /dev/log    local1 notice
    chroot /var/lib/haproxy
    stats socket /run/haproxy/admin.sock mode 660 level admin
    stats timeout 30s
    user haproxy
    group haproxy
    daemon

defaults
    log     global
    option  dontlognull
    timeout connect 5000
    timeout client  50000
    timeout server  50000

frontend http_front
    bind *:80
    default_backend http_back

backend http_back
    balance roundrobin
    server server1 127.0.0.1:8001 check
    server server2 127.0.0.1:8002 check
```
 # Задание 2
 ![image](https://github.com/user-attachments/assets/21f4d0e2-d40c-4fe9-b573-d0ab2e509107)

# Конфиг HAproxy
```
global
    log /dev/log local0
    log /dev/log local1 notice
    chroot /var/lib/haproxy
    stats socket /run/haproxy/admin.sock mode 660 level admin
    stats timeout 30s
    user haproxy
    group haproxy
    daemon

defaults
    log     global
    option  dontlognull
    timeout connect 5000
    timeout client  50000
    timeout server  50000
    option  httplog
    option  http-server-close

frontend http_front
    bind *:80
    acl host_example hdr(host) -i example.local
    use_backend http_back if host_example
    default_backend http_default

backend http_back
    balance roundrobin
    option httpchk HEAD / HTTP/1.1\r\nHost:\ example.local
    server server1 127.0.0.1:8001 weight 2 check
    server server2 127.0.0.1:8002 weight 3 check
    server server3 127.0.0.1:8003 weight 4 check

backend http_default
    balance roundrobin
    server default_server 127.0.0.1:8080 weight 1 check
```

