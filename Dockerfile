FROM ubuntu:20.04

RUN apt update
RUN apt install -y wget
RUN apt install -y ffmpeg
RUN mkdir mp3
RUN wget https://transfer.nischay.ovh/get/PVfPHezGg2P1/i.mp3
RUN wget https://raw.githubusercontent.com/nischay876/youtube-live-radio/dd5a8f1a2cff1e539cc6eec041cdf93dbdcbcb83/stream.sh
RUN wget https://raw.githubusercontent.com/nischay876/youtube-live-radio/master/Sakura-Girl.mp4
ENTRYPOINT [ "bash", "stream.sh" ]
CMD ["/bin/sh -c stream.sh"]
