# python-gdal-docker

Repository for the `hakonamdal/python-gdal` docker image.

If you are looking for the `python` base image with GDAL libraries installed,
you've come to the right place. Because Ubuntu only ships with GDAL 2.4, you
need to compile GDAL from source if you want to use the 3.x versions. Replace
`FROM python` with `FROM hakonamdal/python-gdal` and your 3.x
[GDAL](https://pypi.org/project/GDAL/) dependencies should install without a
problem.

Supported tags:

* `python3.8-gdal3.1.2`
* `python3.8-gdal3.0.4`
* `python3.7-gdal3.1.2`
* `python3.7-gdal3.0.4`

## Usage

Example usage:

```dockerfile
FROM hakonamdal/python-gdal:python3.8-gdal3.1.2
RUN pip install gdal==3.1.2
```

## Publishing the images

To publish the images, run the `publish.sh` script.
