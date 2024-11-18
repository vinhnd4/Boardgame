# Sử dụng image chính thức thay thế cho adoptopenjdk
FROM eclipse-temurin:11-jre

# Khai báo cổng ứng dụng
EXPOSE 8080

# Thiết lập biến môi trường cho thư mục ứng dụng
ENV APP_HOME=/usr/src/app

# Tạo thư mục ứng dụng và sao chép file .jar
WORKDIR $APP_HOME
COPY target/*.jar app.jar

# Thiết lập lệnh chạy ứng dụng
CMD ["java", "-jar", "app.jar"]
