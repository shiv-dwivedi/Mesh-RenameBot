FROM python:3.9.1-buster

WORKDIR /usr/src/app

COPY . .

RUN pip install --upgrade pip && pip install -U -r requirements.txt
    ports:
      - "24223-24225:24223-24225/tcp"
      - "24224:24224/udp"
CMD [ "python", "-m", "MeshRenameBot" ]

