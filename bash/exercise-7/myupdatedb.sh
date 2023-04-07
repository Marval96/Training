#!/bin/bash

#Execise 7: locate

echo "Updating database..."
find /home/marval/Escritorio/JR_MARVAL -type f -o -type d | gzip > $HOME/.milocate.gz
echo "Done"


