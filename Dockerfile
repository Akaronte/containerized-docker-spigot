
FROM openjdk:16-jdk-alpine

WORKDIR /spigot/

COPY spigot-1.17.1.jar /usr/bin/spigot.jar

COPY docker-entrypoint.sh /usr/local/bin/

EXPOSE 19132
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["java", "-Xmx2048M", "-Xms2048M", "-jar", "/usr/bin/spigot.jar", "nogui"]