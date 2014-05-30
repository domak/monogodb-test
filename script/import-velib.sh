#! /bin/sh
mongoimport --host localhost --db stations --collection velib --jsonArray < ../data/Paris.json
