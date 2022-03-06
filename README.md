##Timescale + Remix Experiment

Timescale weather sample data visualized in a Remix app.

You'll need to download the weather sample data from [https://timescaledata.blob.core.windows.net/datasets/weather_small.tar.gz](https://timescaledata.blob.core.windows.net/datasets/weather_small.tar.gz), uncompress, and add the csv files to `db/docker-entrypoint-initdb.d`. 

Docker Compose will start Remix in dev mode.
```
docker-compose up
```