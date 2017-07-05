# ls30watchdog

docker service create --name alarm-watchdog  \
--network mqtt \
--mount type=bind,source=/docker/global/alarmwatchdog/scripts,target=/var/LS30/event.d \
--mount type=bind,source=/docker/global/alarmdevices,target=/var/LS30/devices \
--mount type=bind,source=/docker/global/alarmwatchdog/logs,target=/var/LS30/logs \
--env LS30_SERVER=alarm-daemon:1681 \
--env MQTT_HOST=mosquitto \
rossdargan/ls30watchdog
