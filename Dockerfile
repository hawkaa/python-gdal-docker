ARG BASE_IMAGE
FROM ${BASE_IMAGE}

ARG GDAL_VERSION
RUN apt-get update \
    && apt-get install --yes libsqlite3-dev sqlite3
RUN wget https://download.osgeo.org/proj/proj-7.1.1.tar.gz \
    && tar -xf proj-7.1.1.tar.gz \
    && cd proj-7.1.1 \
    && ./configure \
    && make \
    && make install
RUN echo ${GDAL_VERSION}
RUN wget https://github.com/OSGeo/gdal/releases/download/v${GDAL_VERSION}/gdal-${GDAL_VERSION}.tar.gz 
RUN tar -xf gdal-${GDAL_VERSION}.tar.gz \
    && cd gdal-${GDAL_VERSION} \
    && ./configure \
    && make \
    && make install
