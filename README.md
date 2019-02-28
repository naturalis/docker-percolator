# docker-percolator

This is the docker-compose setup needed for the nba preprocessor script (percolator).
The setup was created by former Naturalis employee Atze and consists of:

 - minio instance for xeno canto
 - minio instance for waarneming
 - minio instance for naturalis
 - traefik
 - elasticsearch (for logging)
 - grafana (for visualising the logging output)
 - postgres (needed for fast filtering of data)
 - jupyter (python environment for the percolator script)

The percolator script is installed while creating the jupyter docker instance. It does
this by installing the pip requirements in `/ppdb-nba`, specifically:

 [git+https://github.com/naturalis/ppdb_nba.git#egg=ppdb_nba](https://github.com/naturalis/ppdb_nba)

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

Please read the [readme of ppdb_nba](https://github.com/naturalis/ppdb_nba/blob/master/README.md) on how to use the percolator script.
