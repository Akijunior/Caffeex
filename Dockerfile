# start from an official image
FROM python:3.6

# arbitrary location choice: you can change the directory
RUN mkdir -p /opt/services/djangoapp/src
WORKDIR /opt/services/djangoapp/src

COPY requirements.pip /opt/services/djangoapp/src/
RUN pip install -r requirements.pip


COPY . /opt/services/djangoapp/src
RUN cd gpsautotracker && python manage.py collectstatic --no-input


EXPOSE 8000

#CMD ["gunicorn", "--chdir", "gpsautotracker", "--bind", ":8000", "infoseguro.wsgi:application"]