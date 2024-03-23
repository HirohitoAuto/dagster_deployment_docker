# dagster_deployment_docker
Deploy multiple Dagster data pipelines on Docker environment 


### info
[article_link](https://ibrahimhkoyuncu.medium.com/dagster-complete-guide-to-deploy-multiple-data-pipelines-to-dagster-on-docker-environment-aae47028a4ce)

### start
```bash
cd pipeline_x
docker build -t pipeline-x . 
cd ../pipeline_y
docker build -t pipeline-y .
```

```bash
docker build -t dagster .
```

```bash
docker-compose up -d
```


http://127.0.0.1:3000