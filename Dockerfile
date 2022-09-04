FROM ubuntu:20.04

RUN apt update
RUN apt install -y wget
RUN apt install -y ffmpeg
RUN wget https://transfer.nischay.ovh/get/PVfPHezGg2P1/i.mp3
RUN mkdir mp3
RUN mv i.mp3 mp3/i.mp3
ENTRYPOINT [ "bash", "stream.sh" ]
ENV HOME /root
WORKDIR /root
RUN wget https://raw.githubusercontent.com/nischay876/youtube-live-radio/master/stream.sh
CMD ["/bin/sh -c /root/stream.sh"]
