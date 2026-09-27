FROM ghcr.io/actions/actions-runner:latest

ARG TARGETARCH
ARG TYPST_VERSION=0.15.1

USER root
RUN apt-get update \
 && apt-get install -y --no-install-recommends curl ca-certificates jq xz-utils git \
 && curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg -o /usr/share/keyrings/githubcli.gpg \
 && echo "deb [signed-by=/usr/share/keyrings/githubcli.gpg] https://cli.github.com/packages stable main" > /etc/apt/sources.list.d/github-cli.list \
 && apt-get update && apt-get install -y --no-install-recommends gh \
 && rm -rf /var/lib/apt/lists/* \
 && case "$TARGETARCH" in arm64) arch=aarch64 ;; *) arch=x86_64 ;; esac \
 && curl -fsSL "https://github.com/typst/typst/releases/download/v${TYPST_VERSION}/typst-${arch}-unknown-linux-musl.tar.xz" \
    | tar -xJ --strip-components=1 -C /usr/local/bin "typst-${arch}-unknown-linux-musl/typst"

COPY entrypoint.sh /entrypoint.sh
USER runner

ENV TYPST_FONT_PATHS=/fonts
ENTRYPOINT ["/entrypoint.sh"]
