FROM apache/camel-jbang:3.20.5

WORKDIR /scripts

# Chỉ định file yaml ở đây
COPY demo.camel.yaml sub-kafka-2-mongodb.camel.yaml

ENTRYPOINT [ "jbang", "-Dcamel.jbang.version=3.20.5", "--verbose", "camel@apache/camel", "run", "sub-kafka-2-mongodb.camel.yaml"]