FROM python:alpine
LABEL maintainer="vladislavsilaev@mail.ru"
ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY . .

ADD /app/requirements.txt .
ADD /app/app.py .

RUN pip install -r requirements.txt

CMD [ "python", "app.py" ]
