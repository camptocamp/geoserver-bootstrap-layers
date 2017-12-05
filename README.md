# Geoserver bootstrap layers

This docker image will first create a workspace in a GeoServer instance and then upload
shapefiles from the `/data/` directory to create the corresponding layers in GeoServer.

## Configuration

Set the following environment vars in the docker-compose.yml file:

* `GEOSERVER_URL`: base url to geoserver (ex: http://172.17.0.1:8080/geoserver)
* `GEOSERVER_USER`: geoserver user
* `GEOSERVER_PASSWORD`: geoserver password
* `GEOSERVER_WORKSPACE`: name of the workspace to create
 
Then mount a directory filled with shapefiles in the container `/data/` directory.

This image uses (https://github.com/jericks/geoserver-shell) to interact with GeoServer.
