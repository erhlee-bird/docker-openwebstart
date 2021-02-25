FROM openjdk:8-jdk

RUN apt update \
 && curl -L -o openwebstart.deb https://github.com/karakun/OpenWebStart/releases/download/v1.3.3/OpenWebStart_linux_1_3_3.deb \
 && dpkg -i openwebstart.deb

RUN apt install --no-install-recommends -y libxext-dev libxrender-dev libxtst-dev

ENV LANG en-US
