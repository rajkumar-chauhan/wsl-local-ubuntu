FROM openjdk:17-jdk-slim

# create non-root user
RUN useradd -u 1000 -m appuser

# make app directory and give ownership to appuser
WORKDIR /app
RUN chown appuser:appuser /app

# switch to non-root user
USER appuser

# copy and compile java file
COPY Hello.java /app/
RUN javac Hello.java

CMD ["java", "Hello"]

