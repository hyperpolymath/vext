# SPDX-License-Identifier: MIT OR AGPL-3.0-or-later
# Build stage
FROM docker.io/library/rust:1.83-slim AS builder

WORKDIR /build

# Install build dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    pkg-config \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*

# Copy source
COPY . .

# Build release binary
RUN cargo build --release --package vext-core

# Runtime stage
FROM cgr.dev/chainguard/wolfi-base:latest

LABEL org.opencontainers.image.source="https://github.com/hyperpolymath/vext"
LABEL org.opencontainers.image.description="High-performance IRC notification daemon for version control systems"
LABEL org.opencontainers.image.licenses="MIT OR AGPL-3.0-or-later"

# Copy binary from builder
COPY --from=builder /build/target/release/vextd /usr/local/bin/vextd

# Create non-root user
RUN adduser -D -u 1000 vext
USER vext

EXPOSE 8080

ENTRYPOINT ["/usr/local/bin/vextd"]
