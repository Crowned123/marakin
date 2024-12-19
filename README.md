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
Протестируйте сайт curl -v <публичный IP балансера>:80
![image](https://github.com/user-attachments/assets/bcac9248-ae13-476d-9059-532e91f1d932)
![image](https://github.com/user-attachments/assets/3b1ff8ad-98db-47fe-9e3b-1f175763501e)


# Сеть
![image](https://github.com/user-attachments/assets/6963b57a-21d7-420f-90a6-ef0cfcd0c0b3)
![image](https://github.com/user-attachments/assets/9e83ac0b-d770-4426-b910-85744dfd05a0)
![image](https://github.com/user-attachments/assets/cd23a20b-758d-40e2-bb63-37b3d35199fc)
![image](https://github.com/user-attachments/assets/e964fc0b-1d6f-4cfd-9c4e-c58629200b02)





