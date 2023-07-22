FROM python:3.9.1-buster

WORKDIR /usr/src/app
EXPOSE 8080/tcp
COPY . .
EXPOSE 8080/tcp
RUN pip install --upgrade pip && pip install -U -r requirements.txt
EXPOSE 8080/tcp
CMD [ "python", "-m", "MeshRenameBot" ]
