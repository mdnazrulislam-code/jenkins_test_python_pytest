FROM python:3
MAINTAINER Faizul Islam (faizulcse@gmail.com)

WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . ./
CMD [ "bash", "entrypoint.prod.sh" ]