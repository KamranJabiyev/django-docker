FROM python:3

ENV PYTHONUNBUFFERED 1
RUN mkdir /first
WORKDIR /first
COPY . /first/
RUN pip install -r requirements.txt

EXPOSE 8080

CMD ["gunicorn","--chdir","mysite","--bind",":8080","mysite.wsgi:application","--reload"]