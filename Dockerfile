FROM anapsix/alpine-java:jdk
ADD target/*.jar /app/app.jar
CMD java -jar /app/app.jar