FROM python:3.9.1-buster

WORKDIR /usr/src/app

COPY . .

RUN pip install --upgrade pip && pip install -U -r requirements.txt
run -p 8080:80
CMD [ "python", "-m", "MeshRenameBot" ]

