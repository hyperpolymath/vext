; SPDX-License-Identifier: MIT OR AGPL-3.0-or-later
; STATE.scm - Current project state for vext
; Media type: application/vnd.state+scm

(state
  (metadata
    (version "1.0.0")
    (schema-version "1.0")
    (created "2025-01-01")
    (updated "2025-12-30")
    (project "vext")
    (repo "hyperpolymath/vext"))

  (project-context
    (name "vext")
    (tagline "High-performance IRC notification daemon for version control systems")
    (tech-stack
      (primary "Rust")
      (secondary "Deno" "ReScript")
      (config "Nickel" "TOML")
      (docs "AsciiDoc" "Markdown")))

  (current-position
    (phase "release-candidate")
    (overall-completion 98)
    (components
      (vext-core
        (status "complete")
        (completion 100)
        (tests 22)
        (warnings 0))
      (vext-tools
        (status "complete")
        (completion 100)
        (note "Migrated to ReScript"))
      (documentation
        (status "complete")
        (completion 100))
      (ci-cd
        (status "complete")
        (completion 100)
        (note "All workflows SHA-pinned")))
    (working-features
      "IRC connection pooling"
      "UDP notification listener"
      "Rate limiting"
      "TLS support"
      "Multi-channel broadcasting"
      "Git hook integration"
      "ReScript tooling"
      "Nickel configuration"
      "Multi-arch release binaries"
      "Debian/RPM packaging"
      "AUR packaging (source + binary)"))

  (route-to-mvp
    (milestone "1.0.0-rc1"
      (items
        (item "Convert vext-tools TypeScript to ReScript" completed)
        (item "Create Nickel configuration" completed)
        (item "Add man pages" completed)
        (item "Create .well-known directory" completed)
        (item "Fix Rust warnings" completed)
        (item "SHA-pin all workflow actions" completed)
        (item "Create 6 SCM files" completed)))
    (milestone "1.0.0"
      (items
        (item "Release binaries" pending)
        (item "Publish to crates.io" pending)
        (item "Container image on GHCR" pending)
        (item "AUR packages (vext, vext-bin)" pending)
        (item "Multi-arch container (amd64, arm64)" pending))))

  (blockers-and-issues
    (critical)
    (high)
    (medium)
    (low
      (issue "No fuzzing integration")
      (issue "Ada TUI not yet implemented")))

  (critical-next-actions
    (immediate
      "Tag v1.0.0-rc1 release")
    (this-week
      "Test release workflow"
      "Publish container image")
    (this-month
      "Release 1.0.0"
      "Set up fuzzing"))

  (session-history
    (snapshot "2025-12-31T00:30"
      (accomplishments
        "Created AUR PKGBUILD for source package"
        "Created AUR PKGBUILD-bin for binary package"
        "Added AUR publish workflow"
        "Updated container workflow for multi-arch (amd64, arm64)"
        "Added QEMU support for cross-platform builds"
        "Added SBOM and provenance attestation to containers"))
    (snapshot "2025-12-30T23:00"
      (accomplishments
        "Comprehensive RSR compliance update"
        "Converted TypeScript to ReScript"
        "Created all 6 SCM files"
        "Created .well-known directory"
        "Added man pages (vextd.1, vext-send.1)"
        "Created Mustfile with cookbook"
        "Created Nickel configuration"
        "Updated Containerfile for podman"
        "SHA-pinned all 18 workflow files"
        "Fixed all Rust compiler warnings"
        "Fixed all clippy warnings"
        "All 22 tests passing"
        "Zero warnings in build"))))
