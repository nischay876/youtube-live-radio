FROM ubuntu:20.04

RUN apt update
RUN apt install -y wget
RUN apt install -y ffmpeg
RUN wget https://transfer.nischay.ovh/get/PVfPHezGg2P1/i.mp3
RUN mkdir mp3
RUN mv i.mp3 /mp3/i.mp3

ENV HOME /root
WORKDIR /root

CMD ["./start.sh"]
