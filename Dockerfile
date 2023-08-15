FROM eclipse-temurin:8u382-b05-jdk-alpine


ENV JWT_SECRET=PRFT
ENV SERVER_PORT=8083
ENV SPRING_ZIPKIN_BASE_URL=http://127.0.0.1:9411/

WORKDIR /usr/src/users-api 

ADD . . 

RUN ./mvnw clean install

EXPOSE 8083

ENTRYPOINT java -jar target/users-api-0.0.1-SNAPSHOT.jar 