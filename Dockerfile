FROM python:latest

RUN apt-get update -y && \
    apt-get install -y python3-pip python3 python3-dev

COPY . .

RUN pip3 install -r requirements.txt

CMD ["python3", "RiiConnect24-DNS-Server.py"] 
