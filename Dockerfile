FROM python:3.9.1-buster

WORKDIR /usr/src/app

COPY . .

RUN pip install --upgrade pip && pip install -U -r requirements.txt
run -d -p 0.0.0.0:80:80 nginx
CMD [ "python", "-m", "MeshRenameBot" ]

