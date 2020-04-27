FROM python:3.7

RUN pip install mssql-cli

ENTRYPOINT ["mssql-cli"]
