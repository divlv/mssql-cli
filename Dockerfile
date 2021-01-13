FROM python:3.9

RUN pip install mssql-cli

ENV MSSQL_CLI_TELEMETRY_OPTOUT=True

ENTRYPOINT ["mssql-cli"]
