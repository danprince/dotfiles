;; -*- no-byte-compile: t; -*-
;;; ~/.doom.d/packages.el

;;; Examples:
;; (package! some-package)
;; (package! another-package :recipe (:fetcher github :repo "username/repo"))
;; (package! builtin-package :disable t)

(package! graphql-mode)
(package! exec-path-from-shell)

;; This package usually overflows a regex whilst searching through
;; large git repos (like kumu/mono)
(package! magit-todos :disable t)

;; Highlights CSS colors, more annoying than it is useful, as it
;; turns up lots of false positives.
(package! rainbow-mode :disable t)
