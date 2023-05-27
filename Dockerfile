FROM eclipse-temurin:17-jre-alpine

ARG VERSION
WORKDIR /app
VOLUME /app/config

ADD https://github.com/jagrosh/MusicBot/releases/download/$VERSION/JMusicBot-$VERSION.jar /app/JMusicBot.jar
ENTRYPOINT ["java", "-Dnogui=true", "-jar", "/app/JMusicBot.jar"]