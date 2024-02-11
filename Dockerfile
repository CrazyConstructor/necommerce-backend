FROM openjdk:22-ea-34
WORKDIR /src
COPY . .
RUN ./gradlew bootJar
RUN mkdir /app && mv ./build/libs/necommerce-1.0.jar /app/
WORKDIR /app
COPY ./src/main/resources/static media
CMD ["java", "-jar", "necommerce-1.0.jar"]