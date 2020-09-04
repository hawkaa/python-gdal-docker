docker build . --build-arg BASE_IMAGE=python:3.8 --build-arg GDAL_VERSION=3.1.2 -t hakonamdal/python-gdal:python3.8-gdal3.1.2
docker push hakonamdal/python-gdal:python3.8-gdal3.1.2