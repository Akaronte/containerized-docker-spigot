
FROM openjdk:12-jdk-alpine

WORKDIR /spigot/

COPY spigot.jar /usr/bin/spigot.jar

COPY docker-entrypoint.sh /usr/local/bin/

EXPOSE 25565
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["java", "-Xmx2048M", "-Xms2048M", "-jar", "/usr/bin/spigot.jar", "nogui"]