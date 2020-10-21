FROM openjdk
ARG BOT_TOKEN
ARG BOT_USER
ENV BOT_TOKEN=$BOT_TOKEN
ENV BOT_USER=$BOT_USER
RUN echo "BOT_USER=$BOT_USER"
RUN echo "BOT_TOKEN=$BOT_TOKEN"
ADD target/wgbot.rocks-0.0.1-SNAPSHOT-fat.jar bot.jar
ENTRYPOINT ["java", "-jar", "/bot.jar", "-DBOT_USER=effingerbot"]
