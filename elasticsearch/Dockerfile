# https://github.com/elastic/elasticsearch-docker

FROM docker.elastic.co/elasticsearch/elasticsearch:5.3.0

# Add your elasticsearch plugins setup here
# Example: RUN elasticsearch-plugin install analysis-icu
RUN elasticsearch-plugin install analysis-icu
RUN elasticsearch-plugin install ingest-geoip
RUN elasticsearch-plugin install repository-hdfs
RUN elasticsearch-plugin install repository-s3
