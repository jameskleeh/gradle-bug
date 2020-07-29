FROM openjdk:14-alpine
COPY build/libs/temp-*-all.jar temp.jar
EXPOSE 8080
CMD ["java", "-Dcom.sun.management.jmxremote", "-Xmx128m", "-jar", "temp.jar"]