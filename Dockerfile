FROM python:3.6-slim-stretch

RUN apt update
RUN apt install -y python3-dev gcc

ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY app app/

RUN python app/butterfly-family.py

EXPOSE 5042

CMD ["python", "app/butterfly-family.py", "serve"]
