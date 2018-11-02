FROM python:slim


RUN DEBIAN_FRONTEND=noninteractive apt-get -qq update && apt-get -qq upgrade -y

COPY requirements.txt /tmp

RUN pip install -r /tmp/requirements.txt

COPY app.py /app/
WORKDIR /app

CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "--access-logfile","-", "app:app"]