#!/bin/bash
docker build --no-cache -t naturalis/percolator:latest .
docker push naturalis/percolator:latest
