rm -rf LS30
git clone https://github.com/nickandrew/LS30.git
docker build -t "rossdargan/ls30watchdog:latest" .
rm -rf LS30
