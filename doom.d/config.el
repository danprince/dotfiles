;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

(setq custom-file "~/.doom.d/custom.el")
(load custom-file)

(when window-system
  (set-frame-font "Mononoki 15")
  ;; disable option as meta (needed to type # on mac)
  (setq mac-option-modifier nil)
  ;; help gui emacs find executables from the shell's PATH
  (exec-path-from-shell-initialize))

(setq doom-theme 'doom-city-lights)

;; Keybindings

(map!
 :n "-" #'dired-jump
 :n "J" #'evil-next-line
 :m "K" #'evil-previous-line)

;; Config

(setq-default
 indent-tabs-mode nil
 tab-width 2
 c-basic-offset 2
 css-indent-offset 2
 evil-shift-width 2
 js-indent-level 2
 typescript-indent-level 2
 web-mode-code-indent-offset 2
 web-mode-css-indent-offset 2
 web-mode-markup-indent-offset 2
 web-mode-sql-indent-offset 2
 flycheck-disabled-checkers '(emacs-lisp-checkdoc)
 org-bullets-bullet-list '("∴" "∴" "∴" "∴" "∴" "∴" "∴" "∴" "∴" "∴" "∴" "∴" "∴" "∴" "∴" "∴"))

(after! markdown-mode
  (remove-hook 'markdown-mode-hook #'auto-fill-mode))

(after! org-mode
  (remove-hook 'markdown-mode-hook #'auto-fill-mode))

;;(add-hook 'json-mode
;;  (lambda ()
;;    (make-local-variable 'js-indent-level)
;;    (setq js-indent-level 2)))

(add-hook 'text-mode-hook
  (lambda ()
     (visual-line-mode +1)
     (setq indent-tabs-mode nil)
     (setq tab-width 2)))

(add-hook 'dired-mode-hook
  (lambda ()
    (dired-hide-details-mode +1)))

;; use slightly taller characters to render the vertical divider
;; which makes it appear as a continuous line
(set-display-table-slot standard-display-table
                        'vertical-border
                        (make-glyph-code ?│))

;; use an ellipsis when text overflows the buffer
(set-display-table-slot standard-display-table 'truncation ?…)

