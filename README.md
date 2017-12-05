# Geoserver bootstrap layers

This docker image will create a workspace on geoserver and then will upload
shapefile in `/data/` directory to create layer on geoserver.

## Configuration

Set following env var in docker-compose.yml file:

* `GEOSERVER_URL`: base url to geoserver (ex: http://172.17.0.1:8080/geoserver)
* `GEOSERVER_USER`: geoserver user
* `GEOSERVER_PASSWORD`: geoserver password
* `GEOSERVER_WORKSPACE`: name of the workspace to create
 
Then mount a directory with shapefiles in `/data/` directory inside docker
image.

This image use (https://github.com/jericks/geoserver-shell) to manage geoserver
REST interface.
