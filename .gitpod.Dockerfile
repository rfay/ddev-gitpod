FROM gitpod/workspace-full

# Install ddev
RUN brew update
RUN brew tap drud/ddev && brew install ddev

RUN ./ddev-setup.sh

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/
