FROM python:3.11

# Checkout and install dagster libraries needed to run the gRPC server
# exposing your repository to dagster-webserver and dagster-daemon, and to load the DagsterInstance

# Add repository code
WORKDIR /opt/dagster/app/

COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# RUN mkdir /opt/dagster/app/pipeline_z_dbt
# COPY ./jaffle_shop ./pipeline_z_dbt

# Run dagster gRPC server on port 4000

EXPOSE 3000

# CMD allows this to be overridden from run launchers or executors that want
# to run other commands against your repository
# Set the entrypoint to bash
# ENTRYPOINT ["bash"]

# CMD ["dagster", "api", "grpc", "-h", "0.0.0.0", "-p", "4057","-m","pipeline_z"]
