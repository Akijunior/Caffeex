FROM python:3.6

RUN mkdir -p /opt/services/djangoapp/src
WORKDIR /opt/services/djangoapp/src

COPY requirements.txt /opt/services/djangoapp/src/
RUN pip install -r requirements.txt


COPY . /opt/services/djangoapp/src
RUN cd caffeex && python manage.py collectstatic --no-input


EXPOSE 8000
