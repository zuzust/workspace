#!/usr/bin/env bash

DOCKER_COMPOSE_DIR="${APPLICATIONS_DIR}/DockerCompose"
DOCKER_COMPOSE_VER=1.29.2

# Download the latest version of Docker Compose ...
[[ ! -d "${DOCKER_COMPOSE_DIR}" ]] && mkdir -p ${DOCKER_COMPOSE_DIR}
curl -L "https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VER}/docker-compose-$(uname -s)-$(uname -m)" -o ${DOCKER_COMPOSE_DIR}/docker-compose
ln -s $DOCKER_COMPOSE_DIR/docker-compose $HOME/.bin/docker-compose

# Apply executable permissions to the binary ...
chmod +x ${DOCKER_COMPOSE_DIR}/docker-compose

# Install command completion for the zsh shell ...
curl -L https://raw.githubusercontent.com/docker/compose/${DOCKER_COMPOSE_VER}/contrib/completion/zsh/_docker-compose > ${ZSH_DOTFILES_DIR}/completion.d/_docker-compose

# Test the installation
echo Test the installation running docker-compose --version


# vim:ft=sh
# File: $WORKSPACE_DIR/installers/docker-compose/docker-compose-install.sh
