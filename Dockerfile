FROM python:3.9

LABEL MAINTAINER="baoxi" 

WORKDIR /app

ADD . /app/

RUN pip install pip -U

RUN pip install -r requirements.txt

RUN sed -i 's/\r//' ./start.sh

RUN chmod +x ./start.sh

ENTRYPOINT sh ./start.sh

