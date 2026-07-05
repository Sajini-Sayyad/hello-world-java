# Build Stage
FROM eclipse-temurin:21-jdk AS builder

WORKDIR /app

COPY HelloWorld.java .

RUN javac HelloWorld.java

# Runtime Stage
FROM eclipse-temurin:21-jre

WORKDIR /app

COPY --from=builder /app/HelloWorld.class .

CMD ["java", "HelloWorld"]
