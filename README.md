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

# Сеть
![image](https://github.com/user-attachments/assets/2d9cc421-bd70-4559-8fa7-4287373abd57)
![image](https://github.com/user-attachments/assets/5abcec27-1e91-4a42-9d3c-a90ced6de349)

![image](https://github.com/user-attachments/assets/e964fc0b-1d6f-4cfd-9c4e-c58629200b02)





