# Маракин Э.Ю
# Дипломная работа по профессии «Системный администратор»
# Сайт
Создайте Target Group, включите в неё две созданных ВМ.
![image](https://github.com/user-attachments/assets/6afcdba1-b99d-4a89-bcae-4e90258f3fdd)
Создайте Backend Group, настройте backends на target group, ранее созданную. Настройте healthcheck на корень (/) и порт 80, протокол HTTP.
![image](https://github.com/user-attachments/assets/3c2c117f-0cb2-48f5-bd82-295506681ebf)
Создайте HTTP router. Путь укажите — /, backend group — созданную ранее.
![image](https://github.com/user-attachments/assets/9dd94bcb-7ff2-45f8-bd29-df860d7b540d)
Создайте Application load balancer для распределения трафика на веб-сервера, созданные ранее. Укажите HTTP router, созданный ранее, задайте listener тип auto, порт 80.
![image](https://github.com/user-attachments/assets/6d4ac7a0-4425-4314-827e-2bdad79838ef)
Протестируйте сайт curl -v 84.201.145.43:80
![image](https://github.com/user-attachments/assets/bcac9248-ae13-476d-9059-532e91f1d932)
![image](https://github.com/user-attachments/assets/3b1ff8ad-98db-47fe-9e3b-1f175763501e)


# Сеть
![image](https://github.com/user-attachments/assets/6963b57a-21d7-420f-90a6-ef0cfcd0c0b3)
![image](https://github.com/user-attachments/assets/9e83ac0b-d770-4426-b910-85744dfd05a0)
![image](https://github.com/user-attachments/assets/cd23a20b-758d-40e2-bb63-37b3d35199fc)
![image](https://github.com/user-attachments/assets/e964fc0b-1d6f-4cfd-9c4e-c58629200b02)
![image](https://github.com/user-attachments/assets/1a18eef2-b9d8-4ed3-a760-59488fe3195d)
![image](https://github.com/user-attachments/assets/e6a06189-3e12-4d58-8471-6380115a2f61)
![image](https://github.com/user-attachments/assets/476f88ed-da39-4a34-a7e5-3a1a093e04ba)
![image](https://github.com/user-attachments/assets/cc2fb37c-ff1b-4310-8adf-28c43ac49b4d)
![image](https://github.com/user-attachments/assets/5a6078db-7be9-468b-851f-1045ae1d35c1)
![image](https://github.com/user-attachments/assets/cdbadb74-7c54-4a8c-81c7-7065b43a3a40)


# Мониторинг
http://158.160.135.131:8080/  Admin  zabbix
# Логи
http://158.160.130.85:5601/
![image](https://github.com/user-attachments/assets/c095b73d-a85f-41da-bb64-60b3b48af8cd)
# Резервное копирование
![image](https://github.com/user-attachments/assets/89b19e62-1fac-4c24-9cee-9a5890c3202a)
![image](https://github.com/user-attachments/assets/2e4f4361-fd7c-438c-ba46-fb698773ece7)

