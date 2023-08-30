FROM python:3-alpine3.8
WORKDIR /app
COPY . /app
# RUN apk update
# RUN apk add --no-cache --virtual .build-deps gdal-bin libgdal-dev
RUN pip install -r requirements.txt
EXPOSE 3000
CMD python ./app.py