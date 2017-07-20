# Logstash Docker from original elastic docker image

Creates docker container with tcpdump parse options and sends logs to kafka

### Contents

'''
	logstash-kafka:
	logstash-kafka/conf.d/
		00-tcpdump-input.conf	--> recieves messages from tcpdump "cat tcpdump.log | nc logstash 5046"
		99-output.conf --> sends %{message} to Kafka with the topic *tcpdump* 
'''

'''
	logstash-tcpdump:
		kibana-search-visualization-test.json  --> basic geoip search and map visualization for kibana	
		syslog-index-template.json --> syslog index template with geoip enabled
		filebeat-index-template.json --> filebeat index template with geoip enabled
		logstash-index-template.json --> logstash index template with geoip enabled

	logstash-tcpdump/conf.d:
		00-kafka-input.conf --> Input data from KAFKA
		10-tcpdump.conf --> parse tcpdump %{message}
		99-output.conf --> output to elasticsearch
'''

These files are suitable for creating either front and back logstash services to work with KAFKA in the middle.

'''
   DATA --> Logstash Ingest --> KAFKA <-- Logstash Parser --> Elasticsearch <-- Kibana
'''

