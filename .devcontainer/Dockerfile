FROM mcr.microsoft.com/devcontainers/universal:2

RUN set -eux; \
    for f in /etc/apt/sources.list.d/*; do \
        [ -f "$f" ] || continue; \
        if grep -q 'dl.yarnpkg.com/debian' "$f"; then \
            rm -f "$f"; \
        fi; \
    done; \
    if [ -f /etc/apt/sources.list ]; then \
        sed -i '\|dl.yarnpkg.com/debian|d' /etc/apt/sources.list; \
    fi
