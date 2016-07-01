FROM perl:latest

MAINTAINER Ross Dargan dockermaintainer@the-dargans.co.uk

COPY ./LS30 /var/LS30/
COPY script.sh /var/LS30/

WORKDIR /var/LS30/

ENV PERLLIB $PERLLIB:/var/LS30/lib

RUN cpanm Date::Format AnyEvent AnyEvent::MQTT YAML

VOLUME /var/LS30/event.d
VOLUME /var/LS30/devices
VOLUME /var/LS30/logs

ENV LS30_DEVICES=/var/LS30/devices/devices.yaml

CMD ["/var/LS30/script.sh"]

