FROM ubuntu:20.04

RUN apt update
RUN apt install -y ffmpeg
RUN wget https://transfer.nischay.ovh/get/PVfPHezGg2P1/i.mp3
RUN mkdir mp3
RUN mv i.mp3 /mp3

CMD ["./start.sh"]
