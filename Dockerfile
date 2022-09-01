FROM alpine:3

RUN apk add --no-cache bash ffmpeg
RUN wget https://transfer.nischay.ovh/get/PVfPHezGg2P1/i.mp3
RUN mkdir mp3
RUN mv i.mp3 /mp3

RUN mkdir /usr/src/app -p
WORKDIR /usr/src/app/

ADD . /usr/src/app/
CMD ./stream.sh
