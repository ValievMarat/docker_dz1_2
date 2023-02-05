# Создание контейнера по задаче 2.3 (CRUD)

## Для запуска требуется:

### 1. docker build . --tag=my_project

создание образа, где my_project - название

### 2. docker run --name=my_project1 -d -p 7878:8000 mp_project

Запуск образа, с пробросом портов

Для проверки работы api перейти по пути:
http://localhost:7878/api/v1/products/