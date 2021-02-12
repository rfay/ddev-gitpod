FROM gitpod/workspace-full

# Install ddev
RUN brew update && brew tap drud/ddev && brew install ddev

RUN sudo docker-up &
RUN sleep 5
RUN mkcert -install
RUN ddev config global --instrumentation-opt-in=true
RUN ddev config global --router-bind-all-interfaces=true
RUN .ddev/generate-fqdns.sh
RUN .ddev/generate-xdebug-host-ip.sh
RUN ddev start

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/
