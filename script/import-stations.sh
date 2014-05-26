#! /bin/sh
mongoimport --host localhost --db velib --collection stations --jsonArray < ../data/Paris.json
