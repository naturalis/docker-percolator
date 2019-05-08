# NBA colander

This is the docker-compose setup needed for the nba preprocessor system
The setup was created by former Naturalis employee Atze and Joep Vermaat and 
consists of:

 - validator (php environment for the validation)
 - infuser (java environment for loader)
 - percolator (python environment for the percolator script)

 The supporting infra structure needed consitst of:

 - minio instance for xeno canto data
 - minio instance for waarneming data
 - minio instance for naturalis data
 - traefik
 - elasticsearch (for logging)
 - grafana (for visualising the logging output)
 - postgres (needed for fast filtering of data)

All the other requirements needed by this script are installed too. In the `.env` you
can find where the data is put:

```
MINIO_WAARNEMING_DATA_DIR=/data/validator/minio-waarneming
MINIO_XENOCANTO_DATA_DIR=/data/validator/minio-xenocanto
MINIO_NATURALIS_DATA_DIR=/data/validator/minio-naturalis
ELASTICSEARCH_DATA=/data/elasticsearch-data
GRAFANA_DATA=/data/grafana-data
PG_DATA=/data/postgres-data
SHARED_DATA=/data/shared-data
PYTHON_CODE=/data/python-code
NOTEBOOKS=/data/notebooks
```

The `SHARED_DATA` is shared between the docker instances through the shared 
path `/shared-data`.

Please read the 
[readme of nba_percolator](https://github.com/naturalis/nba_percolator/blob/master/README.md) 
on how to use the percolator script.
