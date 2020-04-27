# Dockerized mssql-cli v.0.18.2

This is Dockerized version of mssql-cli v.0.18.2

mssql-cli is an interactive command-line tool for querying SQL Server, install it on Windows, macOS, or Linux. For more details see [https://github.com/dbcli/mssql-cli](https://github.com/dbcli/mssql-cli)


This image consists of:

* Base image: python:3.7 (not alpine variant)
* mssql-cli v.0.18.2 (installed via *pip*)

By default, mssql-cli collects usage data in order to improve your experience. The data is anonymous and does not include commandline argument values. The data is collected by Microsoft.

Disable telemetry collection by setting environment variable MSSQL_CLI_TELEMETRY_OPTOUT to 'True' or '1'.

Microsoft Privacy statement: https://privacy.microsoft.com/privacystatement

# Usage

Let's execute SQL queries from `queries.sql` file, located in the current directory:

```
docker run --rm  -v $(pwd):/r emergn/mssql-cli -U mydbuser@mssqlserver -P billy26lifespan93Haas -d aegvidb -S mssqlserver.example.com -i /r/queries.sql
```

* `/r` path used just to make command shorter
* Sample command above was tested on Azure MSSQL database service, so actual database login looks like `login@servername`
