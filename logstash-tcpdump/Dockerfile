FROM docker.elastic.co/logstash/logstash:5.5.0
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
ENV KAFKA_HOST="192.168.1.227" KAFKA_PORT=9092
ENV ES_HOST="192.168.1.227" ES_PORT=9200
ADD conf.d/ /usr/share/logstash/pipeline/
ADD config/ /usr/share/logstash/config/
