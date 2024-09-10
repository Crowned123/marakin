# Домашнее задание "Резервное копирование"
# Задание 1
![image](https://github.com/user-attachments/assets/ef3d5d01-5ee5-44aa-8edd-c4fb1bc285e7)

# Задание 2
```
#!/bin/bash

# Директория для резервного копирования
BACKUP_DIR="/tmp/backup"

# Исходная директория (домашняя директория пользователя)
SOURCE_DIR="$HOME/"

# Лог-файл для записи результатов
LOGFILE="/var/log/backup.log"

# Выполнение резервного копирования с использованием rsync
rsync -a --delete --checksum --exclude='.*' "$SOURCE_DIR" "$BACKUP_DIR" >> "$LOGFILE" 2>&1

# Проверка статуса завершения команды rsync
if [ $? -eq 0 ]; then
    echo "$(date): Backup completed successfully" >> "$LOGFILE"
else
    echo "$(date): Backup failed" >> "$LOGFILE"
fi
```
![image](https://github.com/user-attachments/assets/40d6904c-a842-4a3a-8949-311c9ee2b967)


