## ElasticSearch + Thrift plugin Dockerfile


This repository contains **Dockerfile** of [ElasticSearch 1.1.2](http://www.elasticsearch.org/) + [Thrift plugin](https://github.com/elasticsearch/elasticsearch-transport-thrift) for [Docker](https://www.docker.io/)'s [build](https://index.docker.io/u/tehcmc/elasticsearch-thrift/) published to the public [Docker Registry](https://index.docker.io/).


### Dependencies

* [barnybug/elasticsearch](https://github.com/barnybug/dockerfiles/tree/elasticsearch-1.0.3/elasticsearch)


### Installation

1. Install [Docker](https://www.docker.io/).

2. Download [build](https://index.docker.io/u/tehcmc/elasticsearch-thrift/) from public [Docker Registry](https://index.docker.io/): `docker pull tehcmc/elasticsearch-thrift`

   (alternatively, you can build an image from Dockerfile: `docker build -t="tehcmc/elasticsearch-thrift" github.com/tehcmc/elasticsearch-thrift`)


### Usage

    docker run -d -p 9200:9200 -p 9300:9300 -p 9500:9500 tehcmc/elasticsearch-thrift

#### Attach persistent/shared directories

  1. Create a mountable data directory `<data-dir>` on the host.

  2. Create ElasticSearch config file at `<data-dir>/elasticsearch.yml`.

    ```yml
    path:
      logs: /data/log
      data: /data/data
    ```

  3. Start a container by mounting data directory and specifying the custom configuration file:

    ```sh
    docker run -d -p 9200:9200 -p 9300:9300 -p 9500:9500 -v <data-dir>:/data dockerfile/elasticsearch /elasticsearch/bin/elasticsearch -Des.config=/data/elasticsearch.yml
    ```

After few seconds, open `http://<host>:9200` to see the result.
