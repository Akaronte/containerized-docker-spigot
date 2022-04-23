
FROM openjdk:17-jdk-alpine

WORKDIR /spigot/

COPY spigot-1.18.2.jar /usr/bin/spigot.jar

COPY docker-entrypoint.sh /usr/local/bin/

EXPOSE 25565

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["java", "-Xmx4096M", "-Xms4096M", "-jar", "/usr/bin/spigot.jar", "nogui"]