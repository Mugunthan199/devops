FROM openjdk:17
EXPOSE 80
RUN mkdir /app
COPY . /app/
WORKDIR /app
RUN chmod 777 * -R
RUN ./mvnw clean install
CMD java -jar /app/target/demo-0.0.1-SNAPSHOT.jar
