# SPDX-License-Identifier: PMPL-1.0-or-later
# Justfile for vext

default:
    @just --list

# Run panic-attack assail
assail:
    panic-attack assail .
