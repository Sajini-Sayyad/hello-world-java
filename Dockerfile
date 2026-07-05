FROM openjdk:21

WORKDIR /app

COPY Hello.java .

RUN javac Hello.java

CMD ["java","Hello"]
