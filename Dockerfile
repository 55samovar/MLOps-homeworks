# 1. Используем образ miniconda3
FROM continuumio/miniconda3:latest

# 2. Создаём рабочую директорию
WORKDIR /app

# 3. Копируем файл 1.sh в контейнер
COPY 1.sh /app/1.sh

# 4. Делаем файл исполняемым
RUN chmod +x /app/1.sh

# 5. Устанавливаем необходимые Python-пакеты
RUN pip install mlflow boto3 pymysql

# 6. Запускаем 1.sh при старте контейнера
CMD ["/app/1.sh"]
