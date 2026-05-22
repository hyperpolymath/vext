# SPDX-License-Identifier: MPL-2.0
# Justfile for vext

default:
    @just --list

# Run panic-attack assail
assail:
    panic-attack assail .
