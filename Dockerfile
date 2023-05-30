FROM eclipse-temurin:17-jre-jammy

ARG VERSION
ADD https://github.com/jagrosh/MusicBot/releases/download/$VERSION/JMusicBot-$VERSION.jar /app/JMusicBot.jar

WORKDIR /config
ENTRYPOINT ["java", "-Dnogui=true", "-jar", "/app/JMusicBot.jar"]