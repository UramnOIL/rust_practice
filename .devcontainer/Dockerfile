# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.224.3/containers/rust/.devcontainer/base.Dockerfile

# [Choice] Debian OS version (use bullseye on local arm64/Apple Silicon): buster, bullseye
ARG VARIANT="buster"
FROM mcr.microsoft.com/vscode/devcontainers/rust:0-${VARIANT}

# [Optional] Uncomment this section to install additional packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

RUN apt update && apt install -y gcc-aarch64-linux-gnu
RUN rustup target add aarch64-unknown-linux-gnu
RUN curl -fLSs https://circle.ci/cli | bash