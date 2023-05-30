FROM eclipse-temurin:17-jre-jammy

ARG VERSION
WORKDIR /app

ADD https://github.com/jagrosh/MusicBot/releases/download/$VERSION/JMusicBot-$VERSION.jar /app/JMusicBot.jar
ENTRYPOINT ["java", "-Dnogui=true", "-jar", "/app/JMusicBot.jar"]