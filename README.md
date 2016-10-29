Based on https://github.com/hallahan/exif-to-geojson.

Goal: create a heatmap from geotagged images.

1. Put your images in the "img" folder
2. Generate geojson with the exif-to-geojson script
3. Add your MapBox API token to the index.html file
4. Use run.sh to create a Docker container which will serve up your page 
