#! /bin/sh

# import a file that contains rows like: 1981#2.32674567371924#48.828398514348#Alésia#PARIS-14EME#metro

# transfom sharp (#) separated values file to real csv
sed "s/#/\",\"/g" ../data/ratp_arret_graphique_01.csv | sed "s/^/\"/g" | sed "s/$/\"$/g" > ../data/ratp_stations.csv

# --fields _id,long,lat,name,address,type
mongoimport --host localhost --db stations --collection ratp --type csv --stopOnError --fields _id,long,lat,name,address,type --file ../data/ratp_stations.csv
