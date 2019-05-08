#!/bin/bash
docker build --no-cache -t naturalis/nba-percolator:latest .
docker push naturalis/nba-percolator:latest
