FROM python:3.9-alpine3.17

WORKDIR /app

COPY . .


RUN pip install --upgrade pip && pip install psycopg2-binary
RUN pip3 install -r requirements.txt
#RUN python -m venv .venv

#CMD python3 server.py
CMD ["python", "server.py"]

EXPOSE 5000
