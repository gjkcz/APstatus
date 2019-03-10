FROM python:3.7.2
COPY main.py /main.py
COPY hostnames.db /hostnames.db
CMD ["python", "/main.py"]

FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/