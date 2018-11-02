FROM python:slim

RUN apt -q update && apt -qq upgrade -y

COPY requirements.txt /tmp

RUN pip install -r /tmp/requirements.txt

COPY app.py /app

ENTRYPOINT ['python3 -m flask']
CMD ['teaplte_app.py')
