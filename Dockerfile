FROM python:slim

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN pip install gunicorn

COPY app app
COPY migrations migrations
COPY microblog.py config.py 
COPY boot.sh boot.sh
RUN chmod +x boot.sh   # Set executable permissions for boot.sh

ENV FLASK_APP microblog.py


EXPOSE 5000
ENTRYPOINT ["./boot.sh"]
