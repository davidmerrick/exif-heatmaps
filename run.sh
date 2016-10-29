#!/bin/bash -eu

CONTAINER_PORT=8080
echo "Paste your Google Maps API key"
read GOOGLE_MAPS_API_KEY
if [[ -z $GOOGLE_MAPS_API_KEY ]]
then
    echo "Please enter a non-empty Google Maps API key"
    exit 1
fi

echo "Pulling EXIF data off images."
docker run -t -w /root -v $(pwd):/root node:7.0 node bin/exif-to-geojson.js img
echo "SUCCESS: Pulled EXIF data off images."

echo "Starting Docker container. Listening on http://localhost:$CONTAINER_PORT" 
echo $GOOGLE_MAPS_API_KEY > html/google_maps_api_key
docker run -v $(pwd)/html:/usr/share/nginx/html -p $CONTAINER_PORT:80 nginx:1.10.2
