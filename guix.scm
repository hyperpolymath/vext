;; vext - Guix Package Definition
;; Run: guix shell -D -f guix.scm

(use-modules (guix packages)
             (guix gexp)
             (guix git-download)
             (guix build-system pyproject)
             ((guix licenses) #:prefix license:)
             (gnu packages base))

(define-public vext
  (package
    (name "vext")
    (version "0.1.0")
    (source (local-file "." "vext-checkout"
                        #:recursive? #t
                        #:select? (git-predicate ".")))
    (build-system pyproject-build-system)
    (synopsis "Python package")
    (description "Python package - part of the RSR ecosystem.")
    (home-page "https://github.com/hyperpolymath/vext")
    (license license:agpl3+)))

;; Return package for guix shell
vext
