FROM python:3.9

COPY ./requirements.txt /src/requirements.txt
RUN pip3 install --no-cache-dir --upgrade -r /src/requirements.txt
COPY . /src

EXPOSE 8000
ENV SECRET_KEY=ksdfkjhfkjhdsfsdyfuiweyrhwejrkhwejkh123df34
ENV DEBUG=True
ENV ALLOWED_HOSTS=localhost
WORKDIR src

CMD ["python", "manage.py", "migrate"]
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]