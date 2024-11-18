# Sử dụng base image Python nhẹ
FROM python:3.9-slim

# Thiết lập thư mục làm việc
WORKDIR /app

# Tạo file Python cho ứng dụng Hello World
RUN echo "print('Hello, World!')" > hello.py

# Thiết lập lệnh chạy ứng dụng
CMD ["python", "hello.py"]
