;; -*- no-byte-compile: t; -*-
;;; ~/.doom.d/packages.el

;;; Examples:
;; (package! some-package)
;; (package! another-package :recipe (:fetcher github :repo "username/repo"))
;; (package! builtin-package :disable t)

(package! graphql-mode)
(package! exec-path-from-shell)
(package! glsl-mode)

;; This package usually overflows a regex whilst searching through
;; large git repos (like kumu/mono)
(package! magit-todos :disable t)

;; Highlights CSS colors, more annoying than it is useful, as it
;; turns up lots of false positives.
(package! rainbow-mode :disable t)

;; Solaire mode works a bit oddly with some themes
(package! solaire-mode :disable t)

;; Active voice, repetition etc
(package! writegood-mode)

;; pasting to system clipboard
(package! osx-clipboard :ignore (not IS-MAC))
