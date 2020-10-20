FROM openjdk
ENV BOT_TOKEN="${env.BOT_TOKEN}"
ENV BOT_USER="${jobs.steps.env.BOT_USER}"
EXPOSE 8080
ADD target/wgbot.rocks-0.0.1-SNAPSHOT-fat.jar bot.jar
ENTRYPOINT ["java", "-jar", "/bot.jar"]

