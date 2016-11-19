This is a set of scripts to streamline the process of creating a heatmap from geotagged images.

![Heatmap Screenshot](/readme_assets/readme_1.png)

## Prerequisites

This requires Docker and a Google Maps JS API key.
Docker: https://www.docker.com/
Google Maps API key: https://developers.google.com/maps/documentation/javascript/get-api-key

### Installing Docker for Mac

1. Install Homebrew /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
2. Tap Cask brew tap caskroom/cask
3. Install docker brew cask install docker
4. Start docker CMD+SPACE, type docker, enter.

## Usage

1. Put your images in the "img" folder.
2. Run the run.sh script.
3. Enter your Google Maps JS API key.
4. Open up a web browser to http://localhost:8080.

And that's it! 

## Credits

Thanks to https://github.com/hallahan/exif-to-geojson for the EXIF-to-geoJSON conversion script
