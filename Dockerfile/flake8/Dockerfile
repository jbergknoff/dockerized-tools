FROM python:3.8.3-alpine3.12
ARG TAG
RUN pip install flake8==$TAG
ENTRYPOINT ["flake8"]
