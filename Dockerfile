FROM openjdk:13-alpine
COPY target/wgbot.rocks-0.0.1-SNAPSHOT-fat.jar /tmp/bot.jar
CMD java -jar /tmp/bot.jar
