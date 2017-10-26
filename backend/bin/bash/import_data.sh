#!/bin/bash
DATADIR="data/*"

for f in $DATADIR
do
    echo "Processing $f file..."
    mongoimport --db iwddb --collection surveys --jsonArray --file $f
done
