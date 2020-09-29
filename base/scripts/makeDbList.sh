#!/bin/bash

dbFasta=$(find /usr/share/rRNA_databases -name "*.fasta")
dbLen=0
for i in $dbFasta; do dbLen+=1; done

currDb=0
for db in $dbFasta; do
    currDb=$((currDb+1));
    echo -n "-ref $db ";
done
echo
