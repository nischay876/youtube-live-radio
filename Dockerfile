FROM ubuntu:20.04

RUN apt update
RUN apt install -y wget
RUN apt install -y ffmpeg
RUN apt install -y git
RUN git clone https://github.com/nischay876/youtube-live-radio.git
RUN cd youtube-live-radio
RUN mkdir mp3
RUN wget https://transfer.nischay.ovh/get/PVfPHezGg2P1/i.mp3 -P mp3/i.mp3
ENTRYPOINT [ "bash", "stream.sh" ]
CMD ["/bin/sh -c stream.sh"]
