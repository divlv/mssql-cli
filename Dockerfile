FROM python:3.7

RUN pip install mssql-cli

ENV MSSQL_CLI_TELEMETRY_OPTOUT=1

ENTRYPOINT ["mssql-cli"]
