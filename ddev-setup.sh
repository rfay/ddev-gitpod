echo Running sudo docker-up
sudo docker-up &

echo Configure ddev
sleep 5
mkcert -install
ddev config global --instrumentation-opt-in=true
ddev config global --router-bind-all-interfaces=true
.ddev/generate-fqdns.sh
.ddev/generate-xdebug-host-ip.sh

echo Run ddev start
ddev start
