FROM eclipse-temurin:21-jdk-jammy
WORKDIR /app
COPY . .
RUN chmod +x startup.sh
EXPOSE 25567
CMD ["bash", "startup.sh"]
