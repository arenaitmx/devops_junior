FROM selenium/standalone-chrome:3.141.0

WORKDIR /app
#COPY . /app

RUN sudo apt update && sudo apt install -y python3-pip 
RUN pip3 install -r requirements.txt
#RUN ls -l && pwd 

ENV PATH=$PATH:/home/seluser/.local/bin/

