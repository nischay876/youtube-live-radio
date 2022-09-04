FROM ubuntu:20.04

RUN apt update
RUN apt install -y wget
RUN apt install -y ffmpeg
RUN mkdir mp3
RUN wget https://transfer.nischay.ovh/get/PVfPHezGg2P1/i.mp3
RUN wget https://raw.githubusercontent.com/nischay876/youtube-live-radio/8778b94571664a01cc7507fd37b0b8eb674394e3/stream.sh
RUN wget https://raw.githubusercontent.com/nischay876/youtube-live-radio/master/Sakura-Girl.mp4
ENTRYPOINT [ "bash", "stream.sh" ]
CMD ["/bin/sh -c stream.sh"]
