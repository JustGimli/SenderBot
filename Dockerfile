FROM python:3-alpine

# Установка зависимостей
RUN pip install --upgrade pip
RUN pip install telethon

# Копируем файлы проекта в рабочую директорию контейнера
COPY . /app

# Устанавливаем рабочую директорию
WORKDIR /app

# Указываем команду, которая будет выполнена при запуске контейнера
CMD ["python", "client.py"]