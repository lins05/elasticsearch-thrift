#
# elasticsearch + thrift plugin Dockerfile
#
# https://github.com/teh-cmc/elasticsearch-thrift
#

# Pull elasticsearch image
FROM barnybug/elasticsearch:1.0.3
MAINTAINER "Clement 'cmc' Rey <cr.crey.clement@gmail.com>"

# Install thrift plugin
RUN elasticsearch-1.0.3/bin/plugin -install elasticsearch/elasticsearch-transport-thrift/2.0.0

# Expose thrift port
EXPOSE 9500
