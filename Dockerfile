FROM python:3.8.0
WORKDIR /app
ADD . /app
RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt
CMD gunicorn app:app --bind 0.0.0.0:$PORT --reload
