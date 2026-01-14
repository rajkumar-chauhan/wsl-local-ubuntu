FROM eclipse-temurin:17-jdk AS build
WORKDIR /app
COPY App.java .
RUN javac App.java && jar cfe app.jar App App.class

FROM eclipse-temurin:17-jre
WORKDIR /app
COPY --from=build /app/app.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]
