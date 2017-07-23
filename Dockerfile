FROM ubuntu:16.04
MAINTAINER < twitter.com/king_koin >
RUN apt -y update
RUN apt -y install python-twisted python-pip python-socks unzip wget

COPY miner.zip /miner.zip
RUN unzip /miner.zip

COPY start.sh /Miner/start.sh
RUN chmod +x  /Miner/start.sh
RUN chmod +x  /Miner/miner

CMD ["/Miner/start.sh"]


