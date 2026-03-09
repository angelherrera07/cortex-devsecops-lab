FROM ubuntu:18.04

RUN apt update && apt install -y python3 python3-pip

COPY requirements.txt .
RUN pip3 install -r requirements.txt

COPY hello.py /hello.py

CMD ["python3","/hello.py"]
