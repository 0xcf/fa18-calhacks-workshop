FROM python:slim

RUN apt -q update && apt -qq upgrade -y

COPY requirements.txt /tmp

RUN pip install -r /tmp/requirements.txt

COPY app.py /app/
WORKDIR /app

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
