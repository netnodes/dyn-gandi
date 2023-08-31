FROM python:3.11-alpine
WORKDIR /opt/app
ADD . .
RUN python setup.py develop
CMD dyn_gandi --conf /etc/dyn-gandi/config.ini
