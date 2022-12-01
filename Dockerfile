FROM debian:stretch-slim 

ENV CONFIG_INI_PATH=example.ini

RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y python3 && \
	rm -rf /var/lib/apt/lists/*

WORKDIR /usr/app/explorer

COPY . ./

CMD python3 -m explorer $CONFIG_INI_PATH