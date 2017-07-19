FROM docker.elastic.co/logstash/logstash:5.5.0
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
ADD logstash-kafka/conf.d/ /usr/share/logstash/pipeline/
ADD config/ /usr/share/logstash/config/
