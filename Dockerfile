FROM openjdk
ENV BOT_TOKEN="${BOT_TOKEN}"
EXPOSE 8080
ADD target/wgbot.rocks-0.0.1-SNAPSHOT-fat.jar bot.jar
ENTRYPOINT ["java", "-jar", "/bot.jar" ]
